ALTER TABLE NOTIFICATION
  ADD CONSTRAINT FK_NOTIFICATION FOREIGN KEY (NOTIFICATION_TYPE_ID)
  REFERENCES NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID);