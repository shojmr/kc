CREATE TABLE IACUC_PROTOCOL_ATTACH_PROTOCOL (
    PA_PROTOCOL_ID          NUMBER(12,0) NOT NULL,
    PROTOCOL_ID_FK          NUMBER(12,0) NOT NULL,
    PROTOCOL_NUMBER         VARCHAR2(20) NOT NULL,
    SEQUENCE_NUMBER         NUMBER(4,0) DEFAULT 1 NOT NULL,
    TYPE_CD                 VARCHAR2(3) NOT NULL,
    DOCUMENT_ID             NUMBER(4,0) NOT NULL,
    FILE_ID                 NUMBER(22,0) NOT NULL,
    DESCRIPTION             VARCHAR2(200) NOT NULL,
    STATUS_CD               VARCHAR2(3) NULL,
    CONTACT_NAME            VARCHAR2(30) NULL,
    EMAIL_ADDRESS           VARCHAR2(60) NULL,
    PHONE_NUMBER            VARCHAR2(20) NULL,
    COMMENTS                VARCHAR2(300) NULL,
    UPDATE_TIMESTAMP        DATE NOT NULL, 
    UPDATE_USER             VARCHAR2(60) NOT NULL, 
    VER_NBR                 NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID                  VARCHAR2(36) NOT NULL,
    DOCUMENT_STATUS_CODE    VARCHAR2(3) NULL,
    CREATE_TIMESTAMP        DATE NOT NULL,
    ATTACHMENT_VERSION      NUMBER(4,0) NULL
)
/

ALTER TABLE IACUC_PROTOCOL_ATTACH_PROTOCOL 
ADD CONSTRAINT PK_IACUC_PROTO_ATTACH_PROTO
PRIMARY KEY (PA_PROTOCOL_ID) 
/
