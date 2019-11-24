use rga;
go
ALTER TABLE dbo.hours_t
ADD ClientTime AS 
case (ClientHrs1+ClientHrs2+ClientHrs3+AdminHrs1+AdminHrs2+AdminHrs3)
when 0 then 0
else cast(((ClientHrs1+ClientHrs2+ClientHrs3) /
(ClientHrs1+ClientHrs2+ClientHrs3+AdminHrs1+AdminHrs2+AdminHrs3))*100 as decimal(6,2))
end PERSISTED