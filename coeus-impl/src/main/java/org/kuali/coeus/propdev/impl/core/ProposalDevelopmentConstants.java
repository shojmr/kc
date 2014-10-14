package org.kuali.coeus.propdev.impl.core;

public class ProposalDevelopmentConstants {

	public static class KradConstants {
        public static final String REJECT_DIALOG = "PropDev-SubmitPage-RejectDialog";
		public static final String BUDGET_PAGE = "PropDev-BudgetPage";
		public static final String PREVIOUS_PAGE_ARG = "previous";
		public static final String NEXT_PAGE_ARG = "next";

        public static final String PERSONNEL_QUESTIONNAIRE = "personnelQuestionnaire";
	}

    public static class Parameters {
        public static final String KEY_PERSON_CERTIFICATION_SELF_CERTIFY_ONLY = "KEY_PERSON_CERTIFICATION_SELF_CERTIFY_ONLY";
    }

    public static class PropertyConstants {
        public static final String DOCUMENT_DEVELOPMENT_PROPOSAL = "document.developmentProposal";
        public static final String PERSONNEL_BIOS = DOCUMENT_DEVELOPMENT_PROPOSAL + ".propPersonBios";
        public static final String NARRATIVES = DOCUMENT_DEVELOPMENT_PROPOSAL + ".narratives";
        public static final String INSTITUTE_ATTACHMENTS = DOCUMENT_DEVELOPMENT_PROPOSAL + ".instituteAttachments";
    }
    
    public static class NotificationConstants {
    	public static final String NOtiFICATION_STEP_0 = "0";
    	public static final String NOtiFICATION_STEP_2 = "2";
    	public static final String NOtiFICATION_S2S_SUBMIT_ACTION_CODE = "101";
    	public static final String NOtiFICATION_S2S_SUBMIT_CONTEXT_NAME =  "Proposal Submitted";
    }
    
    public static class ResubmissionOptions {
    	public static final String GENERATE_NEW_IP = "N";
    	public static final String GENERATE_NEW_VERSION_OF_IP = "A";
    	public static final String GENERATE_NEW_VERSION_OF_ORIGINAL_IP = "O";
    	public static final String DO_NOT_GENERATE_NEW_IP = "X";
    }
    
    public static class PropDevDocumentActions {
		public static final String SUBMIT_TO_S2S = "submitToS2S";
		public static final String SUBMIT_TO_SPONSOR = "submitToSponsor";
    }
}
