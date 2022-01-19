SELECT
datetime( firstUsed / 1000000, 'unixepoch', 'localtime' ) AS "First Used",
datetime( lastUsed / 1000000, 'unixepoch', 'localtime' ) AS "Last Used",
fieldname AS FieldName,
value AS Value,
timesUsed AS TimesUsed,
id AS ID
FROM moz_formhistory
ORDER BY id ASC
