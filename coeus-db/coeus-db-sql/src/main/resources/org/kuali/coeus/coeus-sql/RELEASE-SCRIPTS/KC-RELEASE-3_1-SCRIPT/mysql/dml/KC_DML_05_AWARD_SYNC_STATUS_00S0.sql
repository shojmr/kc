DELIMITER /
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),null,null,(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Sync Descendants Complete','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = 2),'001002-00002',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = 2),'001002-00009',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = 2),'001002-00003',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = 3),'001002-00004',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = 2),'001002-00005',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = 3),'001002-00006',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = 3),'001002-00007',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','Completed','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = 2),'001002-00008',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 2),'Y','No changes','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),null,null,(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Validation Complete','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = 2),'001002-00002',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = 2),'001002-00009',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = 2),'001002-00003',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = 3),'001002-00004',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = 2),'001002-00005',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = 3),'001002-00006',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = 3),'001002-00007',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','Valid','N','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQ_AWARD_SYNC_STATUS_ID VALUES(NULL)
/
INSERT INTO AWARD_SYNC_STATUS (AWARD_SYNC_STATUS_ID,AWARD_ID,AWARD_NUMBER,PARENT_AWARD_ID,STEP_SUCCESS,STATUS,SYNC_COMPLETE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_AWARD_SYNC_STATUS_ID),(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = 2),'001002-00008',(SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = 3),'Y','No changes','N','quickstart',NOW(),UUID(),0)
/
DELIMITER ;
