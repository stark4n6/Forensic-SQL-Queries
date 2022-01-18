SELECT
datetime(lastAccessed/1000000,'unixepoch') AS LastAccessedDate,
datetime(creationTime/1000000,'unixepoch') AS CreationDate,
host AS Host,
name AS Name,
value AS Value,
datetime(expiry,'unixepoch') AS ExpirationDate,
path AS Path
from moz_cookies
ORDER BY lastAccessedDate ASC
