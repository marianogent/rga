use rga;
go
ALTER TABLE dbo.hours_t
ADD Utilization AS 
case round(((ROUND(cast(datediff(day, dateadd(day, 1-day(Date), Date), 
dateadd(month, 1, dateadd(day, 1-day(Date), Date))) AS FLOAT) / 7, 2) *40)-(AdminHrs1+
AdminHrs2+AdminHrs3)),2)
when 0 then (ClientHrs1+ClientHrs2+ClientHrs3)
else round((((ClientHrs1+ClientHrs2+ClientHrs3) /
(((cast(datediff(day, dateadd(day, 1-day(Date), Date), 
dateadd(month, 1, dateadd(day, 1-day(Date), Date))) AS FLOAT) / 7) *40)-(AdminHrs1+
AdminHrs2+AdminHrs3)))*100),2,6)
end PERSISTED