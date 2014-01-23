CREATE TABLE APPLICATIONS (
        ID NUMBER(8) NOT NULL,
        NAME VARCHAR2(500) NOT NULL,
        DESCRIPTION VARCHAR2(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT APPLICATION_PK PRIMARY KEY(ID) 
);
CREATE TABLE APP_SPONSRD_USER_ATTRIB_DEFS (
        ID NUMBER(8) NOT NULL,
        APPLICATION_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_NAME VARCHAR2(500) NOT NULL,
        ATTRIBUTE_TYPE_ID NUMBER(8) NOT NULL,
        DESCRIPTION VARCHAR(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT APP_SPONSRD_USER_ATTR_PK PRIMARY KEY (ID)
);
CREATE TABLE ROLES (
        ID NUMBER(8) NOT NULL,
        NAME VARCHAR2(500) NOT NULL,
        DESCRIPTION VARCHAR2(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT ROLES_PK PRIMARY KEY (ID)
);
CREATE TABLE PERMISSIONS (
        ID NUMBER(8) NOT NULL,
        NAME VARCHAR2(500) NOT NULL,
        DESCRIPTION VARCHAR2(4000),
		APPLICATION_ID NUMBER(8) NOT NULL,
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT PERMISSIONS_PK PRIMARY KEY (ID)
);
CREATE TABLE ROLES_PERMISSIONS (
        ROLE_ID NUMBER(8) NOT NULL,
        PERMISSION_ID NUMBER(8) NOT NULL,
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT ROLES_PERMISSIONS_PK PRIMARY KEY (ROLE_ID, PERMISSION_ID)
);
CREATE TABLE ROLES_USERS (
        ROLE_ID NUMBER(8) NOT NULL,
        USER_ID NUMBER(8) NOT NULL,
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT ROLES_USERS_PK PRIMARY KEY (ROLE_ID, USER_ID)
);
CREATE TABLE ROLE_ATTRIBUTES (
        ID NUMBER(8) NOT NULL,
        ROLE_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_NAME VARCHAR2(500) NOT NULL,
        ATTRIBUTE_TYPE_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_VALUE VARCHAR(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT ROLE_ATTRIBUTES_PK PRIMARY KEY (ID)
);
CREATE TABLE GROUPS (
        ID NUMBER(8) NOT NULL,
        NAME VARCHAR2(500) NOT NULL,
        DESCRIPTION VARCHAR2(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT GROUPS_PK PRIMARY KEY (ID)
);
CREATE TABLE GROUPS_USERS (
        GROUP_ID NUMBER(8) NOT NULL,
        USER_ID NUMBER(8) NOT NULL,
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT GROUPS_USERS_PK PRIMARY KEY (GROUP_ID, USER_ID)
);
CREATE TABLE ROLES_GROUPS (
        ROLE_ID NUMBER(8) NOT NULL,
        GROUP_ID NUMBER(8) NOT NULL, 
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT ROLES_GROUPS_PK PRIMARY KEY (ROLE_ID, GROUP_ID)
);
CREATE TABLE GROUP_ATTRIBUTES (
        ID NUMBER(8) NOT NULL,
        GROUP_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_NAME VARCHAR2(500) NOT NULL,
        ATTRIBUTE_TYPE_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_VALUES VARCHAR2(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT GROUP_ATTRIBUTES_PK PRIMARY KEY (ID)
);
CREATE TABLE USERS (
        ID NUMBER(8) NOT NULL,
        USERNAME VARCHAR2(500) NOT NULL,
        PASSWORD VARCHAR2(500),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT USERS_PK PRIMARY KEY (ID)
);
CREATE TABLE USER_ATTRIBUTES (
        ID NUMBER(8) NOT NULL,
        USER_ID NUMBER(8) NOT NULL,
        SPONSOR_APPLICATION_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_NAME VARCHAR2(500) NOT NULL,
        ATTRIBUTE_TYPE_ID NUMBER(8) NOT NULL,
        ATTRIBUTE_VALUES VARCHAR2(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT USER_ATTRIBUTES_PK PRIMARY KEY (ID)
);
CREATE TABLE ATTRIBUTE_TYPES (
        ID NUMBER(8) NOT NULL,
        NAME VARCHAR2(500) NOT NULL,
        DESCRIPTION VARCHAR2(4000),
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
        VER_NBR NUMBER(8) DEFAULT 1 NOT NULL, 
        CONSTRAINT ATTRIBUTE_TYPES_PK PRIMARY KEY (ID)
);
CREATE SEQUENCE SEQ_APPLICATIONS_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_APP_SPONSRD_USER_ATTR_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_ROLES_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_PERMISSIONS_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_ROLE_ATTRIBUTES_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_GROUPS_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_GROUP_ATTRIBUTES_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_USERS_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_USER_ATTRIBUTES_ID INCREMENT BY 1 START WITH 1000;
CREATE SEQUENCE SEQ_ATTRIBUTE_TYPES_ID INCREMENT BY 1 START WITH 1000;
ALTER TABLE APPLICATIONS 
ADD CONSTRAINT APPLICATIONS_UK1 UNIQUE
(
NAME
) ENABLE;
ALTER TABLE APP_SPONSRD_USER_ATTRIB_DEFS 
ADD CONSTRAINT APP_SPONSRD_USER_ATTR_UK1 UNIQUE
(
APPLICATION_ID,
ATTRIBUTE_NAME
) ENABLE;
ALTER TABLE ROLES 
ADD CONSTRAINT ROLES_UK1 UNIQUE
(
NAME
) ENABLE;
ALTER TABLE PERMISSIONS 
ADD CONSTRAINT PERMISSIONS_UK1 UNIQUE
(
NAME,
APPLICATION_ID
) ENABLE;
ALTER TABLE ROLE_ATTRIBUTES 
ADD CONSTRAINT ROLE_ATTRIBUTES_UK1 UNIQUE
(
ROLE_ID,
ATTRIBUTE_NAME
) ENABLE;
ALTER TABLE GROUPS 
ADD CONSTRAINT GROUPS_UK1 UNIQUE
(
NAME
) ENABLE;
ALTER TABLE GROUP_ATTRIBUTES
ADD CONSTRAINT GROUP_ATTRIBUTES_UK1 UNIQUE
(
GROUP_ID,
ATTRIBUTE_NAME
) ENABLE;
ALTER TABLE USERS
ADD CONSTRAINT USERS_UK1 UNIQUE
(
USERNAME
) ENABLE;
ALTER TABLE USER_ATTRIBUTES
ADD CONSTRAINT USER_ATTRIBUTES_UK1 UNIQUE
(
USER_ID,
SPONSOR_APPLICATION_ID,
ATTRIBUTE_NAME
) ENABLE;
ALTER TABLE ATTRIBUTE_TYPES
ADD CONSTRAINT ATTRIBUTE_TYPES_UK1 UNIQUE
(
NAME
) ENABLE;
ALTER TABLE APP_SPONSRD_USER_ATTRIB_DEFS
ADD CONSTRAINT APP_SPONSRD_USER_ATTR_FK1 FOREIGN KEY
(
APPLICATION_ID
)
REFERENCES APPLICATIONS
(
ID
) ENABLE;
ALTER TABLE APP_SPONSRD_USER_ATTRIB_DEFS
ADD CONSTRAINT APP_SPONSRD_USER_ATTR_FK2 FOREIGN KEY
(
ATTRIBUTE_TYPE_ID
)
REFERENCES ATTRIBUTE_TYPES
(
ID
) ENABLE;
ALTER TABLE PERMISSIONS
ADD CONSTRAINT PERMISSIONS_FK1 FOREIGN KEY
(
APPLICATION_ID
)
REFERENCES APPLICATIONS
(
ID
) ENABLE;
ALTER TABLE ROLES_PERMISSIONS
ADD CONSTRAINT ROLES_PERMISSIONS_FK1 FOREIGN KEY
(
ROLE_ID
)
REFERENCES ROLES
(
ID
) ENABLE;
ALTER TABLE ROLES_PERMISSIONS
ADD CONSTRAINT ROLES_PERMISSIONS_FK2 FOREIGN KEY
(
PERMISSION_ID
)
REFERENCES PERMISSIONS
(
ID
) ENABLE;
ALTER TABLE ROLES_USERS
ADD CONSTRAINT ROLES_USERS_FK1 FOREIGN KEY
(
ROLE_ID
)
REFERENCES ROLES
(
ID
) ENABLE;
ALTER TABLE ROLES_USERS
ADD CONSTRAINT ROLES_USERS_FK2 FOREIGN KEY
(
USER_ID
)
REFERENCES USERS
(
ID
) ENABLE;
ALTER TABLE ROLE_ATTRIBUTES
ADD CONSTRAINT ROLE_ATTRIBUTES_FK1 FOREIGN KEY
(
ROLE_ID
)
REFERENCES ROLES
(
ID
) ENABLE;
ALTER TABLE ROLE_ATTRIBUTES
ADD CONSTRAINT ROLE_ATTRIBUTES_FK2 FOREIGN KEY
(
ATTRIBUTE_TYPE_ID
)
REFERENCES ATTRIBUTE_TYPES
(
ID
) ENABLE;
ALTER TABLE GROUPS_USERS
ADD CONSTRAINT GROUPS_USERS_FK1 FOREIGN KEY
(
GROUP_ID
)
REFERENCES GROUPS
(
ID
) ENABLE;
ALTER TABLE GROUPS_USERS
ADD CONSTRAINT GROUPS_USERS_FK2 FOREIGN KEY
(
USER_ID
)
REFERENCES USERS
(
ID
) ENABLE;
ALTER TABLE ROLES_GROUPS
ADD CONSTRAINT ROLES_GROUPS_FK1 FOREIGN KEY
(
GROUP_ID
)
REFERENCES GROUPS
(
ID
) ENABLE;
ALTER TABLE ROLES_GROUPS
ADD CONSTRAINT ROLES_GROUPS_FK2 FOREIGN KEY
(
ROLE_ID
)
REFERENCES ROLES
(
ID
) ENABLE;
ALTER TABLE GROUP_ATTRIBUTES
ADD CONSTRAINT GROUP_ATTRIBUTES_FK1 FOREIGN KEY
(
GROUP_ID
)
REFERENCES GROUPS
(
ID
) ENABLE;
ALTER TABLE GROUP_ATTRIBUTES
ADD CONSTRAINT GROUP_ATTRIBUTES_FK2 FOREIGN KEY
(
ATTRIBUTE_TYPE_ID
)
REFERENCES ATTRIBUTE_TYPES
(
ID
) ENABLE;
ALTER TABLE USER_ATTRIBUTES
ADD CONSTRAINT USER_ATTRIBUTES_FK1 FOREIGN KEY
(
USER_ID
)
REFERENCES USERS
(
ID
) ENABLE;
ALTER TABLE USER_ATTRIBUTES
ADD CONSTRAINT USER_ATTRIBUTES_FK2 FOREIGN KEY
(
ATTRIBUTE_TYPE_ID
)
REFERENCES ATTRIBUTE_TYPES
(
ID
) ENABLE;
ALTER TABLE USER_ATTRIBUTES
ADD CONSTRAINT USER_ATTRIBUTES_FK3 FOREIGN KEY
(
SPONSOR_APPLICATION_ID
)
REFERENCES APPLICATIONS
(
ID
) ENABLE;
INSERT INTO APPLICATIONS (ID, NAME, DESCRIPTION) VALUES (1, 'KIM', 'This record represents the actual KIM system.');
INSERT INTO USERS (ID, USERNAME, PASSWORD) VALUES (1, 'admin', 'admin');
COMMIT;