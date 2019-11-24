SELECT 'SKILLS' as TBL, User_ID, Attribute_Group,Attribute_SubGroup, Attribute_Name
	FROM dbo.skills
	WHERE Attribute_Group LIKE '%' + CHAR(10) + '%'
	OR Attribute_Group LIKE '%' + CHAR(13) + '%'
	OR Attribute_SubGroup LIKE '%' + CHAR(13) + '%'
	OR Attribute_SubGroup LIKE '%' + CHAR(13) + '%'
	OR Attribute_Name LIKE '%' + CHAR(13) + '%'
	OR Attribute_Name LIKE '%' + CHAR(13) + '%'