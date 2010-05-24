--Migrate Abstract Type items
UPDATE KCDBA.ABSTRACT_TYPE NAT
SET (DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) =
  (
    SELECT DESCRIPTION,
      UPDATE_TIMESTAMP,
      UPDATE_USER,
      VER_NBR,
      OBJ_ID
    FROM KCMIG.ABSTRACT_TYPE OAT
    WHERE OAT.ABSTRACT_TYPE_CODE = NAT.ABSTRACT_TYPE_CODE
  )
WHERE EXISTS
  (
    SELECT 'a'
    FROM KCDBA.ABSTRACT_TYPE NAT2
    WHERE NAT2.ABSTRACT_TYPE_CODE = NAT.ABSTRACT_TYPE_CODE
  ) ;
  
INSERT INTO KCDBA.ABSTRACT_TYPE (ABSTRACT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
SELECT ABSTRACT_TYPE_CODE,
  DESCRIPTION,
  UPDATE_TIMESTAMP,
  UPDATE_USER,
  VER_NBR,
  OBJ_ID
FROM KCMIG.ABSTRACT_TYPE OAT
WHERE NOT EXISTS
  (
    SELECT 'a'
    FROM KCDBA.ABSTRACT_TYPE NAT
    WHERE OAT.ABSTRACT_TYPE_CODE = NAT.ABSTRACT_TYPE_CODE
  ) ;

  --Migrate Activity Type items
UPDATE KCDBA.ACTIVITY_TYPE NAT
SET (DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) =
  (
    SELECT DESCRIPTION,
      UPDATE_TIMESTAMP,
      UPDATE_USER,
      VER_NBR,
      OBJ_ID
    FROM KCMIG.ACTIVITY_TYPE OAT
    WHERE OAT.ACTIVITY_TYPE_CODE = NAT.ACTIVITY_TYPE_CODE
  )
WHERE EXISTS
  (
    SELECT 'a'
    FROM KCDBA.ACTIVITY_TYPE NAT2
    WHERE NAT2.ACTIVITY_TYPE_CODE = NAT.ACTIVITY_TYPE_CODE
  ) ;
  
INSERT INTO KCDBA.ACTIVITY_TYPE (ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
SELECT ACTIVITY_TYPE_CODE,
  DESCRIPTION,
  UPDATE_TIMESTAMP,
  UPDATE_USER,
  VER_NBR,
  OBJ_ID
FROM KCMIG.ACTIVITY_TYPE OAT
WHERE NOT EXISTS
  (
    SELECT 'a'
    FROM KCDBA.ACTIVITY_TYPE NAT
    WHERE OAT.ACTIVITY_TYPE_CODE = NAT.ACTIVITY_TYPE_CODE
  ) ;
