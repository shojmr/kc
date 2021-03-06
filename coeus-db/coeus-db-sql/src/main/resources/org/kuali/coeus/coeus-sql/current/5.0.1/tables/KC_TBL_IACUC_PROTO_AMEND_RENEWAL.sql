CREATE TABLE IACUC_PROTO_AMEND_RENEWAL ( 
    PROTO_AMEND_RENEWAL_ID NUMBER(12,0) NOT NULL, 
    PROTO_AMEND_REN_NUMBER VARCHAR2(20) NOT NULL, 
    DATE_CREATED DATE NOT NULL, 
    SUMMARY VARCHAR2(4000), 
    PROTOCOL_ID NUMBER(12,0) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR2(20), 
    SEQUENCE_NUMBER NUMBER(4,0), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL) 
/


ALTER TABLE IACUC_PROTO_AMEND_RENEWAL 
ADD CONSTRAINT PK_IACUC_PROTO_AMEND_RENEWAL 
PRIMARY KEY (PROTO_AMEND_RENEWAL_ID) 
/

