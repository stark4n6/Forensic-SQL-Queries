select
  datetime(last_updated_time_s-11644473600, 'unixepoch') as last_updated_time_s,
  id,
  origin_id,
  url,
  strftime('%H:%M:%S',watch_time_s, 'unixepoch') as watch_time_s,
  case has_audio
      when 0 then ''
      when 1 then 'Yes'
  end as has_audio,
  case has_video
      when 0 then ''
      when 1 then 'Yes'
  end as has_video
from playback
