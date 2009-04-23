CREATE TABLE AWARD_UNIT_CONTACTS (
   AWARD_UNIT_CONTACT_ID number(22,0) NOT NULL,
   AWARD_ID NUMBER(22,0) NOT NULL,
   AWARD_NUMBER varchar2(10) NOT NULL,
   SEQUENCE_NUMBER number(4,0) NOT NULL,

   PERSON_ID varchar2(10),
   FULL_NAME varchar2(90),
   CONTACT_ROLE_CODE varchar2(12) NOT NULL,
   UNIT_CONTACT_TYPE varchar2(13) NOT NULL,
   
   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR decimal(8) NOT NULL,
   OBJ_ID varchar2(36) NOT NULL
);

ALTER TABLE AWARD_UNIT_CONTACTS ADD CONSTRAINT PK_AWARD_UNIT_CONTACTS PRIMARY KEY (AWARD_UNIT_CONTACT_ID);