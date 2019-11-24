use rga;
go

WITH cte AS (
    SELECT 
        User_ID, Attribute_Group, Attribute_SubGroup, Attribute_Name, Attribute_Level, 
		Attribute_Verified, SkillsLevel_Cat, 
        ROW_NUMBER() OVER (
            PARTITION BY 
                User_ID, Attribute_Group, Attribute_SubGroup, Attribute_Name, Attribute_Level, 
				Attribute_Verified, SkillsLevel_Cat
            ORDER BY 
                User_ID, Attribute_Group, Attribute_SubGroup, Attribute_Name, Attribute_Level, 
				Attribute_Verified, SkillsLevel_Cat
        ) row_num
     FROM 
        dbo.skills
)
DELETE FROM cte
WHERE row_num > 1;