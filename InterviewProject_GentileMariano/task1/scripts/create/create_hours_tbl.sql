USE [rga]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hours_t](
	[Date] [date] NOT NULL ,
	[UserId] [int] NOT NULL,
	[AdminHrs1] [float] NOT NULL,
	[AdminHrs2] [float] NOT NULL,
	[AdminHrs3] [float] NOT NULL,
	[ClientHrs1] [float] NOT NULL,
	[ClientHrs2] [float] NOT NULL,
	[ClientHrs3] [float] NOT NULL,
	[TargetClientHrs] [float] NOT NULL,
) ON [PRIMARY];

SET DATEFORMAT DMY;
bulk insert dbo.hours_t
   from 'C:\Users\MARIANOGENTILE\Desktop\RGA\test_DA_MG\datasources\hours.csv'
   with( firstrow = 2,
         fieldterminator = ',',
         rowterminator = '\n');
GO