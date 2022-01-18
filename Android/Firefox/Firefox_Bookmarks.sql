SELECT
datetime(moz_bookmarks.dateAdded/1000,'unixepoch') AS 'DateAdded',
datetime(moz_bookmarks.lastModified/1000,'unixepoch') AS 'DateLastModified',
moz_bookmarks.title AS 'Title',
moz_places.url AS 'URL',
CASE moz_bookmarks.type
    WHEN 1 THEN 'URL'
    WHEN 2 THEN 'Folder'
    WHEN 3 THEN 'Separator'
END 'Type',
moz_bookmarks.id AS 'ID',
moz_bookmarks.parent AS 'ParentID',
moz_bookmarks.position AS 'Position',
moz_bookmarks.syncStatus AS 'SyncStatus'
FROM moz_bookmarks
LEFT JOIN moz_places ON moz_bookmarks.fk = moz_places.id
ORDER BY moz_bookmarks.id ASC
