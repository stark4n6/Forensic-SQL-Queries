select
  datetime(last_updated_time_s-11644473600, 'unixepoch') as last_updated_time_s,
  id,
  origin,
  cast(aggregate_watchtime_audio_video_s/86400 as integer) || ':' || strftime('%H:%M:%S', aggregate_watchtime_audio_video_s ,'unixepoch') as aggregate_watchtime_audio_video_s
from origin
