 CREATE TABLE BUDGET_CATEGORY_MAPPING 
   (	"MAPPING_NAME" VARCHAR2(100) constraint BUDGET_CATEGORY_MAPPINGN1 NOT NULL ENABLE, 
	"TARGET_CATEGORY_CODE" VARCHAR2(15) constraint BUDGET_CATEGORY_MAPPINGN2 NOT NULL ENABLE, 
	"COEUS_CATEGORY_CODE" NUMBER(3,0) constraint BUDGET_CATEGORY_MAPPINGN3 NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE constraint BUDGET_CATEGORY_MAPPINGN4 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint BUDGET_CATEGORY_MAPPINGN5 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  BUDGET_CATEGORY_MAPPINGN6  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  BUDGET_CATEGORY_MAPPINGN7  NOT NULL ENABLE,
	CONSTRAINT "PK_BUDGET_CATEGORY_MAPPING_KRA" PRIMARY KEY ("MAPPING_NAME", "TARGET_CATEGORY_CODE", "COEUS_CATEGORY_CODE") ENABLE
);
 