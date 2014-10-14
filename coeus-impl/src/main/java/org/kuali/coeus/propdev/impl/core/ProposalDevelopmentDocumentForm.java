/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.coeus.propdev.impl.core;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.kuali.coeus.common.framework.medusa.MedusaNode;
import org.kuali.coeus.common.framework.medusa.MedusaService;
import org.kuali.coeus.common.framework.module.CoeusModule;
import org.kuali.coeus.common.framework.person.attr.PersonEditableField;
import org.kuali.coeus.common.framework.sponsor.form.SponsorFormTemplateList;
import org.kuali.coeus.common.notification.impl.NotificationHelper;
import org.kuali.coeus.common.questionnaire.framework.answer.AnswerHeader;
import org.kuali.coeus.propdev.impl.action.ProposalDevelopmentRejectionBean;
import org.kuali.coeus.propdev.impl.attachment.NarrativeUserRights;
import org.kuali.coeus.propdev.impl.attachment.ProposalDevelopmentAttachmentHelper;
import org.kuali.coeus.propdev.impl.budget.core.AddBudgetDto;
import org.kuali.coeus.propdev.impl.custom.ProposalDevelopmentCustomDataGroupDto;
import org.kuali.coeus.propdev.impl.custom.ProposalDevelopmentCustomDataHelper;
import org.kuali.coeus.propdev.impl.datavalidation.ProposalDevelopmentDataValidationItem;
import org.kuali.coeus.propdev.impl.docperm.ProposalDevelopmentPermissionsHelper;
import org.kuali.coeus.propdev.impl.editable.ProposalChangedData;
import org.kuali.coeus.propdev.impl.notification.ProposalDevelopmentNotificationContext;
import org.kuali.coeus.propdev.impl.person.creditsplit.ProposalCreditSplitListDto;
import org.kuali.coeus.propdev.impl.person.question.ProposalPersonQuestionnaireHelper;
import org.kuali.coeus.propdev.impl.questionnaire.ProposalDevelopmentQuestionnaireHelper;
import org.kuali.coeus.propdev.impl.copy.ProposalCopyCriteria;
import org.kuali.coeus.propdev.impl.s2s.S2sAppSubmission;
import org.kuali.coeus.propdev.impl.s2s.S2sUserAttachedForm;
import org.kuali.coeus.propdev.impl.s2s.question.ProposalDevelopmentS2sQuestionnaireHelper;
import org.kuali.coeus.propdev.impl.specialreview.SpecialReviewHelper;
import org.kuali.coeus.propdev.impl.location.OrganizationAddWizardHelper;
import org.kuali.coeus.propdev.impl.s2s.S2sOpportunity;
import org.kuali.coeus.sys.framework.validation.Auditable;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.kra.krms.KcKrmsConstants;
import org.kuali.rice.core.api.util.tree.Tree;
import org.kuali.rice.krad.service.LegacyDataAdapter;
import org.kuali.rice.krad.uif.component.Component;
import org.kuali.rice.krad.uif.element.Action;
import org.kuali.rice.krad.uif.element.ToggleMenu;
import org.kuali.rice.krad.uif.util.SessionTransient;
import org.kuali.rice.krad.web.bind.ChangeTracking;
import org.kuali.rice.krad.web.form.TransactionalDocumentFormBase;

import java.util.*;

@ChangeTracking
public class ProposalDevelopmentDocumentForm extends TransactionalDocumentFormBase implements Auditable {

    private static final long serialVersionUID = 1381360399393420225L;
    
    private SpecialReviewHelper specialReviewHelper;
    private ProposalDevelopmentQuestionnaireHelper questionnaireHelper;
    private ProposalDevelopmentS2sQuestionnaireHelper s2sQuestionnaireHelper;
    private AddLineHelper addKeyPersonHelper;
    private AddLineHelper addRecipientHelper;
    private S2sOpportunity newS2sOpportunity;
    private ProposalDevelopmentPermissionsHelper permissionsHelper;
    private transient MedusaService medusaService;
    private transient LegacyDataAdapter legacyDataAdapter;
    private Map<String,List<String>> editableCollectionLines;
    private ProposalDevelopmentCustomDataHelper customDataHelper;
    private List<ProposalDevelopmentCustomDataGroupDto> customDataGroups;
    private List<ProposalDevelopmentDataValidationItem> dataValidationItems;
    private boolean auditActivated;
    private List<ProposalCreditSplitListDto> creditSplitListItems;
    private AddBudgetDto addBudgetDto;
    private AddBudgetDto copyBudgetDto;
    private ProposalCopyCriteria proposalCopyCriteria;
    private ProposalDevelopmentAttachmentHelper proposalDevelopmentAttachmentHelper;
    private OrganizationAddWizardHelper addOrganizationHelper;
    private ProposalPersonQuestionnaireHelper proposalPersonQuestionnaireHelper;
    private String newHierarchyBudgetTypeCode;
 	private String newHierarchyChildProposalNumber;
    private String newHierarchyProposalNumber;
    private S2sUserAttachedForm s2sUserAttachedForm;
    private List<NarrativeUserRights> narrativeUserRights;
    private String narrativeUserRightsSelectedAttachment;
    private ProposalChangedData newProposalChangedData;
    private boolean sendOverrideNotification;
    private ProposalDevelopmentRejectionBean proposalDevelopmentRejectionBean;
    private List<SponsorFormTemplateList> sponsorFormTemplates;


