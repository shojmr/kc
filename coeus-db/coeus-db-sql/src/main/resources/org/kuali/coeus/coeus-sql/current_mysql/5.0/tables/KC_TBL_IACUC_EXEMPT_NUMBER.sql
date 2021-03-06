DELIMITER /
CREATE TABLE IACUC_EXEMPT_NUMBER (
    IACUC_EXEMPT_NUMBER_ID DECIMAL(12,0),
    IACUC_SPECIAL_REVIEW_ID DECIMAL(12,0) NOT NULL,
    EXEMPTION_TYPE_CODE VARCHAR(3) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL,
    UPDATE_USER VARCHAR(60) NOT NULL,
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID VARCHAR(36) NOT NULL) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
ALTER TABLE IACUC_EXEMPT_NUMBER
ADD CONSTRAINT PK_IACUC_EXEMPT_NUMBER
PRIMARY KEY (IACUC_EXEMPT_NUMBER_ID)
/
DELIMITER ;
