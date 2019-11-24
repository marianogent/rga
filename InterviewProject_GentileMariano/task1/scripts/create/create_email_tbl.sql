USE [rga]
GO

/****** Object:  Table [dbo].[email_data]    Script Date: 14/11/2019 23:55:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='email_data' and xtype='U')
	CREATE TABLE [dbo].[email_data](
		[from_ID] [int] NOT NULL,
		[to_ID] [int] NOT NULL
	) ON [PRIMARY]
GO

bulk insert dbo.email_data
   from 'C:\Users\MARIANOGENTILE\Desktop\RGA\test_DA_MG\datasources\Email_Data.txt'
   with( firstrow = 2,
         fieldterminator = '\t',
         rowterminator = '\n')
		 ;
GO