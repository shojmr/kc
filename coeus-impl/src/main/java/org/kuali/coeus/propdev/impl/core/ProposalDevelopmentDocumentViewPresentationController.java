package org.kuali.coeus.propdev.impl.core;

import java.util.HashSet;
import java.util.Set;

import org.kuali.coeus.common.framework.auth.KcAuthConstants;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.coeus.sys.framework.workflow.KcWorkflowService;
import org.kuali.rice.kew.api.KewApiConstants;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.document.TransactionalDocumentViewPresentationControllerBase;
import org.kuali.rice.krad.uif.view.View;
import org.kuali.rice.krad.web.form.DocumentFormBase;
import org.kuali.rice.krad.web.form.UifFormBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

@Service("proposalDevelopmentDocumentViewPresentationController")
@Scope("prototype")
public class ProposalDevelopmentDocumentViewPresentationController extends TransactionalDocumentViewPresentationControllerBase {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	@Qualifier("kcWorkflowService")
	private KcWorkflowService kcWorkflowService;


	@Override
    public Set<String> getActionFlags(View view, UifFormBase model) {
		Set<String> documentActions = super.getActionFlags(view, model);
		documentActions = documentActions != null ? documentActions : new HashSet<String>();
		if(canDeleteDocument(((DocumentFormBase) model).getDocument())) {
			documentActions.add(KcAuthConstants.DocumentActions.DELETE_DOCUMENT);
		}
		
		if(canSubmitToS2S(((DocumentFormBase) model).getDocument())) {
			documentActions.add(ProposalDevelopmentConstants.PropDevDocumentActions.SUBMIT_TO_S2S);
		}
		
		if(canSubmitToSponsor(((DocumentFormBase) model).getDocument())) {
			documentActions.add(ProposalDevelopmentConstants.PropDevDocumentActions.SUBMIT_TO_SPONSOR);
		}
		return documentActions;
	}
	
	public boolean canDeleteDocument(Document doc) {
		return ! getKcWorkflowService().isInWorkflow(doc);
	}
	
	public boolean canSubmitToS2S(Document doc) {
		 String routeStatus = doc.getDocumentHeader().getWorkflowDocument().getStatus().getCode();
		 boolean canSubmitToS2s =  ( KewApiConstants.ROUTE_HEADER_PROCESSED_CD.equals(routeStatus) || KewApiConstants.ROUTE_HEADER_FINAL_CD.equals(routeStatus) || 
				 		KewApiConstants.ROUTE_HEADER_ENROUTE_CD.equals(routeStatus)); 
		 canSubmitToS2s &= ((ProposalDevelopmentDocument)doc).getDevelopmentProposal().getS2sOpportunity() != null && ((ProposalDevelopmentDocument)doc).getDevelopmentProposal().getS2sAppSubmission().size() == 0;
		 return canSubmitToS2s;
	}
	
	public boolean canSubmitToSponsor(Document doc) {
		 String routeStatus = doc.getDocumentHeader().getWorkflowDocument().getStatus().getCode();
		 boolean canSubmitToSponsror =  KewApiConstants.ROUTE_HEADER_PROCESSED_CD.equals(routeStatus) || KewApiConstants.ROUTE_HEADER_FINAL_CD.equals(routeStatus) 
				 								|| KewApiConstants.ROUTE_HEADER_ENROUTE_CD.equals(routeStatus);
		 canSubmitToSponsror &= ! ((ProposalDevelopmentDocument)doc).getDevelopmentProposal().getSubmitFlag();
		 return canSubmitToSponsror;
	}

	public KcWorkflowService getKcWorkflowService() {
        if (kcWorkflowService == null)
        	kcWorkflowService = KcServiceLocator.getService(KcWorkflowService.class);
		return kcWorkflowService;
	}

	public void setKcWorkflowService(KcWorkflowService kcWorkflowService) {
		this.kcWorkflowService = kcWorkflowService;
	}

}
