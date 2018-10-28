CREATE TABLE dbo.DTGameLog
(
	TimeStamp		CHAR(8) NOT NULL,
	LogID			INT IDENTITY(1, 1) NOT NULL,	
	TournamentType	TINYINT	NOT NULL,
	ChampCID		INT,	
	StartTime		DATETIME NOT NULL,
	EndTime			DATETIME,
	MatchFactor		TINYINT,
	Player1CID		INT,
	Player2CID		INT,
	Player3CID		INT,
	Player4CID		INT,
	Player5CID		INT,
	Player6CID		INT,
	Player7CID		INT,
	Player8CID		INT
			
	CONSTRAINT DTGameLog_PK PRIMARY KEY CLUSTERED (TimeStamp ASC, LogID ASC)
)
ALTER TABLE dbo.DTGameLog WITH CHECK ADD 
CONSTRAINT DTTimeStamp_DTGameLog_FK1 FOREIGN KEY (TimeStamp)
REFERENCES dbo.DTTimeStamp(TimeStamp)

ALTER TABLE dbo.DTGameLog CHECK CONSTRAINT DTTimeStamp_DTGameLog_FK1
