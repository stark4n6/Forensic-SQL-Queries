SELECT
datetime(moz_bookmarks.dateAdded/1000,'unixepoch'),
datetime(moz_bookmarks.lastModified/1000,'unixepoch'),
moz_bookmarks.title,
moz_places.url,
CASE moz_bookmarks.type
    WHEN 1 THEN 'URL'
    WHEN 2 THEN 'Folder'
    WHEN 3 THEN 'Separator'
END,
moz_bookmarks.id,
moz_bookmarks.parent,
moz_bookmarks.position,
moz_bookmarks.syncStatus
FROM moz_bookmarks
LEFT JOIN moz_places ON moz_bookmarks.fk = moz_places.id
ORDER BY moz_bookmarks.id ASC
