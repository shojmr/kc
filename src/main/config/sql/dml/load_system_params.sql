-- INSERTING INTO krns_PARM_T
-- Exported from KRADBA 26-AUG-2008 by Tyler Wilson

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Lookup',    'RESULTS_DEFAULT_MAX_COLUMN_LENGTH',    '3CB71272FEF72106E043814FD8812106',    1,    'CONFG',    '70',    'If a maxLength attribute has not been set on a lookup result field in the data dictionary, then the result column''s max length will be the value of this parameter. Set this parameter to 0 for an unlimited default length or a positive value (i.e. greater than 0) for a finite max length.',    'A',    'WorkflowAdmin',    'Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Lookup',    'RESULTS_LIMIT',    '3CB71272FEF82106E043814FD8812106',    1,    'CONFG',    '200',    'If a maxLength attribute has not been set on a lookup result field in the data dictionary, then the result column''s max length will be the value of this parameter. Set this parameter to 0 for an unlimited default length or a positive value (i.e. greater than 0) for a finite max length.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'L',    'multipleValueLookupResultsPerPage',    '40B51A08D073A044E043814FD881A044',    1,    'CONFG',    '200',    'Limit results returned for lookup - multiple results',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposaldevelopment.creditsplit.enabled',    '40B51A08D074A044E043814FD881A044',    1,    'CONFG',    'Y',    'Determines whether the Credit Split is turned on for proposal',    'A',    'WorkflowAdmin',    'Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposaldevelopment.proposaltype.new',    '40B51A08D078A044E043814FD881A044',    1,    'CONFG',    '1',    'ProposalTypeCode of NEW',    'A',    'WorkflowAdmin',    'Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd)
VALUES('KRA-PD',    'D',    'proposaldevelopment.proposaltype.resubmission',    sys_guid(),    1,    'CONFG',    '2',    'ProposalTypeCode of RESUBMISSION',    'A');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposaldevelopment.displayKeywordPanel',    '40B51A08D079A044E043814FD881A044',    1,    'CONFG',    'TRUE',    'Display Proposal Keyword panel',    'A',    'WorkflowAdmin',    'Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalNarrativeTypeGroup',    '40B51A08D07DA044E043814FD881A044',    1,    'CONFG',    'P',    'Define Narrative Type Group for Proposal Attachments',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'instituteNarrativeTypeGroup',    '40B51A08D07EA044E043814FD881A044',    1,    'CONFG',    'O',    'Define Narrative Type Group for Institute Attachments',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'deliveryInfoDisplayIndicator',    '40B51A08D07FA044E043814FD881A044',    1,    'CONFG',    'Y',    'Flag to display delivery infor panel',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Lookup',    'MULTIPLE_VALUE_RESULTS_PER_PAGE',    '40B51A08D081A044E043814FD881A044',    1,    'CONFG',    '200',    'Limit results returned for lookup - multiple results',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'All',    'ENABLE_FIELD_LEVEL_HELP_IND',    '41D2EA24D14200EEE043814FD88100EE',    1,    'CONFG',    'N',    'Indicates whether field level help links are enabled on lookup pages and documents.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Document',    'SUPERVISOR_GROUP',    '41D2EA24D14300EEE043814FD88100EE',    1,    'AUTH',    'KUALI_ROLE_SUPERVISOR',    'Workgroup which can perform almost any function within Kuali.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'All',    'CHECK_ENCRYPTION_SERVICE_OVERRIDE_IND',    '41D2EA24D14400EEE043814FD88100EE',    1,    'CONFG',    'Y',    'Flag for enabling/disabling the demonstration encryption check.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Document',    'DEFAULT_CAN_PERFORM_ROUTE_REPORT_IND',    '41D2EA24D14500EEE043814FD88100EE',    1,    'CONFG',    'Y',    'If Y, the Route Report button will be displayed on the document actions bar if the document is using the default DocumentAuthorizerBase.getDocumentActionFlags to set the canPerformRouteReport property of the returned DocumentActionFlags instance.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetStatusCompleteCode',    '4480191E0EAA410AE043814FD881410A',    1,    'CONFG',    '1',    'Code corresponding to the budget status of Complete',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetStatusIncompleteCode',    '4480191E0EAB410AE043814FD881410A',    1,    'CONFG',    '2',    'Code corresponding to the budget status of Incomplete',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'defaultOverheadRateClassCode',    '46C7119435657CB9E0404F8189D81B01',    1,    'CONFG',    '1',    'The overhead rate class a new Budget should default to',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'defaultUnderrecoveryRateClassCode',    '46C7119435667CB9E0404F8189D81B01',    1,    'CONFG',    '1',    'The underrecovery rate class a new Budget should default to',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'defaultModularFlag',    '46C7119435677CB9E0404F8189D81B01',    1,    'CONFG',    'N',    'Default value of modular flag for a new Budget.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Document',    'PESSIMISTIC_LOCK_ADMIN_GROUP',    '49BCDEC5F67329F8E0404F8189D85CC3',    1,    'AUTH',    'WorkflowAdmin',    'Workgroup which can perform admin deletion and lookup functions for Pessimistic Locks.',    'A',    'WorkflowAdmin',    'Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'All',    'ENABLE_DIRECT_INQUIRIES_IND',    '4783651C23638A3AE0404F8189D851B2',    1,    'CONFG',    'Y',    'Flag for enabling/disabling direct inquiries on screens that are drawn by the nervous system (i.e. lookups and maintenance documents)',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Document',    'MAX_FILE_SIZE_ATTACHMENT',    '4783651C23648A3AE0404F8189D851B2',    1,    'CONFG',    '5M',    'Maximum attachment upload size for the application. Used by KualiDocumentFormBase. Must be an integer, optionally followed by ''K'', ''M'', or ''G''.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPersonDefaultJobCode',    '482B3667F68FE14FE0404F8189D81740',    1,    'CONFG',    '0',    'The Job Code a new Budget Person should default to',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPersonDefaultAppointmentType',    '482B3667F690E14FE0404F8189D81740',    1,    'CONFG',    '7',    'The Appointment Type a new Budget Person should default to',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPersonDefaultCalculationBase',    '482B3667F691E14FE0404F8189D81740',    1,    'CONFG',    '0',    'The Calculation Base a new Budget Person should default to',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposaldevelopment.proposaltype.renewal',    '4851951BFFDBF56CE0404F8189D8621D',    1,    'CONFG',    '3',    'ProposalTypeCode of RENEWAL',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposaldevelopment.proposaltype.revision',    '4851951BFFDCF56CE0404F8189D8621D',    1,    'CONFG',    '5',    'ProposalTypeCode of REVISION',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposaldevelopment.proposaltype.continuation',    '4851951BFFDDF56CE0404F8189D8621D',    1,    'CONFG',    '4',    'ProposalTypeCode of CONTINUATION',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetCurrentFiscalYear',    '48B87686458BC210E0404F8189D82807',    1,    'CONFG',    '07/01/2000',    ' The starting fiscal year for a budget',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetCostSharingApplicabilityFlag',    '49599045560D577FE0404F8189D845B5',    1,    'CONFG',    'Y',    ' Flag indicating if Cost Sharing is applicable for the budget',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetUnrecoveredFandAApplicabilityFlag',    '49599045560E577FE0404F8189D845B5',    1,    'CONFG',    'Y',    ' Flag indicating if Unrecovered F&A is applicable for the budget',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t (sh_parm_nmspc_cd, sh_parm_dtl_typ_cd, sh_parm_nm, obj_id, ver_nbr, sh_parm_typ_cd, sh_parm_txt, sh_parm_desc, sh_parm_cons_cd, wrkgrp_nm, ACTV_IND)
VALUES('KRA-B', 'D', 'budgetCostSharingEnforcementFlag', '205246DF7F364A3083357960305030C5',1, 'CONFG', 'Y', 'Flag indicating if Cost Sharing allocation should be enforced', 'A', 'WorkflowAdmin', 'Y');


