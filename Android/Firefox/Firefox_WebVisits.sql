SELECT
datetime(moz_historyvisits.visit_date/1000, 'unixepoch') AS VisitDate,
moz_places.url AS URL,
moz_places.title AS Title,
moz_historyvisits.id AS VisitID,
moz_historyvisits.from_visit AS FromVisitID,
CASE moz_historyvisits.visit_type
    WHEN 1 THEN 'TRANSITION_LINK'
    WHEN 2 THEN 'TRANSITION_TYPED'
    WHEN 3 THEN 'TRANSITION_BOOKMARK'
    WHEN 4 THEN 'TRANSITION_EMBED'
    WHEN 5 THEN 'TRANSITION_REDIRECT_PERMANENT'
    WHEN 6 THEN 'TRANSITION_REDIRECT_TEMPORARY'
    WHEN 7 THEN 'TRANSITION_DOWNLOAD'
    WHEN 8 THEN 'TRANSITION_FRAMED_LINK'
    WHEN 9 THEN 'TRANSITION_RELOAD'
END AS VisitType,
CASE
    WHEN moz_places.typed = 0 THEN 'No'
    WHEN moz_places.typed = 1 THEN 'Yes'
END AS Typed
FROM moz_historyvisits
INNER JOIN moz_places ON moz_places.id = moz_historyvisits.place_id
ORDER BY
moz_historyvisits.visit_date ASC
