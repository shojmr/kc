/* Table Script */ 
CREATE TABLE FREQUENCY ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	NUMBER_OF_DAYS NUMBER(3,0), 
	NUMBER_OF_MONTHS NUMBER(2,0), 
	REPEAT_FLAG CHAR(1) NOT NULL, 
	PROPOSAL_DUE_FLAG CHAR(1) NOT NULL, 
	INVOICE_FLAG CHAR(1) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	ADVANCE_NUMBER_OF_DAYS NUMBER(3,0), 
	ADVANCE_NUMBER_OF_MONTHS NUMBER(2,0));
/* Primary Key Constraint */ 
ALTER TABLE FREQUENCY 
ADD CONSTRAINT PK_FREQUENCY 
PRIMARY KEY (FREQUENCY_CODE);