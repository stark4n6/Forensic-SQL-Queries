SELECT
datetime(created_at/1000,'unixepoch') AS CreatedDate,
title AS Title,
url AS URL,
CASE is_default
	WHEN 0 THEN 'No'
	WHEN 1 THEN 'Yes'
END as IsDefault
FROM top_sites
