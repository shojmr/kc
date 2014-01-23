 CREATE TABLE UNIT 
   (	"UNIT_NUMBER" VARCHAR2(8) constraint UNITN1 NOT NULL ENABLE, 
	"UNIT_NAME" VARCHAR2(60), 
	"PARENT_UNIT_NUMBER" VARCHAR2(8), 
	"ORGANIZATION_ID" VARCHAR2(8), 
	"UPDATE_TIMESTAMP" DATE constraint UNITN2 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint UNITN3 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  UNITN4  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  UNITN5  NOT NULL ENABLE,
	CONSTRAINT "PK_UNIT_KRA" PRIMARY KEY ("UNIT_NUMBER") ENABLE
); 
 