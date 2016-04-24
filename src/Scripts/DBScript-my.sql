
-- TABLE WHICH WILL CONTAIN TRACK METADATA
CREATE TABLE Tracks
(
	Id INT AUTO_INCREMENT NOT NULL,
	ISRC VARCHAR(50),
	Artist VARCHAR(255),
	Title VARCHAR(255),
	Album VARCHAR(255),
	ReleaseYear INT DEFAULT 0,
	TrackLengthSec FLOAT DEFAULT 0,
	GroupId VARCHAR(20),
    CONSTRAINT PK_TracksId PRIMARY KEY(Id)
)
; 
-- TABLE WHICH CONTAINS ALL THE INFORMATION RELATED TO SUB-FINGERPRINTS
-- USED BY LSH+MINHASH SCHEMA
CREATE TABLE SubFingerprints
(
	Id BIGINT AUTO_INCREMENT NOT NULL,
	Signature VARBINARY(100) NOT NULL,
	TrackId INT NOT NULL,
	SequenceNumber INT NOT NULL,
	SequenceAt FLOAT NOT NULL,
    CONSTRAINT PK_SubFingerprintsId PRIMARY KEY(Id)
)
;
-- TABLE FOR FINGERPRINTS (NEURAL NASHER)
CREATE TABLE Fingerprints
(
	Id INT AUTO_INCREMENT NOT NULL,
	Signature VARBINARY(4096) NOT NULL,
	TrackId INT NOT NULL,
    CONSTRAINT PK_FingerprintsId PRIMARY KEY(Id)
)
;
CREATE TABLE HashTable_1
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_1 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_2
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_2 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_3
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_3 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_4
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_4 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_5
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_5 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_6
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_6 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_7
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_7 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_8
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_8 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_9
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_9 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_10
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_10 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_11
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_11 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_12
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_12 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_13
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_13 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_14
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_14 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_15
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_15 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_16
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_16 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_17
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
    CONSTRAINT PK_HashBinsMinHashId_17 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_18
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_18 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_19
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_19 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_20
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_20 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_21
(	
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_21 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_22
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_22 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_23
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_23 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_24
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_24 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
CREATE TABLE HashTable_25
(
	HashBin BIGINT NOT NULL,								    
	SubFingerprintId BIGINT NOT NULL,
	CONSTRAINT PK_HashBinsMinHashId_25 PRIMARY KEY(HashBin, SubFingerprintId)
)
;
-- TABLE INDEXES
CREATE INDEX IX_TrackIdLookup ON Fingerprints(TrackId) 
;
CREATE INDEX IX_TrackIdLookupOnSubfingerprints ON SubFingerprints(TrackId) 
;


DELIMITER $$

CREATE PROCEDURE sp_InsertTrack(
	IN ISRC VARCHAR(50),
	IN Artist VARCHAR(255),
	IN Title VARCHAR(255),
	IN Album VARCHAR(255),
	IN ReleaseYear INT,
	IN TrackLengthSec FLOAT,
	IN GroupId VARCHAR(20),
    OUT Id INT)
BEGIN
INSERT INTO Tracks (
	ISRC,
	Artist,
	Title,
	Album,
	ReleaseYear,
	TrackLengthSec,
	GroupId
	)
VALUES (@ISRC, @Artist, @Title, @Album, @ReleaseYear, @TrackLengthSec, @GroupId);
SET Id = LAST_INSERT_ID();
END$$


CREATE PROCEDURE sp_InsertSubFingerprint
	@Signature VARBINARY(100),
	@TrackId INT,
	@SequenceNumber INT,
	@SequenceAt FLOAT
AS
BEGIN
INSERT INTO SubFingerprints (
	Signature,
	TrackId,
	SequenceNumber,
	SequenceAt
	) OUTPUT inserted.Id
VALUES
(
	@Signature, @TrackId, @SequenceNumber, @SequenceAt
);
END
;
-- INSERT A FINGERPRINT INTO FINGERPRINTS TABLE USED BY NEURAL HASHER

CREATE PROCEDURE sp_InsertFingerprint
	@Signature VARBINARY(4096),
	@TrackId INT
AS
BEGIN
INSERT INTO Fingerprints (
	Signature,
	TrackId
	) OUTPUT inserted.Id
VALUES
(
	@Signature, @TrackId
);
END
;
-- READ ALL TRACKS FROM THE DATABASE

CREATE PROCEDURE sp_ReadTracks
AS
SELECT * FROM Tracks
;
-- READ A TRACK BY ITS IDENTIFIER

CREATE PROCEDURE sp_ReadTrackById
	@Id INT
AS
SELECT * FROM Tracks WHERE Tracks.Id = @Id
;
-- READ SUBFINGERPRINT

CREATE PROCEDURE sp_ReadSubFingerprintById
	@Id INT
AS
BEGIN
	SELECT * FROM SubFingerprints WHERE Id = @Id
END
;
-- READ FINGERPRINTS BY TRACK ID

CREATE PROCEDURE sp_ReadFingerprintByTrackId
	@TrackId INT
AS
BEGIN
	SELECT * FROM Fingerprints WHERE TrackId = @TrackId
END
;
--- ------------------------------------------------------------------------------------------------------------
--- READ HASHBINS BY HASHBINS AND THRESHOLD TABLE
--- ADDED 20.10.2013 CIUMAC SERGIU
--- E.g. `25;36;89;56...`
--- -----------------------------------------------------------------------------------------------------------

CREATE PROCEDURE sp_ReadFingerprintsByHashBinHashTableAndThreshold
	@HashBin_1 BIGINT, @HashBin_2 BIGINT, @HashBin_3 BIGINT, @HashBin_4 BIGINT, @HashBin_5 BIGINT, 
	@HashBin_6 BIGINT, @HashBin_7 BIGINT, @HashBin_8 BIGINT, @HashBin_9 BIGINT, @HashBin_10 BIGINT,
	@HashBin_11 BIGINT, @HashBin_12 BIGINT, @HashBin_13 BIGINT, @HashBin_14 BIGINT, @HashBin_15 BIGINT, 
	@HashBin_16 BIGINT, @HashBin_17 BIGINT, @HashBin_18 BIGINT, @HashBin_19 BIGINT, @HashBin_20 BIGINT,
	@HashBin_21 BIGINT, @HashBin_22 BIGINT, @HashBin_23 BIGINT, @HashBin_24 BIGINT, @HashBin_25 BIGINT,
	@Threshold INT
AS
SELECT SubFingerprints.Id, SubFingerprints.TrackId, SubFingerprints.Signature, SubFingerprints.SequenceNumber, SubFingerprints.SequenceAt
FROM SubFingerprints, 
	( SELECT Hashes.SubFingerprintId as SubFingerprintId FROM 
	   (
		SELECT * FROM HashTable_1 WHERE HashBin = @HashBin_1
		UNION ALL
		SELECT * FROM HashTable_2 WHERE HashBin = @HashBin_2
		UNION ALL
		SELECT * FROM HashTable_3 WHERE HashBin = @HashBin_3
		UNION ALL
		SELECT * FROM HashTable_4 WHERE HashBin = @HashBin_4
		UNION ALL
		SELECT * FROM HashTable_5 WHERE HashBin = @HashBin_5
		UNION ALL
		SELECT * FROM HashTable_6 WHERE HashBin = @HashBin_6
		UNION ALL
		SELECT * FROM HashTable_7 WHERE HashBin = @HashBin_7
		UNION ALL
		SELECT * FROM HashTable_8 WHERE HashBin = @HashBin_8
		UNION ALL
		SELECT * FROM HashTable_9 WHERE HashBin = @HashBin_9
		UNION ALL
		SELECT * FROM HashTable_10 WHERE HashBin = @HashBin_10
		UNION ALL
		SELECT * FROM HashTable_11 WHERE HashBin = @HashBin_11
		UNION ALL
		SELECT * FROM HashTable_12 WHERE HashBin = @HashBin_12
		UNION ALL
		SELECT * FROM HashTable_13 WHERE HashBin = @HashBin_13
		UNION ALL
		SELECT * FROM HashTable_14 WHERE HashBin = @HashBin_14
		UNION ALL
		SELECT * FROM HashTable_15 WHERE HashBin = @HashBin_15
		UNION ALL
		SELECT * FROM HashTable_16 WHERE HashBin = @HashBin_16
		UNION ALL
		SELECT * FROM HashTable_17 WHERE HashBin = @HashBin_17
		UNION ALL
		SELECT * FROM HashTable_18 WHERE HashBin = @HashBin_18
		UNION ALL
		SELECT * FROM HashTable_19 WHERE HashBin = @HashBin_19
		UNION ALL
		SELECT * FROM HashTable_20 WHERE HashBin = @HashBin_20
		UNION ALL
		SELECT * FROM HashTable_21 WHERE HashBin = @HashBin_21
		UNION ALL
		SELECT * FROM HashTable_22 WHERE HashBin = @HashBin_22
		UNION ALL
		SELECT * FROM HashTable_23 WHERE HashBin = @HashBin_23
		UNION ALL
		SELECT * FROM HashTable_24 WHERE HashBin = @HashBin_24
		UNION ALL
		SELECT * FROM HashTable_25 WHERE HashBin = @HashBin_25
	  ) AS Hashes
	 GROUP BY Hashes.SubFingerprintId
	 HAVING COUNT(Hashes.SubFingerprintId) >= @Threshold
	) AS Thresholded
WHERE SubFingerprints.Id = Thresholded.SubFingerprintId	
;

CREATE PROCEDURE sp_ReadSubFingerprintsByHashBinHashTableAndThresholdWithGroupId
	@HashBin_1 BIGINT, @HashBin_2 BIGINT, @HashBin_3 BIGINT, @HashBin_4 BIGINT, @HashBin_5 BIGINT, 
	@HashBin_6 BIGINT, @HashBin_7 BIGINT, @HashBin_8 BIGINT, @HashBin_9 BIGINT, @HashBin_10 BIGINT,
	@HashBin_11 BIGINT, @HashBin_12 BIGINT, @HashBin_13 BIGINT, @HashBin_14 BIGINT, @HashBin_15 BIGINT, 
	@HashBin_16 BIGINT, @HashBin_17 BIGINT, @HashBin_18 BIGINT, @HashBin_19 BIGINT, @HashBin_20 BIGINT,
	@HashBin_21 BIGINT, @HashBin_22 BIGINT, @HashBin_23 BIGINT, @HashBin_24 BIGINT, @HashBin_25 BIGINT,
	@Threshold INT, @GroupId VARCHAR(20)
AS
SELECT SubFingerprints.Id, SubFingerprints.TrackId, SubFingerprints.Signature, SubFingerprints.SequenceNumber, SubFingerprints.SequenceAt
FROM SubFingerprints INNER JOIN
	( SELECT Hashes.SubFingerprintId as SubFingerprintId FROM 
	   (
	    SELECT * FROM HashTable_1 WHERE HashBin = @HashBin_1
		UNION ALL
		SELECT * FROM HashTable_2 WHERE HashBin = @HashBin_2
		UNION ALL
		SELECT * FROM HashTable_3 WHERE HashBin = @HashBin_3
		UNION ALL
		SELECT * FROM HashTable_4 WHERE HashBin = @HashBin_4
		UNION ALL
		SELECT * FROM HashTable_5 WHERE HashBin = @HashBin_5
		UNION ALL
		SELECT * FROM HashTable_6 WHERE HashBin = @HashBin_6
		UNION ALL
		SELECT * FROM HashTable_7 WHERE HashBin = @HashBin_7
		UNION ALL
		SELECT * FROM HashTable_8 WHERE HashBin = @HashBin_8
		UNION ALL
		SELECT * FROM HashTable_9 WHERE HashBin = @HashBin_9
		UNION ALL
		SELECT * FROM HashTable_10 WHERE HashBin = @HashBin_10
		UNION ALL
		SELECT * FROM HashTable_11 WHERE HashBin = @HashBin_11
		UNION ALL
		SELECT * FROM HashTable_12 WHERE HashBin = @HashBin_12
		UNION ALL
		SELECT * FROM HashTable_13 WHERE HashBin = @HashBin_13
		UNION ALL
		SELECT * FROM HashTable_14 WHERE HashBin = @HashBin_14
		UNION ALL
		SELECT * FROM HashTable_15 WHERE HashBin = @HashBin_15
		UNION ALL
		SELECT * FROM HashTable_16 WHERE HashBin = @HashBin_16
		UNION ALL
		SELECT * FROM HashTable_17 WHERE HashBin = @HashBin_17
		UNION ALL
		SELECT * FROM HashTable_18 WHERE HashBin = @HashBin_18
		UNION ALL
		SELECT * FROM HashTable_19 WHERE HashBin = @HashBin_19
		UNION ALL
		SELECT * FROM HashTable_20 WHERE HashBin = @HashBin_20
		UNION ALL
		SELECT * FROM HashTable_21 WHERE HashBin = @HashBin_21
		UNION ALL
		SELECT * FROM HashTable_22 WHERE HashBin = @HashBin_22
		UNION ALL
		SELECT * FROM HashTable_23 WHERE HashBin = @HashBin_23
		UNION ALL
		SELECT * FROM HashTable_24 WHERE HashBin = @HashBin_24
		UNION ALL
		SELECT * FROM HashTable_25 WHERE HashBin = @HashBin_25
	  ) AS Hashes
	 GROUP BY Hashes.SubFingerprintId
	 HAVING COUNT(Hashes.SubFingerprintId) >= @Threshold
	) AS Thresholded ON SubFingerprints.Id = Thresholded.SubFingerprintId	
INNER JOIN Tracks ON SubFingerprints.TrackId = Tracks.Id AND Tracks.GroupId = @GroupId
;
CREATE PROCEDURE sp_ReadHashDataByTrackId
	@TrackId INT
AS
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
					 WHERE SubFingerprints.TrackId = @TrackId
END					 
-- READ TRACK BY ARTIST NAME AND SONG NAME

CREATE PROCEDURE sp_ReadTrackByArtistAndSongName
	@Artist VARCHAR(255),
	@Title VARCHAR(255) 
AS
SELECT * FROM Tracks WHERE Tracks.Title = @Title AND Tracks.Artist = @Artist
;
-- READ TRACK BY ISRC

CREATE PROCEDURE sp_ReadTrackISRC
	@ISRC VARCHAR(50)
AS
SELECT * FROM Tracks WHERE Tracks.ISRC = @ISRC
;
-- DELETE TRACK

CREATE PROCEDURE sp_DeleteTrack
	@Id INT
AS
BEGIN
	DELETE HashTable_1 FROM HashTable_1 INNER JOIN SubFingerprints ON HashTable_1.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_2 FROM HashTable_2 INNER JOIN SubFingerprints ON HashTable_2.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_3 FROM HashTable_3 INNER JOIN SubFingerprints ON HashTable_3.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_4 FROM HashTable_4 INNER JOIN SubFingerprints ON HashTable_4.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_5 FROM HashTable_5 INNER JOIN SubFingerprints ON HashTable_5.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_6 FROM HashTable_6 INNER JOIN SubFingerprints ON HashTable_6.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_7 FROM HashTable_7 INNER JOIN SubFingerprints ON HashTable_7.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_8 FROM HashTable_8 INNER JOIN SubFingerprints ON HashTable_8.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_9 FROM HashTable_9 INNER JOIN SubFingerprints ON HashTable_9.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_10 FROM HashTable_10 INNER JOIN SubFingerprints ON HashTable_10.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_11 FROM HashTable_11 INNER JOIN SubFingerprints ON HashTable_11.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_12 FROM HashTable_12 INNER JOIN SubFingerprints ON HashTable_12.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_13 FROM HashTable_13 INNER JOIN SubFingerprints ON HashTable_13.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_14 FROM HashTable_14 INNER JOIN SubFingerprints ON HashTable_14.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_15 FROM HashTable_15 INNER JOIN SubFingerprints ON HashTable_15.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_16 FROM HashTable_16 INNER JOIN SubFingerprints ON HashTable_16.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_17 FROM HashTable_17 INNER JOIN SubFingerprints ON HashTable_17.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_18 FROM HashTable_18 INNER JOIN SubFingerprints ON HashTable_18.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_19 FROM HashTable_19 INNER JOIN SubFingerprints ON HashTable_19.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_20 FROM HashTable_20 INNER JOIN SubFingerprints ON HashTable_20.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_21 FROM HashTable_21 INNER JOIN SubFingerprints ON HashTable_21.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_22 FROM HashTable_22 INNER JOIN SubFingerprints ON HashTable_22.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_23 FROM HashTable_23 INNER JOIN SubFingerprints ON HashTable_23.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_24 FROM HashTable_24 INNER JOIN SubFingerprints ON HashTable_24.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE HashTable_25 FROM HashTable_25 INNER JOIN SubFingerprints ON HashTable_25.SubFingerprintId = SubFingerprints.Id AND SubFingerprints.TrackId = @Id
	DELETE FROM SubFingerprints WHERE SubFingerprints.TrackId = @Id
	DELETE FROM Tracks WHERE Tracks.Id = @Id
END
;