    private AnswerHeader updateAnswerHeader;

    /* These 2 properties are used for autogenerating an institutional proposal for a resubmission */
    private String resubmissionOption;
    private String institutionalProposalToVersion;



    private Map<String, Boolean> personEditableFields;
    
    private transient boolean grantsGovSubmitFlag;
    private transient boolean showSubmissionDetails;

    @SessionTransient
    private Tree<Object, String> medusaTree;
    
    private NotificationHelper<ProposalDevelopmentNotificationContext> notificationHelper;
    
    private List<String> unitRulesMessages = new ArrayList<String>();


    public ProposalPersonQuestionnaireHelper getProposalPersonQuestionnaireHelper() {
        return proposalPersonQuestionnaireHelper;
    }

    public void setProposalPersonQuestionnaireHelper(ProposalPersonQuestionnaireHelper proposalPersonQuestionnaireHelper) {
        this.proposalPersonQuestionnaireHelper = proposalPersonQuestionnaireHelper;
    }

    public ProposalDevelopmentDocumentForm() {
        super();
    }

    public void initialize() {
        specialReviewHelper = new SpecialReviewHelper(getProposalDevelopmentDocument(), true);
        specialReviewHelper.prepareView();
        
        questionnaireHelper = new ProposalDevelopmentQuestionnaireHelper(getProposalDevelopmentDocument());

        s2sQuestionnaireHelper = new ProposalDevelopmentS2sQuestionnaireHelper(this);

        addKeyPersonHelper = new AddLineHelper();

        addRecipientHelper = new AddLineHelper();
        
        newS2sOpportunity = new S2sOpportunity();

        permissionsHelper = new ProposalDevelopmentPermissionsHelper(getProposalDevelopmentDocument());

        editableCollectionLines = new HashMap<String,List<String>>();

        customDataHelper = new ProposalDevelopmentCustomDataHelper(this.getProposalDevelopmentDocument());

        dataValidationItems = new ArrayList<ProposalDevelopmentDataValidationItem>();

        creditSplitListItems = new ArrayList<ProposalCreditSplitListDto>();

        proposalDevelopmentAttachmentHelper = new ProposalDevelopmentAttachmentHelper();

        ProposalCopyCriteria proposalCopyCriteria1= new ProposalCopyCriteria(getProposalDevelopmentDocument());

        addOrganizationHelper = new OrganizationAddWizardHelper();

        customDataGroups = new ArrayList<ProposalDevelopmentCustomDataGroupDto>();

        notificationHelper = new NotificationHelper<>();

        s2sUserAttachedForm = new S2sUserAttachedForm();

        newProposalChangedData = new ProposalChangedData();

        narrativeUserRights = new ArrayList<NarrativeUserRights>();

        proposalDevelopmentRejectionBean = new ProposalDevelopmentRejectionBean();
        populatePersonEditableFields();

        updateAnswerHeader = new AnswerHeader();

        sponsorFormTemplates = new ArrayList<SponsorFormTemplateList>();
    }

    public int findIndexOfPageId(List<Action> actions) {
        return findIndexOfPageId(actions, getPageId());
    }
    
    public int findIndexOfPageId(List<Action> actions, String pageId) {
        for (int i = 0, len = actions.size(); i < len; i++) {
            Action action = actions.get(i);
            if (StringUtils.equals(pageId, action.getNavigateToPageId())) {
                return i;
            }
        }
        return 0;
    }
    
    public List<Action> getOrderedNavigationActions() {
        List<Action> actions = new ArrayList<Action>();
        addAllActions(actions, view.getNavigation().getItems());
        return actions;
    }
    
