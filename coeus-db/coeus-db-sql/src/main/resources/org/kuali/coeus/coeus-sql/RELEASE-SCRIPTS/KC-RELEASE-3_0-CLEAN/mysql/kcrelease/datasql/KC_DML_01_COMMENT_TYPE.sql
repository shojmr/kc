delimiter /
TRUNCATE TABLE COMMENT_TYPE
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Invoice Instructions','Y','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','General Comments','Y','N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Fiscal Report Comments','Y','N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Intellectual Property Comments','Y','N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','Procurement Comments','Y','N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6','Property Comments','Y','N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('7','Special Rate','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('8','Indirect Cost Comments','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('9','Cost Sharing Comments','Y','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('10','Special Review Comments','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('12','Proposal Summary','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('13','Proposal Comments','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('16','Proposal IP Review Comment','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('17','Proposal IP Review Comment','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('18','Pre-Award Sponsor Auth Comments ','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('19','Pre-Award Institutional Auth Comments','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('20','Benefits Rates Comments','N','N','N','admin',NOW(),UUID(),1)
/
INSERT INTO COMMENT_TYPE (COMMENT_TYPE_CODE,DESCRIPTION,TEMPLATE_FLAG,CHECKLIST_FLAG,AWARD_COMMENT_SCREEN_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('21','Current Action Comments','N','N','N','admin',NOW(),UUID(),1)
/
delimiter ;
