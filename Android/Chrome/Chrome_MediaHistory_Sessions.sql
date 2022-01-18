select
  datetime(last_updated_time_s-11644473600, 'unixepoch') as last_updated_time_s,
  origin_id,
  url,
  strftime('%H:%M:%S',position_ms/1000, 'unixepoch') as position_ms,
  strftime('%H:%M:%S',duration_ms/1000, 'unixepoch') as duration_ms,
  title,
  artist,
  album,
  source_title
from playbackSession