    protected void addAllActions(List<Action> actionList, List<? extends Component> components) {
        if (components != null) {
            for (Component component : components) {
                if (component instanceof ToggleMenu) {
                    addAllActions(actionList, ((ToggleMenu) component).getMenuItems());
                } else if (component instanceof Action) {
                    actionList.add((Action) component);
                }
            }
        }
    }

    @Override
    protected String getDefaultDocumentTypeName() {
        return "ProposalDevelopmentDocument";
    }
    
    public ProposalDevelopmentDocument getProposalDevelopmentDocument() {
        return (ProposalDevelopmentDocument) getDocument();
    }
    
    public DevelopmentProposal getDevelopmentProposal() {
        return getProposalDevelopmentDocument().getDevelopmentProposal();
    }

    public SpecialReviewHelper getSpecialReviewHelper() {
        return specialReviewHelper;
    }

    public void setSpecialReviewHelper(SpecialReviewHelper specialReviewHelper) {
        this.specialReviewHelper = specialReviewHelper;
    }

    public ProposalDevelopmentQuestionnaireHelper getQuestionnaireHelper() {
        return questionnaireHelper;
    }

    public void setQuestionnaireHelper(ProposalDevelopmentQuestionnaireHelper questionnaireHelper) {
        this.questionnaireHelper = questionnaireHelper;
    }

    public AddLineHelper getAddKeyPersonHelper() {
        return addKeyPersonHelper;
    }

    public void setAddKeyPersonHelper(AddLineHelper addKeyPersonHelper) {
        this.addKeyPersonHelper = addKeyPersonHelper;
    }

    public AddLineHelper getAddRecipientHelper() {
        return addRecipientHelper;
    }

    public void setAddRecipientHelper(AddLineHelper addRecipientHelper) {
        this.addRecipientHelper = addRecipientHelper;
    }

    public S2sOpportunity getNewS2sOpportunity() {
        return newS2sOpportunity;
    }

    public void setNewS2sOpportunity(S2sOpportunity newOpportunity) {
        this.newS2sOpportunity = newOpportunity;
    }

    public Map<String, List<String>> getEditableCollectionLines() {
        return editableCollectionLines;
    }

    public void setEditableCollectionLines(Map<String, List<String>> editableCollectionLines) {
        this.editableCollectionLines = editableCollectionLines;
    }

    public ProposalDevelopmentPermissionsHelper getPermissionsHelper() {
        return permissionsHelper;
    }

    public void setPermissionsHelper(ProposalDevelopmentPermissionsHelper permissionsHelper) {
        this.permissionsHelper = permissionsHelper;
    }

    public ProposalDevelopmentCustomDataHelper getCustomDataHelper() {
        return customDataHelper;
    }

    public void setCustomDataHelper(ProposalDevelopmentCustomDataHelper customDataHelper) {
        this.customDataHelper = customDataHelper;
    }

    public List<ProposalDevelopmentCustomDataGroupDto> getCustomDataGroups() {
        return customDataGroups;
    }

    public void setCustomDataGroups(List<ProposalDevelopmentCustomDataGroupDto> customDataGroups) {
        this.customDataGroups = customDataGroups;
    }

    public List<ProposalDevelopmentDataValidationItem> getDataValidationItems() {
        return dataValidationItems;
    }

    public void setDataValidationItems(List<ProposalDevelopmentDataValidationItem> dataValidationItems) {
        this.dataValidationItems = dataValidationItems;
    }
    
    public OrganizationAddWizardHelper getAddOrganizationHelper() {
		return addOrganizationHelper;
	}

    public List<ProposalCreditSplitListDto> getCreditSplitListItems() {
        return creditSplitListItems;
    }

    public void setCreditSplitListItems(List<ProposalCreditSplitListDto> creditSplitListItems) {
        this.creditSplitListItems = creditSplitListItems;
    }

	public void setAddOrganizationHelper(
			OrganizationAddWizardHelper addOrganizationHelper) {
		this.addOrganizationHelper = addOrganizationHelper;
	}

    public Tree<Object, String> getMedusaTreeView() {
    	if (medusaTree == null) {
			medusaTree = new Tree<Object, String>();
			MedusaNode rootNode = new MedusaNode();
			rootNode.setNodeLabel("Medusa Tree");
			medusaTree.setRootElement(rootNode);
			if (getDevelopmentProposal().getProposalNumber() != null) {
			    rootNode.setChildNodes(getMedusaService().getMedusaByProposal("DP", Long.valueOf(getDevelopmentProposal().getProposalNumber())));
			}
			return medusaTree;
    	}
    	return medusaTree;
    }

