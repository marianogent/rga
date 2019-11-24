USE [rga]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[roster](
	[User_ID] [int] NOT NULL PRIMARY KEY,
	[Email_ID] [int] NOT NULL,
	[Title] [int] NOT NULL,
	[Fullname] [nvarchar](255) NULL,
	[Department] [nvarchar](255) NULL,
	[Gender] [nvarchar](255) NULL,
	[Office] [int] NOT NULL,
	[Region] [int] NOT NULL,
	[Tenure_Yrs] [float] NULL,
	[Seniority] [int] NULL,
	[Rating] [float] NULL,
	[Survey_Score] [float] NULL,
	[Promotion] [int] NULL,
	[Avg_Hrs] [float] NULL
) ON [PRIMARY];


bulk insert dbo.roster
   from 'C:\Users\MARIANOGENTILE\Desktop\RGA\test_DA_MG\datasources\Roster_Data_NS.csv'
   with( firstrow = 2,
         fieldterminator = ',',
         rowterminator = '\n');
GO