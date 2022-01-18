SELECT
datetime(created_at/1000,'unixepoch') AS CreatedDate,
title as Title,
url as URL
FROM recently_closed_tabs
