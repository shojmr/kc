CREATE TABLE NOTIFICATION_MDL_ROLE_QLFR (
    NOTIFICATION_MDL_ROLE_QLFR_ID   NUMBER(6,0) NOT NULL,
    NOTIFICATION_MODULE_ROLE_ID NUMBER(6,0) NOT NULL,
    OBJ_ID                  VARCHAR2(36),
    VER_NBR                 NUMBER(8, 0) default 1 NOT NULL,
    UPDATE_TIMESTAMP        DATE NOT NULL,
    UPDATE_USER             VARCHAR2(60) NOT NULL,
    QUALIFIER               VARCHAR2(200)
)
/
ALTER TABLE NOTIFICATION_MDL_ROLE_QLFR ADD CONSTRAINT PK_NOTIFICATION_MDL_ROLE_QLFR PRIMARY KEY (NOTIFICATION_MDL_ROLE_QLFR_ID)
/