    /**
     * Creates the list of <code>{@link org.kuali.coeus.common.framework.person.attr.PersonEditableField}</code> field names.
     */
    public void populatePersonEditableFields() {
        setPersonEditableFields(new HashMap<String, Boolean>());

        Map fieldValues = new HashMap();
        fieldValues.put("moduleCode", CoeusModule.PROPOSAL_DEVELOPMENT_MODULE_CODE);
        Collection<PersonEditableField> fields = getLegacyDataAdapter().findMatching(PersonEditableField.class, fieldValues);
        for (PersonEditableField field : fields) {
            getPersonEditableFields().put(field.getFieldName(), Boolean.valueOf(field.isActive()));
        }
    }

    private LegacyDataAdapter getLegacyDataAdapter() {
        if (legacyDataAdapter == null) {
            legacyDataAdapter = KcServiceLocator.getService(LegacyDataAdapter.class);
        }
        return legacyDataAdapter;
    }

    public void setLegacyDataAdapter(LegacyDataAdapter legacyDataAdapter) {
        this.legacyDataAdapter = legacyDataAdapter;
    }

    protected MedusaService getMedusaService() {
    	if (medusaService == null) {
    		medusaService = KcServiceLocator.getService(MedusaService.class);
    	}
    	return medusaService;
    }
    
    public void setMedusaService(MedusaService medusaService) {
    	this.medusaService = medusaService;
    }

	public AddBudgetDto getAddBudgetDto() {
		return addBudgetDto;
	}

	public void setAddBudgetDto(AddBudgetDto addBudgetDto) {
		this.addBudgetDto = addBudgetDto;
	}

    public ProposalCopyCriteria getProposalCopyCriteria (){return proposalCopyCriteria;}

    public void setProposalCopyCriteria(ProposalCopyCriteria proposalCopyCriteria) {
        this.proposalCopyCriteria = proposalCopyCriteria;
    }
    public ProposalDevelopmentAttachmentHelper getProposalDevelopmentAttachmentHelper() {
        return proposalDevelopmentAttachmentHelper;
    }

    public void setProposalDevelopmentAttachmentHelper(ProposalDevelopmentAttachmentHelper proposalDevelopmentAttachmentHelper) {
        this.proposalDevelopmentAttachmentHelper = proposalDevelopmentAttachmentHelper;
    }

    public ProposalDevelopmentS2sQuestionnaireHelper getS2sQuestionnaireHelper() {
        return s2sQuestionnaireHelper;
    }

    public void setS2sQuestionnaireHelper(ProposalDevelopmentS2sQuestionnaireHelper s2sQuestionnaireHelper) {
        this.s2sQuestionnaireHelper = s2sQuestionnaireHelper;
    }


    public ProposalChangedData getNewProposalChangedData() {
        return newProposalChangedData;
    }

    public void setNewProposalChangedData(ProposalChangedData newProposalChangedData) {
        this.newProposalChangedData = newProposalChangedData;
    }

    @Override
    public boolean isAuditActivated() {
        return auditActivated;
    }

    @Override
    public void setAuditActivated(boolean auditActivated) {
        this.auditActivated = auditActivated;
    }

	public AddBudgetDto getCopyBudgetDto() {
		return copyBudgetDto;
	}

	public void setCopyBudgetDto(AddBudgetDto copyBudgetDto) {
		this.copyBudgetDto = copyBudgetDto;
	}

    public NotificationHelper<ProposalDevelopmentNotificationContext> getNotificationHelper() {
        return notificationHelper;
    }

    public void setNotificationHelper(NotificationHelper<ProposalDevelopmentNotificationContext> notificationHelper) {
        this.notificationHelper = notificationHelper;
    }
	public String getNewHierarchyBudgetTypeCode() {
		return newHierarchyBudgetTypeCode;
	}

	public void setNewHierarchyBudgetTypeCode(String newHierarchyBudgetTypeCode) {
		this.newHierarchyBudgetTypeCode = newHierarchyBudgetTypeCode;
	}

	public String getNewHierarchyChildProposalNumber() {
		return newHierarchyChildProposalNumber;
	}

	public void setNewHierarchyChildProposalNumber(
			String newHierarchyChildProposalNumber) {
		this.newHierarchyChildProposalNumber = newHierarchyChildProposalNumber;
	}

	public String getNewHierarchyProposalNumber() {
		return newHierarchyProposalNumber;
	}

	public void setNewHierarchyProposalNumber(String newHierarchyProposalNumber) {
		this.newHierarchyProposalNumber = newHierarchyProposalNumber;
	}

    public S2sUserAttachedForm getS2sUserAttachedForm() {
        return s2sUserAttachedForm;
    }

