use rga;
go
ALTER TABLE dbo.hours_t
ADD AdminHrs AS AdminHrs1 + AdminHrs2 + AdminHrs3 PERSISTED