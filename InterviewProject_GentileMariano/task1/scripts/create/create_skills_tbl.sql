USE [rga]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='skills' and xtype='U')
	CREATE TABLE [dbo].[skills](
		[User_ID] [int] NOT NULL,
		[Attribute_Group] [nvarchar](25) ,
		[Attribute_SubGroup] [nvarchar](50) ,
		[Attribute_Type] [nvarchar](10),
		[Attribute_Name] [nvarchar](50),
		[Attribute_Level] [int],
		[Attribute_Verified] [nvarchar](10),
	) ;


bulk insert dbo.skills
   from 'C:\Users\MARIANOGENTILE\Desktop\RGA\test_DA_MG\datasources\skills.csv'
   with( firstrow = 2,
         fieldterminator = ',',
         rowterminator = '\n',
		 FORMAT = 'CSV')
		 ;
GO