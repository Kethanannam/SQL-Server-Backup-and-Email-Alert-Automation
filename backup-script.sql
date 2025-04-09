DECLARE @BackupPath NVARCHAR(500) = N'D:\Backup\';
DECLARE @DatabaseName NVARCHAR(128) = N'Students';
DECLARE @DateSuffix NVARCHAR(50);
DECLARE @FileName NVARCHAR(500);
DECLARE @SQL NVARCHAR(MAX);

SET @DateSuffix = REPLACE(CONVERT(NVARCHAR, GETDATE(), 120), ':', '_');
SET @DateSuffix = REPLACE(@DateSuffix, ' ', '_');

SET @FileName = @BackupPath + @DatabaseName + '_Backup_' + @DateSuffix + '.bak';

SET @SQL = '
    BACKUP DATABASE [' + @DatabaseName + ']
    TO DISK = N''' + @FileName + '''
    WITH FORMAT,
    NAME = N''' + @DatabaseName + ' Full Backup'',
    SKIP,
    INIT,
    COMPRESSION;
';

EXEC sp_executesql @SQL;
