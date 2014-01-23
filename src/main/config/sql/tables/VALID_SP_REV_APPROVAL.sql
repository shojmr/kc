 CREATE TABLE VALID_SP_REV_APPROVAL (	
    "VALID_SP_REV_APPROVAL" NUMBER(12,0) constraint VALID_SP_REV_APPROVALN1 NOT NULL ENABLE,
    "SPECIAL_REVIEW_CODE" VARCHAR2(3) constraint VALID_SP_REV_APPROVALN2 NOT NULL ENABLE, 
	"APPROVAL_TYPE_CODE" VARCHAR2(3) constraint VALID_SP_REV_APPROVALN3 NOT NULL ENABLE, 
	"PROTOCOL_NUMBER_FLAG" CHAR(1) constraint VALID_SP_REV_APPROVALN4 NOT NULL ENABLE, 
	"APPROVAL_DATE_FLAG" CHAR(1) constraint VALID_SP_REV_APPROVALN5 NOT NULL ENABLE, 
	"APPLICATION_DATE_FLAG" CHAR(1) constraint VALID_SP_REV_APPROVALN6 NOT NULL ENABLE, 
	"EXEMPT_NUMBER_FLAG" CHAR(1) constraint VALID_SP_REV_APPROVALN7 NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE constraint VALID_SP_REV_APPROVALN8 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint VALID_SP_REV_APPROVALN9 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  VALID_SP_REV_APPROVALN10  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  VALID_SP_REV_APPROVALN11  NOT NULL ENABLE,
	CONSTRAINT "PK_VALID_SP_REV_APPROVAL_KRA" PRIMARY KEY ("VALID_SP_REV_APPROVAL") ENABLE
);
 ALTER TABLE VALID_SP_REV_APPROVAL ADD (CONSTRAINT "FK_VALID_SP_REV_APPROVAL_KRA" FOREIGN KEY ("SPECIAL_REVIEW_CODE")
	  REFERENCES "SPECIAL_REVIEW" ("SPECIAL_REVIEW_CODE") );
 ALTER TABLE VALID_SP_REV_APPROVAL ADD (CONSTRAINT "FK_VALID_SP_REV_APPROV_TP_KRA" FOREIGN KEY ("APPROVAL_TYPE_CODE")
	  REFERENCES "SP_REV_APPROVAL_TYPE" ("APPROVAL_TYPE_CODE") );