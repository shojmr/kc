DELIMITER /
CREATE TABLE IACUC_LOCATION_NAME ( 
    LOCATION_ID DECIMAL(3,0) NOT NULL, 
    LOCATION_NAME VARCHAR(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    LOCATION_TYPE_CODE DECIMAL(3,0), 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) 
/


ALTER TABLE IACUC_LOCATION_NAME 
ADD CONSTRAINT PK_IACUC_LOCATION_NAME 
PRIMARY KEY (LOCATION_ID) 
/


DELIMITER ;