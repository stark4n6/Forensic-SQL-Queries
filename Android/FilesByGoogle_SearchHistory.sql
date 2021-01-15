select
  searched_term,
  case timestamp
    when 0 then ''
    else datetime(timestamp/1000,'unixepoch')
  end as timestamp
from search_history_content
