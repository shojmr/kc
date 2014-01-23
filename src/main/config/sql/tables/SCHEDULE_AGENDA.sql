-- Table Script 
CREATE TABLE SCHEDULE_AGENDA ( 
    SCHEDULE_AGENDA_ID NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    AGENDA_NUMBER NUMBER(4,0) NOT NULL, 
    AGENDA_NAME VARCHAR2(200) NOT NULL, 
    PDF_STORE BLOB DEFAULT empty_blob() NOT NULL, 
    CREATE_TIMESTAMP DATE NOT NULL, 
    CREATE_USER VARCHAR2(8) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE SCHEDULE_AGENDA 
ADD CONSTRAINT PK_COMM_SCHEDULE_AGENDA 
PRIMARY KEY (SCHEDULE_AGENDA_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE SCHEDULE_AGENDA 
-- ADD CONSTRAINT PK_COMM_SCHEDULE_AGENDA 
-- PRIMARY KEY (SCHEDULE_ID, AGENDA_NUMBER);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE SCHEDULE_AGENDA 
ADD CONSTRAINT UQ_COMM_SCHEDULE_AGENDA 
UNIQUE (SCHEDULE_ID_FK, AGENDA_NUMBER);

-- Foreign Key Constraint(s)
ALTER TABLE SCHEDULE_AGENDA 
ADD CONSTRAINT FK_COMM_SCHEDULE_AGENDA 
FOREIGN KEY (SCHEDULE_ID_FK) 
REFERENCES COMM_SCHEDULE (ID);
