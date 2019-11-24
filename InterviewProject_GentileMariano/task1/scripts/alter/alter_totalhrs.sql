use rga;
go
ALTER TABLE dbo.hours_t
	ADD TotalWorkHrs AS AdminHrs1 + AdminHrs2 + AdminHrs3 + ClientHrs1 + ClientHrs2 + ClientHrs3 
	PERSISTED