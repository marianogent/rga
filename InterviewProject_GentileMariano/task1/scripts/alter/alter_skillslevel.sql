use rga;
go
ALTER TABLE dbo.skills
ADD SkillsLevel_Cat AS 
case Attribute_Level
	when 0 then 'Wants to learn'
	when 1 then 'Heavy Supervision'
	when 2 then 'Heavy Supervision'
	when 3 then 'Light Supervision'
	when 4 then 'Light Supervision'
	when 5 then 'Expert'
	else 'NA'
end PERSISTED