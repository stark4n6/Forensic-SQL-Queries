datetime(created_at/1000,'unixepoch') AS CreatedDate,
file_name AS FileName,
url AS URL,
content_type AS MimeType,
content_length AS FileSize,
CASE status
    WHEN 3 THEN 'Paused'
    WHEN 4 THEN 'Canceled'
    WHEN 5 THEN 'Failed'
    WHEN 6 THEN 'Finished'
END AS Status,
destination_directory AS DestDir
FROM downloads
