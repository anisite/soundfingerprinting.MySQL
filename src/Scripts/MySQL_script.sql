SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema FingerprintsDb
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `FingerprintsDb` ;
CREATE SCHEMA IF NOT EXISTS `FingerprintsDb` ;

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.Tracks
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`Tracks` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ISRC` VARCHAR(50) NULL,
  `Artist` VARCHAR(255) NULL,
  `Title` VARCHAR(255) NULL,
  `Album` VARCHAR(255) NULL,
  `ReleaseYear` INT NULL DEFAULT 0,
  `TrackLengthSec` DOUBLE NULL DEFAULT 0,
  `GroupId` VARCHAR(20) NULL,
  PRIMARY KEY (`Id`));

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.SubFingerprints
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`SubFingerprints` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Signature` VARBINARY(100) NOT NULL,
  `TrackId` INT NOT NULL,
  `SequenceNumber` INT NOT NULL,
  `SequenceAt` DOUBLE NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `IX_TrackIdLookupOnSubfingerprints` (`TrackId` ASC),
  CONSTRAINT `FK_SubFingerprints_Tracks`
    FOREIGN KEY (`TrackId`)
    REFERENCES `FingerprintsDb`.`Tracks` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.Fingerprints
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`Fingerprints` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Signature` VARBINARY(4096) NOT NULL,
  `TrackId` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `IX_TrackIdLookup` (`TrackId` ASC),
  CONSTRAINT `FK_Fingerprints_Tracks`
    FOREIGN KEY (`TrackId`)
    REFERENCES `FingerprintsDb`.`Tracks` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_1
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_1` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_1_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_2
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_2` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_2_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_3
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_3` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_3_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_4
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_4` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_4_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_5
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_5` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_5_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_6
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_6` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_6_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_7
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_7` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_7_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_8
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_8` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_8_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_9
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_9` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_9_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_10
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_10` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_10_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_11
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_11` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_11_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_12
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_12` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_12_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_13
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_13` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_13_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_14
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_14` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_14_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_15
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_15` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_15_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_16
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_16` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_16_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_17
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_17` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_17_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_18
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_18` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_18_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_19
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_19` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_19_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_20
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_20` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_20_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_21
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_21` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_21_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_22
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_22` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_22_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_23
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_23` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_23_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_24
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_24` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_24_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table FingerprintsDb.HashTable_25
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `FingerprintsDb`.`HashTable_25` (
  `HashBin` BIGINT NOT NULL,
  `SubFingerprintId` BIGINT NOT NULL,
  PRIMARY KEY (`HashBin`, `SubFingerprintId`),
  CONSTRAINT `FK_HashTable_25_SubFingerprints`
    FOREIGN KEY (`SubFingerprintId`)
    REFERENCES `FingerprintsDb`.`SubFingerprints` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- -- Routine FingerprintsDb.sp_InsertTrack
-- ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

use FingerprintsDb$$

 CREATE PROCEDURE sp_InsertTrack
 (
 	IN ISRC VARCHAR(50),
 	IN Artist VARCHAR(255),
 	IN Title VARCHAR(255),
 	IN Album VARCHAR(255),
 	IN ReleaseYear INT,
 	IN TrackLengthSec FLOAT,
 	IN GroupId VARCHAR(20)
)BEGIN
 INSERT INTO Tracks (
 	ISRC,
 	Artist,
 	Title,
 	Album,
 	ReleaseYear,
 	TrackLengthSec,
 	GroupId
 	)
 VALUES
 (
  	ISRC, Artist, Title, Album, ReleaseYear, TrackLengthSec, GroupId
 );
 SELECT LAST_INSERT_ID();
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_InsertSubFingerprint
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

 CREATE PROCEDURE sp_InsertSubFingerprint(
 	IN Signature VARBINARY(100),
 	IN TrackId INT,
 	IN SequenceNumber INT,
 	IN SequenceAt FLOAT)
 BEGIN
 INSERT INTO SubFingerprints (
 	Signature, 	TrackId, 	SequenceNumber, 	SequenceAt
 	) 
 VALUES
 (
 	Signature, TrackId, SequenceNumber, SequenceAt
 ); SELECT LAST_INSERT_ID();
 
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_InsertFingerprint
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

 CREATE PROCEDURE sp_InsertFingerprint(
 	IN Signature VARBINARY(4096),
 	IN TrackId INT
)
 BEGIN
 INSERT INTO Fingerprints ( 	Signature, 	TrackId 	)  VALUES ( 	Signature, TrackId ); SELECT LAST_INSERT_ID();
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadTracks
 ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `FingerprintsDb`$$
CREATE PROCEDURE sp_ReadTracks ()BEGIN

SELECT * FROM Tracks;
END$$

DELIMITER ;

 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadTrackById
 ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `FingerprintsDb`$$
CREATE PROCEDURE sp_ReadTrackById (
    IN Id INT)
BEGIN
SELECT * FROM Tracks WHERE Tracks.Id = Id;
END$$

DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadSubFingerprintById
 ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `FingerprintsDb`$$
CREATE PROCEDURE sp_ReadSubFingerprintById(
 IN Id INT
)
BEGIN
	SELECT * FROM SubFingerprints WHERE Id = Id;
END$$

DELIMITER ;

 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadFingerprintByTrackId
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

 CREATE PROCEDURE sp_ReadFingerprintByTrackId(
 	IN TrackId INT)
 BEGIN
 	SELECT * FROM Fingerprints WHERE TrackId = TrackId;
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadFingerprintsByHashBinHashTableAndThreshold
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

 CREATE PROCEDURE sp_ReadFingerprintsByHashBinHashTableAndThreshold(
 	HashBin_1 BIGINT, HashBin_2 BIGINT, HashBin_3 BIGINT, HashBin_4 BIGINT, HashBin_5 BIGINT, 
 	HashBin_6 BIGINT, HashBin_7 BIGINT, HashBin_8 BIGINT, HashBin_9 BIGINT, HashBin_10 BIGINT,
 	HashBin_11 BIGINT, HashBin_12 BIGINT, HashBin_13 BIGINT, HashBin_14 BIGINT, HashBin_15 BIGINT, 
 	HashBin_16 BIGINT, HashBin_17 BIGINT, HashBin_18 BIGINT, HashBin_19 BIGINT, HashBin_20 BIGINT,
 	HashBin_21 BIGINT, HashBin_22 BIGINT, HashBin_23 BIGINT, HashBin_24 BIGINT, HashBin_25 BIGINT,
 	Threshold INT)
BEGIN
 SELECT SubFingerprints.Id, SubFingerprints.TrackId, SubFingerprints.Signature, SubFingerprints.SequenceNumber, SubFingerprints.SequenceAt
 FROM SubFingerprints, 
 	( SELECT Hashes.SubFingerprintId as SubFingerprintId FROM 
 	   (
 		SELECT * FROM HashTable_1 WHERE HashBin = HashBin_1
 		UNION ALL
 		SELECT * FROM HashTable_2 WHERE HashBin = HashBin_2
 		UNION ALL
 		SELECT * FROM HashTable_3 WHERE HashBin = HashBin_3
 		UNION ALL
 		SELECT * FROM HashTable_4 WHERE HashBin = HashBin_4
 		UNION ALL
 		SELECT * FROM HashTable_5 WHERE HashBin = HashBin_5
 		UNION ALL
 		SELECT * FROM HashTable_6 WHERE HashBin = HashBin_6
 		UNION ALL
 		SELECT * FROM HashTable_7 WHERE HashBin = HashBin_7
 		UNION ALL
 		SELECT * FROM HashTable_8 WHERE HashBin = HashBin_8
 		UNION ALL
 		SELECT * FROM HashTable_9 WHERE HashBin = HashBin_9
 		UNION ALL
 		SELECT * FROM HashTable_10 WHERE HashBin = HashBin_10
 		UNION ALL
 		SELECT * FROM HashTable_11 WHERE HashBin = HashBin_11
 		UNION ALL
 		SELECT * FROM HashTable_12 WHERE HashBin = HashBin_12
 		UNION ALL
 		SELECT * FROM HashTable_13 WHERE HashBin = HashBin_13
 		UNION ALL
 		SELECT * FROM HashTable_14 WHERE HashBin = HashBin_14
 		UNION ALL
 		SELECT * FROM HashTable_15 WHERE HashBin = HashBin_15
 		UNION ALL
 		SELECT * FROM HashTable_16 WHERE HashBin = HashBin_16
 		UNION ALL
 		SELECT * FROM HashTable_17 WHERE HashBin = HashBin_17
 		UNION ALL
 		SELECT * FROM HashTable_18 WHERE HashBin = HashBin_18
 		UNION ALL
 		SELECT * FROM HashTable_19 WHERE HashBin = HashBin_19
 		UNION ALL
 		SELECT * FROM HashTable_20 WHERE HashBin = HashBin_20
 		UNION ALL
 		SELECT * FROM HashTable_21 WHERE HashBin = HashBin_21
 		UNION ALL
 		SELECT * FROM HashTable_22 WHERE HashBin = HashBin_22
 		UNION ALL
 		SELECT * FROM HashTable_23 WHERE HashBin = HashBin_23
 		UNION ALL
 		SELECT * FROM HashTable_24 WHERE HashBin = HashBin_24
 		UNION ALL
 		SELECT * FROM HashTable_25 WHERE HashBin = HashBin_25
 	  ) AS Hashes
 	 GROUP BY Hashes.SubFingerprintId
 	 HAVING COUNT(Hashes.SubFingerprintId) >= Threshold
 	) AS Thresholded
 WHERE SubFingerprints.Id = Thresholded.SubFingerprintId;
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadSubFingerprintsByHashBinHashTableAndThresholdWithGroupId
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

 CREATE PROCEDURE sp_ReadSubFingerprintsByHashBinHashTableAndThresholdWithGroupId(
 	HashBin_1 BIGINT, HashBin_2 BIGINT, HashBin_3 BIGINT, HashBin_4 BIGINT, HashBin_5 BIGINT, 
 	HashBin_6 BIGINT, HashBin_7 BIGINT, HashBin_8 BIGINT, HashBin_9 BIGINT, HashBin_10 BIGINT,
 	HashBin_11 BIGINT, HashBin_12 BIGINT, HashBin_13 BIGINT, HashBin_14 BIGINT, HashBin_15 BIGINT, 
 	HashBin_16 BIGINT, HashBin_17 BIGINT, HashBin_18 BIGINT, HashBin_19 BIGINT, HashBin_20 BIGINT,
 	HashBin_21 BIGINT, HashBin_22 BIGINT, HashBin_23 BIGINT, HashBin_24 BIGINT, HashBin_25 BIGINT,
 	Threshold INT, GroupId VARCHAR(20)
)BEGIN

 SELECT SubFingerprints.Id, SubFingerprints.TrackId, SubFingerprints.Signature, SubFingerprints.SequenceNumber, SubFingerprints.SequenceAt
 FROM SubFingerprints INNER JOIN
 	( SELECT Hashes.SubFingerprintId as SubFingerprintId FROM 
 	   (
 	    SELECT * FROM HashTable_1 WHERE HashBin = HashBin_1
 		UNION ALL
 		SELECT * FROM HashTable_2 WHERE HashBin = HashBin_2
 		UNION ALL
 		SELECT * FROM HashTable_3 WHERE HashBin = HashBin_3
 		UNION ALL
 		SELECT * FROM HashTable_4 WHERE HashBin = HashBin_4
 		UNION ALL
 		SELECT * FROM HashTable_5 WHERE HashBin = HashBin_5
 		UNION ALL
 		SELECT * FROM HashTable_6 WHERE HashBin = HashBin_6
 		UNION ALL
 		SELECT * FROM HashTable_7 WHERE HashBin = HashBin_7
 		UNION ALL
 		SELECT * FROM HashTable_8 WHERE HashBin = HashBin_8
 		UNION ALL
 		SELECT * FROM HashTable_9 WHERE HashBin = HashBin_9
 		UNION ALL
 		SELECT * FROM HashTable_10 WHERE HashBin = HashBin_10
 		UNION ALL
 		SELECT * FROM HashTable_11 WHERE HashBin = HashBin_11
 		UNION ALL
 		SELECT * FROM HashTable_12 WHERE HashBin = HashBin_12
 		UNION ALL
 		SELECT * FROM HashTable_13 WHERE HashBin = HashBin_13
 		UNION ALL
 		SELECT * FROM HashTable_14 WHERE HashBin = HashBin_14
 		UNION ALL
 		SELECT * FROM HashTable_15 WHERE HashBin = HashBin_15
 		UNION ALL
 		SELECT * FROM HashTable_16 WHERE HashBin = HashBin_16
 		UNION ALL
 		SELECT * FROM HashTable_17 WHERE HashBin = HashBin_17
 		UNION ALL
 		SELECT * FROM HashTable_18 WHERE HashBin = HashBin_18
 		UNION ALL
 		SELECT * FROM HashTable_19 WHERE HashBin = HashBin_19
 		UNION ALL
 		SELECT * FROM HashTable_20 WHERE HashBin = HashBin_20
 		UNION ALL
 		SELECT * FROM HashTable_21 WHERE HashBin = HashBin_21
 		UNION ALL
 		SELECT * FROM HashTable_22 WHERE HashBin = HashBin_22
 		UNION ALL
 		SELECT * FROM HashTable_23 WHERE HashBin = HashBin_23
 		UNION ALL
 		SELECT * FROM HashTable_24 WHERE HashBin = HashBin_24
 		UNION ALL
 		SELECT * FROM HashTable_25 WHERE HashBin = HashBin_25
 	  ) AS Hashes
 	 GROUP BY Hashes.SubFingerprintId
 	 HAVING COUNT(Hashes.SubFingerprintId) >= Threshold
 	) AS Thresholded ON SubFingerprints.Id = Thresholded.SubFingerprintId	
 INNER JOIN Tracks ON SubFingerprints.TrackId = Tracks.Id AND Tracks.GroupId = GroupId;
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadHashDataByTrackId
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

CREATE PROCEDURE sp_ReadHashDataByTrackId
(
 	IN TrackId INT
)
 BEGIN
 SELECT SubFingerprints.Signature as Signature, SubFingerprints.SequenceNumber as SequenceNumber, SubFingerprints.SequenceAt as SequenceAt, HashTable_1.SubFingerprintId as SubFingerprintId, HashTable_1.HashBin as HashBin_1, HashTable_2.HashBin as HashBin_2, HashTable_3.HashBin as HashBin_3, HashTable_4.HashBin as HashBin_4, HashTable_5.HashBin as HashBin_5,
        HashTable_6.HashBin as HashBin_6, HashTable_7.HashBin as HashBin_7, HashTable_8.HashBin as HashBin_8, HashTable_9.HashBin as HashBin_9, HashTable_10.HashBin as HashBin_10,
        HashTable_11.HashBin as HashBin_11, HashTable_12.HashBin as HashBin_12, HashTable_13.HashBin as HashBin_13, HashTable_14.HashBin as HashBin_14, HashTable_15.HashBin as HashBin_15,
        HashTable_16.HashBin as HashBin_16, HashTable_17.HashBin as HashBin_17, HashTable_18.HashBin as HashBin_18, HashTable_19.HashBin as HashBin_19, HashTable_20.HashBin as HashBin_20,
        HashTable_21.HashBin as HashBin_21, HashTable_22.HashBin as HashBin_22, HashTable_23.HashBin as HashBin_23, HashTable_24.HashBin as HashBin_24, HashTable_25.HashBin as HashBin_25
 	   FROM HashTable_1 
 					 INNER JOIN HashTable_2 ON HashTable_1.SubFingerprintId = HashTable_2.SubFingerprintId
 					 INNER JOIN HashTable_3 ON HashTable_1.SubFingerprintId = HashTable_3.SubFingerprintId
 					 INNER JOIN HashTable_4 ON HashTable_1.SubFingerprintId = HashTable_4.SubFingerprintId 
 					 INNER JOIN HashTable_5 ON HashTable_1.SubFingerprintId = HashTable_5.SubFingerprintId
 					 INNER JOIN HashTable_6 ON HashTable_1.SubFingerprintId = HashTable_6.SubFingerprintId
 					 INNER JOIN HashTable_7 ON HashTable_1.SubFingerprintId = HashTable_7.SubFingerprintId
 					 INNER JOIN HashTable_8 ON HashTable_1.SubFingerprintId = HashTable_8.SubFingerprintId
 					 INNER JOIN HashTable_9 ON HashTable_1.SubFingerprintId = HashTable_9.SubFingerprintId
 					 INNER JOIN HashTable_10 ON HashTable_1.SubFingerprintId = HashTable_10.SubFingerprintId
 					 INNER JOIN HashTable_11 ON HashTable_1.SubFingerprintId = HashTable_11.SubFingerprintId
 					 INNER JOIN HashTable_12 ON HashTable_1.SubFingerprintId = HashTable_12.SubFingerprintId
 					 INNER JOIN HashTable_13 ON HashTable_1.SubFingerprintId = HashTable_13.SubFingerprintId
 					 INNER JOIN HashTable_14 ON HashTable_1.SubFingerprintId = HashTable_14.SubFingerprintId
 					 INNER JOIN HashTable_15 ON HashTable_1.SubFingerprintId = HashTable_15.SubFingerprintId
 					 INNER JOIN HashTable_16 ON HashTable_1.SubFingerprintId = HashTable_16.SubFingerprintId
 					 INNER JOIN HashTable_17 ON HashTable_1.SubFingerprintId = HashTable_17.SubFingerprintId
 					 INNER JOIN HashTable_18 ON HashTable_1.SubFingerprintId = HashTable_18.SubFingerprintId
 					 INNER JOIN HashTable_19 ON HashTable_1.SubFingerprintId = HashTable_19.SubFingerprintId
 					 INNER JOIN HashTable_20 ON HashTable_1.SubFingerprintId = HashTable_20.SubFingerprintId
 					 INNER JOIN HashTable_21 ON HashTable_1.SubFingerprintId = HashTable_21.SubFingerprintId
 					 INNER JOIN HashTable_22 ON HashTable_1.SubFingerprintId = HashTable_22.SubFingerprintId
 					 INNER JOIN HashTable_23 ON HashTable_1.SubFingerprintId = HashTable_23.SubFingerprintId
 					 INNER JOIN HashTable_24 ON HashTable_1.SubFingerprintId = HashTable_24.SubFingerprintId
 					 INNER JOIN HashTable_25 ON HashTable_1.SubFingerprintId = HashTable_25.SubFingerprintId
 					 INNER JOIN SubFingerprints ON HashTable_1.SubFingerprintId = SubFingerprints.Id
 					 WHERE SubFingerprints.TrackId = TrackId;
 END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadTrackByArtistAndSongName
 ----------------------------------------------------------------------------
 DELIMITER $$

 CREATE PROCEDURE sp_ReadTrackByArtistAndSongName
(
 	IN Artist VARCHAR(255),
 	IN Title VARCHAR(255) 
)
BEGIN
 SELECT * FROM Tracks WHERE Tracks.Title = Title AND Tracks.Artist = Artist;
END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_ReadTrackISRC
 ----------------------------------------------------------------------------
 DELIMITER $$
 
 DELIMITER $$

 CREATE PROCEDURE sp_ReadTrackISRC
 (
 	IN ISRC VARCHAR(50)
)
BEGIN
 SELECT * FROM Tracks WHERE Tracks.ISRC = ISRC;
END$$
 
 DELIMITER ;
 
 ----------------------------------------------------------------------------
 -- Routine FingerprintsDb.sp_DeleteTrack
 ----------------------------------------------------------------------------
 DELIMITER $$

 CREATE PROCEDURE sp_DeleteTrack
(
 	IN Id INT
)
 BEGIN
 	DELETE HashTable_1 FROM HashTable_1 INNER JOIN SubFingerprints ON HashTable_1.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_2 FROM HashTable_2 INNER JOIN SubFingerprints ON HashTable_2.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_3 FROM HashTable_3 INNER JOIN SubFingerprints ON HashTable_3.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_4 FROM HashTable_4 INNER JOIN SubFingerprints ON HashTable_4.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_5 FROM HashTable_5 INNER JOIN SubFingerprints ON HashTable_5.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_6 FROM HashTable_6 INNER JOIN SubFingerprints ON HashTable_6.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_7 FROM HashTable_7 INNER JOIN SubFingerprints ON HashTable_7.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_8 FROM HashTable_8 INNER JOIN SubFingerprints ON HashTable_8.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_9 FROM HashTable_9 INNER JOIN SubFingerprints ON HashTable_9.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_10 FROM HashTable_10 INNER JOIN SubFingerprints ON HashTable_10.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_11 FROM HashTable_11 INNER JOIN SubFingerprints ON HashTable_11.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_12 FROM HashTable_12 INNER JOIN SubFingerprints ON HashTable_12.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_13 FROM HashTable_13 INNER JOIN SubFingerprints ON HashTable_13.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_14 FROM HashTable_14 INNER JOIN SubFingerprints ON HashTable_14.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_15 FROM HashTable_15 INNER JOIN SubFingerprints ON HashTable_15.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_16 FROM HashTable_16 INNER JOIN SubFingerprints ON HashTable_16.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_17 FROM HashTable_17 INNER JOIN SubFingerprints ON HashTable_17.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_18 FROM HashTable_18 INNER JOIN SubFingerprints ON HashTable_18.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_19 FROM HashTable_19 INNER JOIN SubFingerprints ON HashTable_19.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_20 FROM HashTable_20 INNER JOIN SubFingerprints ON HashTable_20.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_21 FROM HashTable_21 INNER JOIN SubFingerprints ON HashTable_21.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_22 FROM HashTable_22 INNER JOIN SubFingerprints ON HashTable_22.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_23 FROM HashTable_23 INNER JOIN SubFingerprints ON HashTable_23.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_24 FROM HashTable_24 INNER JOIN SubFingerprints ON HashTable_24.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE HashTable_25 FROM HashTable_25 INNER JOIN SubFingerprints ON HashTable_25.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = Id;
 	DELETE FROM SubFingerprints WHERE SubFingerprints.TrackId = Id;
 	DELETE FROM Tracks WHERE Tracks.Id = Id;
 END$$
 
 DELIMITER ;
 
 DELIMITER ;
 SET FOREIGN_KEY_CHECKS = 1;
