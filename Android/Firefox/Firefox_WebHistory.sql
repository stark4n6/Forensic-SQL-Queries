SELECT
datetime(moz_places.last_visit_date_local/1000, 'unixepoch') AS LastVisitDate,
moz_places.url AS URL,
moz_places.title AS Title,
moz_places.visit_count_local AS VisitCount,
moz_places.description AS Description,
CASE
    WHEN moz_places.hidden = 0 THEN 'No'
    WHEN moz_places.hidden = 1 THEN 'Yes'
END AS Hidden,
CASE
    WHEN moz_places.typed = 0 THEN 'No'
    WHEN moz_places.typed = 1 THEN 'Yes'
END AS Typed,
moz_places.frecency AS Frecency,
moz_places.preview_image_url AS PreviewImageURL
FROM moz_places
INNER JOIN moz_historyvisits ON moz_places.origin_id = moz_historyvisits.id
INNER JOIN moz_places_metadata ON moz_places.id = moz_places_metadata.id
ORDER BY
moz_places.last_visit_date_local ASC
