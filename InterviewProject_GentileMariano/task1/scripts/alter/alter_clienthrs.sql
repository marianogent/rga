use rga;
go
ALTER TABLE dbo.hours_t
ADD ClientHrs AS ClientHrs1 + ClientHrs2 + ClientHrs3 PERSISTED