    public void setS2sUserAttachedForm(S2sUserAttachedForm s2sUserAttachedForm) {
        this.s2sUserAttachedForm = s2sUserAttachedForm;
    }

    public List<NarrativeUserRights> getNarrativeUserRights() {
        return narrativeUserRights;
    }

    public void setNarrativeUserRights(List<NarrativeUserRights> narrativeUserRights) {
        this.narrativeUserRights = narrativeUserRights;
    }

    public String getNarrativeUserRightsSelectedAttachment() {
        return narrativeUserRightsSelectedAttachment;
    }

    public void setNarrativeUserRightsSelectedAttachment(String narrativeUserRightsSelectedAttachment) {
        this.narrativeUserRightsSelectedAttachment = narrativeUserRightsSelectedAttachment;
    }

    public Map<String, Boolean> getPersonEditableFields() {
        if (personEditableFields == null) {
            populatePersonEditableFields();
        }
        return personEditableFields;
    }

    public void setPersonEditableFields(Map<String, Boolean> personEditableFields) {
        this.personEditableFields = personEditableFields;
    }

    public ProposalDevelopmentRejectionBean getProposalDevelopmentRejectionBean() {
        return proposalDevelopmentRejectionBean;
    }

    public void setProposalDevelopmentRejectionBean(ProposalDevelopmentRejectionBean proposalDevelopmentRejectionBean) {
        this.proposalDevelopmentRejectionBean = proposalDevelopmentRejectionBean;
    }

    public S2sAppSubmission getDisplayedS2sAppSubmission() {
        if (CollectionUtils.isNotEmpty(this.getDevelopmentProposal().getS2sAppSubmission())){
            return this.getDevelopmentProposal().getS2sAppSubmission().get(this.getDevelopmentProposal().getS2sAppSubmission().size()-1);
        }
        return null;
    }

    public AnswerHeader getUpdateAnswerHeader() {
        return updateAnswerHeader;
    }

    public void setUpdateAnswerHeader(AnswerHeader updateAnswerHeader) {
        this.updateAnswerHeader = updateAnswerHeader;
    }

    public List<SponsorFormTemplateList> getSponsorFormTemplates() {
        return sponsorFormTemplates;
    }

    public void setSponsorFormTemplates(List<SponsorFormTemplateList> sponsorFormTemplates) {
        this.sponsorFormTemplates = sponsorFormTemplates;
    }

    public boolean isSendOverrideNotification() {
        return sendOverrideNotification;
    }

    public void setSendOverrideNotification(boolean proposalChangedDataSendNotification) {
        this.sendOverrideNotification = proposalChangedDataSendNotification;
    }

    public String getResubmissionOption() {
		return resubmissionOption;
	}

	public void setResubmissionOption(String resubmissionOption) {
		this.resubmissionOption = resubmissionOption;
	}

	public String getInstitutionalProposalToVersion() {
		return institutionalProposalToVersion;
	}

	public void setInstitutionalProposalToVersion(
			String institutionalProposalToVersion) {
		this.institutionalProposalToVersion = institutionalProposalToVersion;
	}

	public List<String> getUnitRulesMessages() {
		return unitRulesMessages;
	}

	public void setUnitRulesMessages(List<String> unitRulesMessages) {
		this.unitRulesMessages = unitRulesMessages;
	}
    public boolean isUnitRulesErrorsExist() {
        return getUnitRulesErrors().size() > 0;
    }
    public List<String> getUnitRulesErrors() {
        return getUnitRulesMessages(KcKrmsConstants.MESSAGE_TYPE_ERROR);
    }
    protected List<String> getUnitRulesMessages(String messageType) {
        List<String> messages = new ArrayList<String>();
        for (String message : this.unitRulesMessages) {
            if (StringUtils.substringBefore(message, KcKrmsConstants.MESSAGE_SEPARATOR).equals(messageType)) {
                messages.add(StringUtils.substringAfter(message, KcKrmsConstants.MESSAGE_SEPARATOR));
            }
        }
        return messages;
    }

	public boolean isGrantsGovSubmitFlag() {
		return grantsGovSubmitFlag;
	}

	public void setGrantsGovSubmitFlag(boolean grantsGovSubmitFlag) {
		this.grantsGovSubmitFlag = grantsGovSubmitFlag;
	}

	public boolean isShowSubmissionDetails() {
		return showSubmissionDetails;
	}

	public void setShowSubmissionDetails(boolean showSubmissionDetails) {
		this.showSubmissionDetails = showSubmissionDetails;
	}
}