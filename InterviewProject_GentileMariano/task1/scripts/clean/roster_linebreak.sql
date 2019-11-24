SELECT 'ROSTER' as TBL, User_ID, Fullname
	FROM dbo.roster 
	WHERE Fullname LIKE '%' + CHAR(10) + '%'
	OR Fullname LIKE '%' + CHAR(13) + '%'