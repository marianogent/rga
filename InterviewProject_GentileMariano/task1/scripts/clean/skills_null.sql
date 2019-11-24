DECLARE @tb nvarchar(512) = N'dbo.skills';
DECLARE @sql nvarchar(max) = N'SELECT * FROM ' + @tb
    + ' WHERE 1 = 0';
SELECT @sql += N' OR ' + QUOTENAME(name) + ' IS NULL'
    FROM sys.columns 
    WHERE [object_id] = OBJECT_ID(@tb);
EXEC sys.sp_executesql @sql;