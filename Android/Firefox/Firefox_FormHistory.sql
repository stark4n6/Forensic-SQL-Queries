SELECT
datetime(firstUsed/1000000, 'unixepoch') AS FirstUsed,
datetime(lastUsed/1000000, 'unixepoch') AS LastUsed,
fieldname AS FieldName,
value AS Value,
timesUsed AS TimesUsed,
id AS ID
FROM moz_formhistory
ORDER BY id ASC
