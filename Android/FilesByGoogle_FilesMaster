select
  root_path,
  root_relative_file_path,
  file_name,
  size,
  case file_date_modified_ms
    when 0 then ''
    else datetime(file_date_modified_ms/1000,'unixepoch')
  end as file_date_modified_ms,
  storage_location,
  mime_type,
  case media_type
    when 0 then 'App/Data'
    when 1 then 'Picture'
    when 2 then 'Audio'
    when 3 then 'Video'
    when 6 then 'Text'
  end as media_type,
  uri,
  is_hidden,
  title,
  parent_folder_name
from files_master_table
