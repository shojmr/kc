CREATE TABLE PROTOCOL_ATTACHMENT_GROUP
   (GROUP_CD VARCHAR2(3) NOT NULL ENABLE,
    DESCRIPTION VARCHAR2(300) NOT NULL ENABLE, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE,
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL ENABLE,
    UPDATE_TIMESTAMP DATE NOT NULL ENABLE,
    UPDATE_USER VARCHAR2(10) NOT NULL ENABLE);
);

ALTER TABLE PROTOCOL_ATTACHMENT_GROUP
    ADD CONSTRAINT PK_PROTOCOL_ATTACHMENT_GROUP
    PRIMARY KEY (GROUP_CD);