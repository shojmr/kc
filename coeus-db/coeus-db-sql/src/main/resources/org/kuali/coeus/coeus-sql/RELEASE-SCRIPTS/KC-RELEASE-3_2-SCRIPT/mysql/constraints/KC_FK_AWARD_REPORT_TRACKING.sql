DELIMITER /
ALTER TABLE AWARD_REPORT_TRACKING
	ADD CONSTRAINT AWARD_REPORT_TRACKING_FK1
	FOREIGN KEY (LEAD_UNIT_NUMBER)
	REFERENCES UNIT (UNIT_NUMBER)
/
DELIMITER ;