INSERT
INTO krns_parm_t (sh_parm_nmspc_cd, sh_parm_dtl_typ_cd, sh_parm_nm, obj_id, ver_nbr, sh_parm_typ_cd, sh_parm_txt, sh_parm_desc, sh_parm_cons_cd, wrkgrp_nm, ACTV_IND)
VALUES('KRA-B', 'D', 'budgetUnrecoveredFandAEnforcementFlag', 'C9E4C6277E234C45BF0E1D041B2491CF',1, 'CONFG', 'Y', 'Flag indicating if Unrecovered F and A allocation should be enforced', 'A', 'WorkflowAdmin', 'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'Document',    'SESSION_TIMEOUT_WARNING_MESSAGE_TIME',    '49BCDEC5F67229F8E0404F8189D85CC3',    1,    'CONFG',    '5',    'The number of minutes before a session expires that user should be warned when a document uses pessimistic locking.',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    's2s.revisiontype.other',    '4C872EF543357E41E0404F8189D80A8E',    1,    'CONFG',    'E',    'RevisionType of Other',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    's2s.submissiontype.changedCorrected',    '4C872EF543367E41E0404F8189D80A8E',    1,    'CONFG',    '3',    'SubmissionType of Changed/Corrected',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KR-NS',    'All',    'MAX_FILE_SIZE_DEFAULT_UPLOAD',    '4CBAA7A57E0581C1E0404F8189D82E3D',    1,    'CONFG',    '5M',    'Maximum file upload size for the application. Used by PojoFormBase. Must be an integer, optionally followed by "K", "M", or "G". Only used if no other upload limits are in effect.',    'A',    'WorkflowAdmin',    'Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetVersionsHelp',    '5183FC8FA0BA1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetversionspage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetSummaryHelp',    '5183FC8FA0BB1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fsummarypage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetTotalsHelp',    '5183FC8FA0BF1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Ftotalspage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'defaultOverheadRateTypeCode',    '4DE703D0EB13359AE0404F8189D80175',    1,    'CONFG',    '1',    'The overhead rate type a new Budget should default to',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetDistributionAndIncomeHelp',    '5183FC8FA0C01606E0404F8189D8140F',    1,    'HELP',    'distributionincomepage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetModularBudgetHelp',    '5183FC8FA0C11606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fmodularbudgetpage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetActionsHelp',    '5183FC8FA0C21606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetactionspage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetStatusHelpUrl',    '5183FC8FA0C31606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetversionstab.htm',    'Budget Status Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPeriodHelpUrl',    '5183FC8FA0C41606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetperiodstotalstab.htm',    'Budget Period Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetRateClassHelpUrl',    '5183FC8FA0C51606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Frateclasstab.htm',    'Rate Class Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetUnrecoveredFandAHelpUrl',    '5183FC8FA0C71606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Funrecoveredfatab.htm',    'Budget Unrecovered F and A Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'consortiumFnaCostElements',    '4F65EC9CB3A0195DE0404F8189D8571C',    1,    'CONFG',    '420630;420610',    'Cost elements considered to be consortium F and A',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'fnaRateClassTypeCode',    '4F65EC9CB3A1195DE0404F8189D8571C',    1,    'CONFG',    'O',    'Rate class type code for F and A',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    's2s.submissiontype.application',    '4FC64FA04F992077E0404F8189D85916',    1,    'CONFG',    '2',    'Submission Type of Application',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetProjectIncomeHelpUrl',    '5183FC8FA0C81606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fprojectincometab.htm',    'Budget Project Income Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetCategoryHelpUrl',    '5183FC8FA0C91606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcategorytab.htm',    'Budget Category Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetbudgetPersonnelDetailsHelpUrl',    '5183FC8FA0CC1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fpersonneldetailstab.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentKeyPersonnelHelp',    '5183FC8FA0CE1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fkeypersonnelpage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentSpecialReviewHelp',    '5183FC8FA0CF1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fspecialreviewpage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentCustomDataHelp',    '5183FC8FA0D01606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcustomdatapage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentQuestionsHelp',    '5183FC8FA0D11606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fquestionspage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentAbstractsAttachmentsHelp',    '5183FC8FA0D31606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fabstractsandattachmentspage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentProposalHelp',    '5183FC8FA0D41606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fproposalpage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentGrantsGovHelp',    '5183FC8FA0D51606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fgrantsgovpage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentActionsHelp',    '5183FC8FA0D61606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fproposalactionspage.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentSponsorHelpUrl',    '5183FC8FA0D71606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fsponsorprograminformationtab.htm',    'Sponsor Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentLocationHelpUrl',    '5183FC8FA0D91606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Forganizationlocationtab.htm',    'Location Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentKeywordsHelpUrl',    '5183FC8FA0DA1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fkeywordstab.htm',    'Keywords Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentCreditSplitHelpUrl',    '5183FC8FA0DB1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcombinedcreditsplittab.htm',    'Credit Split Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentPersonHelpUrl',    '5183FC8FA0DD1606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fpersonnametab.htm',    'Person Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentOrganizationHelpUrl',    '528ABE6A61143CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Forganizationlocationtab.htm',    'Organization Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentYnqHelpUrl',    '528ABE6A61153CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Ftabbedpagesectionexamples1.htm',    'Yes/No Questions Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentAbstractHelpUrl',    '5183FC8FA0E01606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fabstractstab.htm',    'Abstract Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentPermissionsHelp',    '528ABE6A61163CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fuserstab.htm',    'Proposal Development Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentMailByHelpUrl',    '5183FC8FA0E21606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fdeliveryinfotab.htm',    'Mail By Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentProposalTypeHelpUrl',    '5183FC8FA0E31606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Frequiredfieldsforsavingdocumenttab.htm',    'Proposal Type Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentSpecialReviewHelpUrl',    '5183FC8FA0E41606E0404F8189D8140F',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fspecialreviewtab.htm',    'Special Review Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentOpportunityHelpUrl',    '528ABE6A61173CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fgrantsgovtab.htm',    'Grants.gov Opportunity Help',    'A',    'WorkflowAdmin',    'Y');



INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'proposalBudgetStatusHelpUrl',    '528A5E49357CDF7CE0404F8189D86E13',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetoverviewtab.htm',    'Budget Summary Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentDocumentHelp',    '528A5E4935A5DF7CE0404F8189D86E13',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fproposaldevelopmentdocument.htm',    'Proposal Development Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetDocumentHelp',    '528A5E4935A6DF7CE0404F8189D86E13',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetdocument.htm',    'Budget Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetModularIdcHelpUrl',    '528A5E4935ABDF7CE0404F8189D86E13',    1,    'HELP',    'default.htm?turl=WordDocuments%2Ffatab.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentCopyCriteriaHelpUrl',    '528ABE6A61183CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcopytonewdocumenttab.htm',    'Proposal Copy Criteria Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentCustomAttributeHelpUrl',    '528ABE6A61193CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcustomdatapage.htm',    'Custom Attribute Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPersonHelpUrl',    '528ABE6A611B3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetpersonneltab.htm',    'Budget Person Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetLineItemHelpUrl',    '528ABE6A611C3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fexpensespagetabs.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetCostShareHelpUrl',    '528ABE6A611D3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcostsharingtab.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'activityTypeMaintenanceHelp',    '528ABE6A611F3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Factivitytypemaintenancedocument.htm',    'Activity Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'budgetCategoryMaintenanceHelp',    '528ABE6A61203CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetcategorymaintenancedocument.htm',    'Budget Category Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'budgetCategoryMappingMaintenanceHelp',    '528ABE6A61213CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetcategorymappingmaintenancedocument.htm',    'Budget Category Mapping Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'budgetCategoryMapMaintenanceHelp',    '528ABE6A61223CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetcategorymapsmaintenancedocument.htm',    'Budget Category Mapping Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'budgetCategoryTypeMaintenanceHelp',    '528ABE6A61233CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetcategorytypemaintenancedocument.htm',    'Budget Category Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'costElementMaintenanceHelp',    '528ABE6A61243CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcostelementmaintenancedocument.htm',    'Cost Element Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'customAttributeMaintenanceHelp',    '528ABE6A61253CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcustomattributemaintenancedocument.htm',    'Custom Attribute Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'customAttributeDocumentMaintenanceHelp',    '528ABE6A61263CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fcustomattributedocumentmaintenancedocument.htm',    'Custom Attribute Document Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'instituteLaRateMaintenanceHelp',    '528ABE6A61273CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Finstitutelaratemaintenancedocument.htm',    'Institute La Rate Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'instituteRateMaintenanceHelp',    '528ABE6A61283CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Finstituteratemaintenancedocument.htm',    'Institute Rate Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'investigatorCreditTypeMaintenanceHelp',    '528ABE6A61293CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Finvestigatorcredittypemaintenancedocument.htm',    'Investigator Credit Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'scienceKeywordMaintenanceHelp',    '528ABE6A612A3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fsciencekeywordmaintenancedocument.htm',    'Science Keyword Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'noticeOfOpportunityMaintenanceHelp',    '528ABE6A612B3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fnoticeofopportunitymaintenancedocument.htm',    'Notice of Opportunity Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'organizationMaintenanceHelp',    '528ABE6A612C3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Forganizationmaintenancedocument.htm',    'Organization Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'proposalTypeMaintenanceHelp',    '528ABE6A612D3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fproposaltypemaintenancedocument.htm',    'Proposal Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'rateClassMaintenanceHelp',    '528ABE6A612E3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Frateclassmaintenancedocument.htm',    'Rate Class Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'rateClassTypeMaintenanceHelp',    '528ABE6A612F3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Frateclasstypemaintenancedocument.htm',    'Rate Class Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'rateTypeMaintenanceHelp',    '528ABE6A61303CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fratetypemaintenancedocument.htm',    'Rate Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'ynqMaintenanceHelp',    '528ABE6A61313CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fynqmaintenancedocument.htm',    'YNQ Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'validSpecialReviewApprovalMaintenanceHelp',    '528ABE6A61323CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fvalidspecialreviewapprovalmaintenancedocument.htm',    'Valid Special Review Approval Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'specialReviewApprovalStatusMaintenanceHelp',    '528ABE6A61333CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fspecialreviewapprovalstatusmaintenancedocument.htm',    'Special Review Approval Status Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'specialReviewApprovalTypeMaintenanceHelp',    '528ABE6A61343CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fspecialreviewapprovaltypemaintenancedocument.htm',    'Special Review Approval Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'validCalcTypeMaintenanceHelp',    '528ABE6A61353CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fvalidcalculationtypemaintenancedocument.htm',    'Valid Calculation Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'validCeRateTypeMaintenanceHelp',    '528ABE6A61363CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fvalidcostelementratetypemaintenancedocument.htm',    'Valid Cost Element Rate Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'sponsorMaintenanceHelp',    '528ABE6A61373CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fsponsormaintenancedocument.htm',    'Sponsor Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'stateMaintenanceHelp',    '528ABE6A61383CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fstatemaintenancedocument.htm',    'State Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'abstractTypeMaintenanceHelp',    '528ABE6A61393CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fabstracttypemaintenancedocument.htm',    'Abstract Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'budgetStatusMaintenanceHelp',    '528ABE6A613A3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fbudgetstatusmaintenancedocument.htm',    'Budget Status Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'deadlineTypeMaintenanceHelp',    '528ABE6A613B3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fdeadlinetypemaintenancedocument.htm',    'Deadline Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'degreeTypeMaintenanceHelp',    '528ABE6A613C3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fdegreetypemaintenancedocument.htm',    'Degree Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'mailByMaintenanceHelp',    '528ABE6A613D3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fmailbymaintenancedocument.htm',    'Mail By Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'narrativeStatusMaintenanceHelp',    '528ABE6A613E3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fnarrativestatusmaintenancedocument.htm',    'Narrative Status Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'narrativeTypeMaintenanceHelp',    '528ABE6A613F3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fnarrativetypemaintenancedocument.htm',    'Narrative Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'personMaintenanceHelp',    '528ABE6A61403CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fpersonmaintenancedocument.htm',    'Person Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    'personEditableFieldMaintenanceHelp',    '528ABE6A61413CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fpersoneditablefieldmaintenancedocument.htm',    'Person Editable Fields Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    's2sRevisionTypeMaintenanceHelp',    '528ABE6A61423CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fs2srevisiontypemaintenancedocument.htm',    'S2S Revision Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-M',    'D',    's2sSubmissionTypeMaintenanceHelp',    '528ABE6A61433CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fs2ssubmissiontypemaintenancedocument.htm',    'S2S Submission Type Maintenance Document Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetRatesHelp',    '528ABE6A61463CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Frates.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPersonnelHelp',    '528ABE6A61473CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fprojectpersonnel.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetExpensesHelp',    '528ABE6A61483CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fexpensespage.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetModularHelpUrl',    '528ABE6A61493CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fdirectcosttab.htm',    'Budget Page Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'proposalDevelopmentNarrativeHelpUrl',    '528ABE6A614B3CF0E0404F8189D87128',    1,    'HELP',    'default.htm?turl=WordDocuments%2Fabstractsandattachmentspage.htm',    'Narrative Help',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'D',    'initialUnitLoadDepth',    '532F1AABC0CD73C1E0404F8189D847CE',    1,    'CONFG',    '3',    'Initial UnitHierarchy Load Depth',    'A',    'WorkflowAdmin',    'Y');


INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-B',    'D',    'budgetPersonDefaultPeriodType',    '54D3CEBFBE65FD0CE0404F8189D86927',    1,    'CONFG',    '3',    'Default Period Type',    'A',    'WorkflowAdmin',    'Y');

insert INTO krns_parm_t (nmspc_cd,parm_dtl_typ_cd,parm_nm,parm_typ_cd,txt,parm_desc_txt,cons_cd,ACTV_IND) 
values ('KRA-PD','D','pessimisticLocking.cronExpression','CONFG','0 0 1 * * ?','The Cron Expression for Quartz to activate a clearing of old locks','A','Y');

insert INTO krns_parm_t (nmspc_cd,parm_dtl_typ_cd,parm_nm,parm_typ_cd,txt,parm_desc_txt,cons_cd,ACTV_IND) 
values ('KRA-PD','D','pessimisticLocking.expirationAge','CONFG','1440','The expiration timeout in minutes; expired locks are deleted','A','Y');

INSERT
INTO krns_parm_t(nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
VALUES('KRA-PD',    'A',    'numberPerSponsorHierarchyGroup',   'CONFG',    '300',    'Number of nodes per sponsor group',    'A',    'WorkflowAdmin',    'Y');

insert INTO krns_parm_t (nmspc_cd, parm_dtl_typ_cd, parm_nm, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
values ('KRA-B', 'D', 'JOBCODE_VALIDATION_ENABLED', 'CONFG', 'Y', 'Whether Job code based validation is enabled', 'A', 'WorkflowAdmin', 'Y');

insert INTO krns_parm_t (nmspc_cd, parm_dtl_typ_cd, parm_nm, parm_typ_cd, txt, parm_desc_txt, cons_cd, ACTV_IND) 
VALUES ('KRA-B','D','budgetPersonDetailsDefaultPeriodType','CONFG','3','The Period Type of a newly budgeted Person should default to','A','Y');

insert INTO krns_parm_t (nmspc_cd, parm_dtl_typ_cd, parm_nm, parm_typ_cd, txt, parm_desc_txt, cons_cd, ACTV_IND)   
VALUES ('KRA-B','A','instituteRateClassTypes','CONFG','E;I;O;V;X','Manages a list of Institute rate class types.','A','Y');

insert INTO krns_parm_t (nmspc_cd, parm_dtl_typ_cd, parm_nm, parm_typ_cd, txt, parm_desc_txt, cons_cd, ACTV_IND)  
VALUES ('KRA-B','A','instituteLaRateClassTypes','CONFG','Y;L','Manages a list of Institute La rate class types.','A','Y');

insert INTO krns_parm_t (nmspc_cd, parm_dtl_typ_cd, parm_nm, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
VALUES ('KRA-B', 'D', 'budgetCategoryType.personnel', 'CONFG', 'P', 'Personnel Budget Category Type', 'A', 'WorkflowAdmin', 'Y');

Insert into krns_nmSPC_T
( nmspc_cd, OBJ_ID, VER_NBR, parm_nmSPC_NM, ACTV_IND)
Values 
('KC-PROTOCOL', '40B51A08D06DA044E043814FD881A041', 1, 'KC IRB Protocol', 'Y');

Insert into KRNS_PARM_DTL_TYP_T 
( nmspc_cd, parm_dtl_typ_cd, OBJ_ID, VER_NBR, NM, ACTV_IND)
Values 
('KC-PROTOCOL','D','1EA4E50A05844D36964A0FCBB2992881',1,'Document','Y');


Insert INTO krns_PARM_T 
( nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
Values 
('KC-PROTOCOL','D','irb.protocol.referenceID1','F1C228F9D4D8408A8E0BBC801C9525ab',1,'CONFG','Reference ID1','Referece id is configurable at impl time','A','WorkflowAdmin','Y');

Insert INTO krns_PARM_T 
( nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
Values
('KC-PROTOCOL','D','irb.protocol.referenceID2','F1C228F9D4D8408A8E0BBC801C9525az',1,'CONFG','Reference ID2','Referece id is configurable at impl time','A','WorkflowAdmin','Y');

INSERT INTO krns_nmspc_t
(nmspc_cd,parm_nmSPC_NM,ACTV_IND, OBJ_ID, VER_NBR)
values('KC-AWARD', 'Award','Y',sys_guid(),'1');

INSERT INTO krns_PARM_T 
( nmspc_cd, parm_dtl_typ_cd, parm_nm,  parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND, OBJ_ID, VER_NBR)
Values 
('KC-AWARD','D','mit.idc.validation.enabled','CONFG','1','MitIdcValidationEnabled is configurable at impl time','A','WorkflowAdmin','Y',sys_guid(),'1');

INSERT INTO krns_PARM_T 
	(nmspc_cd,parm_dtl_typ_cd,parm_nm,OBJ_ID,VER_NBR,parm_typ_cd,txt,parm_desc_txt,cons_cd,grp_nm,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','federalCapitalizationMinimum',sys_guid(),1,'CONFG','0.00','Federal Capitalization Minimum','A','WorkflowAdmin','Y');
INSERT INTO krns_PARM_T 
	(nmspc_cd,parm_dtl_typ_cd,parm_nm,OBJ_ID,VER_NBR,parm_typ_cd,txt,parm_desc_txt,cons_cd,grp_nm,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','institutionCapitalizationMinimum',sys_guid(),1,'CONFG','0.00','Institution Capitalization Minimum','A','WorkflowAdmin','Y');
Insert INTO krns_PARM_T
   (nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
 Values
   ('KC-PROTOCOL', 'D', 'protocolPersonTrainingSectionRequired', '2347F6B21CAB41DAB20A395611C6ED23', 1, 'CONFG', 'True', 'Implementing institution can decide on whether to display training section', 'A', 'WorkflowAdmin', 'Y');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND) 
	VALUES 
	('KC-AWARD','D','reportClassForPaymentsAndInvoices',sys_guid(),1,'CONFG','6','Report Class For Payments And Invoices','A','WorkflowAdmin','Y');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND) 
	VALUES 
	('KC-AWARD','D','contactTypeOther',sys_guid(),1,'CONFG','8','Contact Type Code For Contact Type Other','A','WorkflowAdmin','Y');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND) 
	VALUES 
	('KC-AWARD','D','scheduleGenerationPeriodInYearsWhenFrequencyBaseCodeIsFinalExpirationDate',sys_guid(),1,'CONFG','1','Schedule Generation Period In Years When Frequency Base Code Is Final Expiration Date','A','WorkflowAdmin','Y');
INSERT INTO KRNS_PARM_T 
	(NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,TXT, PARM_DESC_TXT,CONS_CD,GRP_NM,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','closeoutReportTypeUserDefined',sys_guid(),1,'CONFG','UD','User Defined Close out Report Type','A','WorkflowAdmin','Y');
INSERT INTO KRNS_PARM_T 
	(NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,TXT, PARM_DESC_TXT,CONS_CD,GRP_NM,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','closeoutReportTypeFinancialReport',sys_guid(),1,'CONFG','1','This system parameter maps the CloseoutReportType Financial Report(closeoutReoprtTypeCode=1) with ReportClass Fiscal(reportClassCode=1). If this system parameter is changed - the corresponding values in CloseoutReportType and ReportClass tables should be updated as well.','A','WorkflowAdmin','Y');
INSERT INTO KRNS_PARM_T 
	(NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,TXT, PARM_DESC_TXT,CONS_CD,GRP_NM,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','closeoutReportTypeTechnical',sys_guid(),1,'CONFG','4','This system parameter maps the CloseoutReportType Technical(closeoutReoprtTypeCode=4) with ReportClass Technical Management(reportClassCode=4). If this system parameter is changed - the corresponding values in CloseoutReportType and ReportClass tables should be updated as well.','A','WorkflowAdmin','Y');
INSERT INTO KRNS_PARM_T 
	(NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,TXT, PARM_DESC_TXT,CONS_CD,GRP_NM,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','closeoutReportTypePatent',sys_guid(),1,'CONFG','3','This system parameter maps the CloseoutReportType Patent(closeoutReoprtTypeCode=3) with ReportClass Intellectual Property(reportClassCode=3). If this system parameter is changed - the corresponding values in CloseoutReportType and ReportClass tables should be updated as well.','A','WorkflowAdmin','Y');
INSERT INTO KRNS_PARM_T 
	(NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,TXT, PARM_DESC_TXT,CONS_CD,GRP_NM,ACTV_IND) 
	VALUES 
	('KC-AWARD','D','closeoutReportTypeProperty',sys_guid(),1,'CONFG','2','This system parameter maps the CloseoutReportType Property(closeoutReoprtTypeCode=2) with ReportClass Property(reportClassCode=2). If this system parameter is changed - the corresponding values in CloseoutReportType and ReportClass tables should be updated as well.','A','WorkflowAdmin','Y');
	
INSERT into KRNS_PARM_T
   (nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
 VALUES
   ('KRA-PD', 'D', 'PROPOSAL_CONTACT_TYPE', sys_guid(), 1, 'CONFG', '2', 'Value for Proposal Contact Type', 'A', 'WorkflowAdmin', 'Y');
   
INSERT into KRNS_PARM_T
   (nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
 VALUES
   ('KRA-PD', 'D', 'MULTI_CAMPUS_ENABLED', sys_guid(), 1, 'CONFG', '0', 'Flag for enabling/disabling Multicampus', 'A', 'WorkflowAdmin', 'Y');

INSERT into KRNS_PARM_T
   (nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
 VALUES
   ('KRA-PD', 'D', 'DHHS_AGREEMENT', sys_guid(), 1, 'CONFG', '0', 'Value for DHHS Agreement', 'A', 'WorkflowAdmin', 'Y');

INSERT into KRNS_PARM_T
   (nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
 VALUES
   ('KRA-PD', 'D', 'SCHEDULER_SERVICE_ENABLED', sys_guid(), 1, 'CONFG', '0', 'Value for DHHS Agreement', 'A', 'WorkflowAdmin', 'Y');

Insert into KRNS_PARM_T
   (nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd, grp_nm, ACTV_IND)
 Values
   ('KC-PROTOCOL', 'D', 'IRB_COMM_SELECTION_DURING_SUBMISSION', sys_guid(), 1, 'CONFG', 'O', 'Implementing institution can decide to allow committee/schedule/reviewers to be selected upon an IRB submission.', 'A', 'WorkflowAdmin', 'Y');


--new namespaces for help links
INSERT INTO KRNS_NMSPC_T (NMSPC_CD, NM, ACTV_IND)
VALUES('KC-T', 'Time And Money', 'Y') ;
INSERT INTO KRNS_NMSPC_T (NMSPC_CD, NM, ACTV_IND)
VALUES('KC-GEN', 'General Kuali Coeus', 'Y') ;
--new system parameters for help links
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalConstactsHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Contacts Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalCustomDataHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Custom Data Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalSpecialReviewHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Special Review Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalIPReviewHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Intellectual Property Review Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalDistributionHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Distribution Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalActionsHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Actions Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','IntellectualPropertyReviewActivityHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Intellectual Property Reivew Activity Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-IP','D','InstitutionalProposalUnitAdministratorHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Unit Administrator Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardHelpUrl',sys_guid(),1,'HELP','default.htm','Award Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardHomeHelp',sys_guid(),1,'HELP','default.htm','Award Home Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardContactsHelp',sys_guid(),1,'HELP','default.htm','Award Contacts Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardCommitmentsHelp',sys_guid(),1,'HELP','default.htm','Award Commitments Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardTimeAndMoneyHelp',sys_guid(),1,'HELP','default.htm','Award Time and Money Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardPaymentsReportsAndTermsHelp',sys_guid(),1,'HELP','default.htm','Award Payments Reports and Terms Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardSpecialReviewHelp',sys_guid(),1,'HELP','default.htm','Award Special Review Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardCustomDataHelp',sys_guid(),1,'HELP','default.htm','Award Custom Data Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardQuestionsHelp',sys_guid(),1,'HELP','default.htm','Award Questions Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardPermissionsHelp',sys_guid(),1,'HELP','default.htm','Award Permissions Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardNoteAndAttachmentsHelp',sys_guid(),1,'HELP','default.htm','Award Note and Attachments Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardActionsHelp',sys_guid(),1,'HELP','default.htm','Award Actions Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardApprovedEquipmentHelpUrl',sys_guid(),1,'HELP','default.htm','Award Approved Equipment Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardApprovedForeignTravelHelpUrl',sys_guid(),1,'HELP','default.htm','Award Approved Foreign Travel Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardApprovedSubawardHelpUrl',sys_guid(),1,'HELP','default.htm','Award Approved Subaward Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardCommentHelpUrl',sys_guid(),1,'HELP','default.htm','Award Comment Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardContactHelpUrl',sys_guid(),1,'HELP','default.htm','Award Contact Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardCostShareHelpUrl',sys_guid(),1,'HELP','default.htm','Award Cost Share Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardCustomDataHelpUrl',sys_guid(),1,'HELP','default.htm','Award Custom Data Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardPersonCreditSplitHelpUrl',sys_guid(),1,'HELP','default.htm','Award Person Credit Split Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','CommentTypeHelpUrl',sys_guid(),1,'HELP','default.htm','Award Comment Type Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','CostShareTypeHelpUrl',sys_guid(),1,'HELP','default.htm','Award Cost Share Type Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardFandaRateHelpUrl',sys_guid(),1,'HELP','default.htm','Award F and A Rate Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardReportTermHelpUrl',sys_guid(),1,'HELP','default.htm','Award Report Term Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardCloseoutHelpUrl',sys_guid(),1,'HELP','default.htm','Award Report Term Help','A');	
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-AWARD','D','awardAttachmentsHelpUrl',sys_guid(),1,'HELP','default.htm','Award Attachments Help','A');		
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-T','D','timeAndMoneyHelp',sys_guid(),1,'HELP','default.htm','Time And Money Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-T','D','TransactionHelp',sys_guid(),1,'HELP','default.htm','Transaction Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-T','D','PendingTransactionHelp',sys_guid(),1,'HELP','default.htm','Pending Transaction Help','A');
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-T','D','awardHierarchyNodeHelpUrl',sys_guid(),1,'HELP','default.htm','Award Hierarchy Help','A');	
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-T','D','awardHierarchyHelpUrl',sys_guid(),1,'HELP','default.htm','Award Hierarchy Help','A');	
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-GEN','D','permissionsHelpUrl',sys_guid(),1,'HELP','default.htm','Institutional Proposal Intellectual Property Reivew Activity Help','A');

# Sponsor Hierarchy Support
INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'sponsorLevelHierarchy',    '5183FC8FA0B11606E0404F8189D8140F',    1,    'HELP',    'NIH',    'Sponsor Level Hierarchy',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'sponsorGroupHierarchyName',    '5183FC8FA0B21606E0404F8189D8140F',    1,    'HELP',    'Sponsor Groups',    'Sponsor Group Hierarchy Name',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.nih.kp',    '40B51A08D075A044E043814FD881A044',    1,    'CONFG',    'Key Person',    'Description of key person for Non-NIH Proposals',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.nih.pi',    '40B51A08D076A044E043814FD881A044',    1,    'CONFG',    'PI/Contact',    'Description of principal investigator contact for Non-NIH Proposals',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.nih.coi',    '40B51A08D077A044E043814FD881A044',    1,    'CONFG',    'PI/Multiple',    'Description of principal investigator multiple for Non-NIH Proposals',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.kp',    '40B51A08D07AA044E043814FD881A044',    1,    'CONFG',    'Key Person',    'Description of key person for NIH Proposals',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.coi',    '40B51A08D07BA044E043814FD881A044',    1,    'CONFG',    'Co-Investigator',    'Description of co-investigator for NIH Proposals',    'A',    'WorkflowAdmin',    'Y');


INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.pi',    '40B51A08D07CA044E043814FD881A044',    1,    'CONFG',    'Principal Investigator',    'Description of principal investigator for NIH Proposals',    'A',    'WorkflowAdmin',    'Y');

INSERT INTO krns_parm_t
    (nmspc_cd,    parm_dtl_typ_cd,    parm_nm,    obj_id,    ver_nbr,    parm_typ_cd,    txt,    parm_desc_txt,    cons_cd,    grp_nm,    ACTV_IND)
    VALUES
    ('KC-GEN',    'A',    'personrole.readonly.roles',    '4B6D874259ABE9FEE0404F8189D8167C',    1,    'CONFG',    'KP',    'Proposal Person Role Id list for roles that are read-only',    'A',    'WorkflowAdmin',    'Y');
    
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KRA-PD','D','FEDERAL_ID_COMES_FROM_CURRENT_AWARD',sys_guid(),1,'CONFG','N','Determines whether the Grants.Gov Federal ID must be populated from the current award.','A');
 
insert into KRNS_PARM_T 
	(APPL_NMSPC_CD, NMSPC_CD, PARM_DTL_TYP_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, TXT, PARM_DESC_TXT, CONS_CD) 
	values
    ('KUALI', 'KC-PD', 'D', 'DEFAULT_BIOGRAPHY_DOCUMENT_TYPE_CODE', '81237ef9-9d29-4a07-9fb8-ebd8aaddc834', 1, 'CONFG', '1', 'Value of the default biography document type code. This is the document type code that will be used when adding new users to a Proposal Development Document when they have an attached Biosketch file.', 'A');
    
INSERT INTO krns_PARM_T 
	(nmspc_cd, parm_dtl_typ_cd, parm_nm, OBJ_ID, VER_NBR, parm_typ_cd, txt, parm_desc_txt, cons_cd) 
	VALUES 
	('KC-GEN','A','NSF_SPONSOR_CODE','5183FC8FA0B21606E0404F8189D8140F',1,'CONFG','000500','The sponsor code of NSF.','A');    

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolProtocolHelp',1,'HELP','default.htm?turl=Documents/protocol1.htm','Protocol Page Help','A','62681381F5DB429FAC427F4F4A35C3AB');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolRequiredFieldsHelpUrl',1,'HELP','default.htm?turl=Documents/requiredfieldsforsavingdocument.htm','Protocol Required Fields for Saving Document Help','A','776F0D47EAFB474185BC9C9383DB6D25');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolStatusAndDatesHelpUrl',1,'HELP','default.htm?turl=Documents/statusdates1.htm','Protocol Status and Dates Help','A','2D31BDDBAAE64A4080C2D3254095BA62');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolAreaOfResearchHelpUrl',1,'HELP','default.htm?turl=Documents/areaofresearch.htm','Protocol Area of Research Help','A','6F4D5501FFC94B94A4F83C2DD8CA850C');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolAdditionalInformationHelpUrl',1,'HELP','default.htm?turl=Documents/additionalinformation1.htm','Protocol Additional Information Help','A','A1107E15A3B442BEB23CF38F6363742F');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolOtherIdentifiersHelpUrl',1,'HELP','default.htm?turl=Documents/otheridentifiers.htm','Protocol Other Identifiers Help','A','61CACCE09818497EBFB856A35CF349D2');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolOrganizationsHelpUrl',1,'HELP','default.htm?turl=Documents/organizations.htm','Protocol Organizations Help','A','FBF354C0EA8149599842014D985FB7D2');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolFundingSourcesHelpUrl',1,'HELP','default.htm?turl=Documents/fundingsources.htm','Protocol Funding Sources Help','A','66C554CBCE3C4EC2AC5AC0C22FB78C9E');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolParticipantTypesHelpUrl',1,'HELP','default.htm?turl=Documents/participanttypes.htm','Protocol Participant Types Help','A','90EFDFC57AB6439BA56861B216C7A3AC');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolPersonnelHelp',1,'HELP','default.htm?turl=Documents/personnel.htm','Protocol Personnel Page Help','A','491EA51A75674CA48C953093475E3A83');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolPersonnelHelpUrl',1,'HELP','default.htm?turl=Documents/addpersonnel.htm','Protocol Add Personnel Help','A','4F2167D3B2C64B78995763C72EC544F9');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolQuestionnaireHelp',1,'HELP','default.htm?turl=Documents/questionnaire.htm','Protocol Questionnaire Page Help','A','C2BF427CEB824202BEBB752CB69A4194');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolCustomDataHelp',1,'HELP','default.htm?turl=Documents/customdata1.htm','Protocol Custom Data Page Help','A','002256983F7948C18DC7A04A625D79BD');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolSpecialReviewHelp',1,'HELP','default.htm?turl=Documents/specialreview.htm','Protocol Special Review Page Help','A','3697C8AF76BC488EA42CE0E416FA4E76');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolPermissionsHelp',1,'HELP','default.htm?turl=Documents/permissions1.htm','Protocol Permissions Page Help','A','46064E3EF5EE4BD4B26C2CEC90175A86');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolNotesAndAttachmentsHelp',1,'HELP','default.htm?turl=Documents/notesattachments.htm','Protocol Notes and Attachments Page Help','A','CD5836F621D349BD9AB2ADD6A26F6DAB');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolAddProtocolAttachmentHelpUrl',1,'HELP','default.htm?turl=Documents/protocolattachments.htm','Protocol Add Protocol Attachments Help','A','A9909E9902DC4439BEF3C1D6A03A061D');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolAddPersonnelAttachmentHelpUrl',1,'HELP','default.htm?turl=Documents/personnelattachments.htm','Protocol Add Personnel Attachments Help','A','D83F68A55AEE4239A89E5AB519CBA846');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolNotesHelpUrl',1,'HELP','default.htm?turl=Documents/notes.htm','Protocol Notes Help','A','F2012927FED742BAABDB3E4C8FCFCCCC');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolActionsHelp',1,'HELP','default.htm?turl=Documents/protocolactions.htm','Protocol Actions Page Help','A','0621D61D4D794A6885A2972D5CED3AD7');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-PROTOCOL','D','protocolAvailableActionsHelpUrl',1,'HELP','default.htm?turl=Documents/requestanaction.htm','Protocol Available Actions Help','A','9CA94CAF7D144927A99063000D6BDB99');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-QUESTIONNAIRE','D','questionnaireQuestionnaireHelp',1,'HELP','default.htm?turl=Documents/questionnaire1.htm','Questionnaire Page Help','A','A4A84A5E68C4432C8338418733EB0EC3');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-QUESTIONNAIRE','D','questionnaireQuestionHelpUrl',1,'HELP','default.htm?turl=Documents/question.htm','Questionnaire Question Help','A','B266CFC3582F4E8FB84EB60F267C8988');

INSERT INTO krns_nmspc_t (NMSPC_CD, VER_NBR, NM, ACTV_IND, OBJ_ID) 
VALUES ('KC-COMMITTEE', '1', 'KC IRB Committee', 'Y', 'A43CB5C126D94A07BE7212BDA202F560');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeCommitteeHelp',1,'HELP','default.htm?turl=Documents/committeecommittee.htm','Committee Page Help','A','F0999EC012964F4BB57F4D129071403D');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeCommitteeHelpUrl',1,'HELP','default.htm?turl=Documents/committeecommittee1.htm','Committee Help','A','56CD4B6359D642F587078F80250F19CC');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeAreaOfResearchHelpUrl',1,'HELP','default.htm?turl=Documents/committeeareaofresearch.htm','Committee Area of Research Help','A','7BDB765D7BDE4BC4B408F2F157F859ED');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeMembershipHelp',1,'HELP','default.htm?turl=Documents/committeemembership.htm','Committee Membership Page Help','A','26186A68AE5E4880806C447D7A7DCD88');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeMembershipHelpUrl',1,'HELP','default.htm?turl=Documents/committeemembership1.htm','Committee Membership Help','A','7D85BAB7634F45EE94EF26697443FA68');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeScheduleHelp',1,'HELP','default.htm?turl=Documents/committeeschedule.htm','Committee Schedule Page Help','A','51512FB764F949B781522E4AF2171BB4');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeScheduleHelpUrl',1,'HELP','default.htm?turl=Documents/committeeschedule1.htm','Committee Schedule Help','A','66ED9C579FAE4C23AED7B6640BE1B2DC');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeActionsHelp',1,'HELP','default.htm?turl=Documents/committeeactions.htm','Committee Actions Page Help','A','871829A661E447CABDCE39D25A273488');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','committeeBatchCorrespondenceHelpUrl',1,'HELP','default.htm?turl=Documents/committeebatchcorrespondence.htm','Committee Batch Correspondence Help','A','EE5A4B68412B41CE8D5F08A9ECADDDB3');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingDetailsHelpUrl',1,'HELP','default.htm?turl=Documents/meetingdetails.htm','Meeting Details Help','A','943058F9A11848E5AA5D512136D0F2B4');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingProtocolSubmittedHelpUrl',1,'HELP','default.htm?turl=Documents/meetingprotocolsubmitted.htm','Meeting Protocol Submitted Help','A','F5E740C6320A4FB6B265A3452E2915B9');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingOtherActionsHelpUrl',1,'HELP','default.htm?turl=Documents/meetingotheractions.htm','Meeting Other Actions Help','A','0416E7DF9759442FAE4585D147F8098B');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingAttendanceHelpUrl',1,'HELP','default.htm?turl=Documents/meetingattendance.htm','Meeting Attendance Help','A','51864582F4C0496493282D83C202E773');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingMinutesHelpUrl',1,'HELP','default.htm?turl=Documents/meetingminutes.htm','Meeting Minutes Help','A','097CABACFCBD4D49A1C1734652935F78');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingGenerateAgendaHelpUrl',1,'HELP','default.htm?turl=Documents/meetinggenerateagenda.htm','Meeting Generate Agenda Help','A','3B8AC9D238264166B4B58AD6448832D0');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingGenerateMinutesHelpUrl',1,'HELP','default.htm?turl=Documents/meetinggenerateminutes.htm','Meeting Generate Minutes Help','A','F4CB139711294181B779AE890D4E6E72');

INSERT INTO KRNS_PARM_T (APPL_NMSPC_CD,NMSPC_CD,PARM_DTL_TYP_CD,PARM_NM,VER_NBR,PARM_TYP_CD,TXT,PARM_DESC_TXT,CONS_CD,OBJ_ID) 
VALUES ('KUALI','KC-COMMITTEE','D','meetingCorrespondenceHelpUrl',1,'HELP','default.htm?turl=Documents/meetingcorrespondence.htm','Meeting Correspondence Help','A','77E4785ECD764FDF8753300A97829F15');

commit;