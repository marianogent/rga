DECLARE @tb nvarchar(512) = N'dbo.hours_t';
DECLARE @sql nvarchar(max) = N'SELECT * FROM ' + @tb
    + ' WHERE 1 = 0';
SELECT @sql += N' OR rtrim(ltrim(' + QUOTENAME(name) + ')) not like '+QUOTENAME(name)
    FROM sys.columns 
    WHERE [object_id] = OBJECT_ID(@tb);
EXEC sys.sp_executesql @sql;