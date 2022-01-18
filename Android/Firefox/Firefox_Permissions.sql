SELECT
datetime(modificationTime/1000,'unixepoch') AS ModDate,
origin AS Origin,
type AS PermType,
CASE permission
	WHEN 1 THEN 'Allow'
	WHEN 2 THEN 'Block'
END AS PermState,
CASE expireTime
	WHEN 0 THEN ''
	else datetime(expireTime/1000,'unixepoch')
END AS ExpireDate
FROM moz_perms
ORDER BY ModDate ASC
