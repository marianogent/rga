use rga;
go
ALTER TABLE dbo.hours_t
ADD TargetHrsEmp AS (ROUND(cast(datediff(day, dateadd(day, 1-day(Date), Date), 
dateadd(month, 1, dateadd(day, 1-day(Date), Date))) AS FLOAT) / 7, 2) *40) PERSISTED