SELECT
	title as "File Name",
	case created_date
		when 0 then ''
		else datetime(created_date/1000, 'unixepoch')
	End	as "Created Date",
	case modified_date
		when 0 then ''
		else datetime(modified_date/1000, 'unixepoch')
	End as "Modified Date",
	case shared_with_me_date
		when 0 then ''
		else datetime(shared_with_me_date/1000, 'unixepoch')
	End	as "Shared with User Date",
	case modified_by_me_date
		when 0 then ''
		else datetime(modified_by_me_date/1000, 'unixepoch')
	End as "Modified by User Date",
	case viewed_by_me_date
		when 0 then ''
		else datetime(viewed_by_me_date/1000, 'unixepoch')
	End	as "Viewed by User Date",
	Mime_type as "Mime Type",
	Quota_bytes as "Size",
	case is_folder
		when 0 then ''
		when 1 then 'Yes'
	End as "Folder",
	case is_owner
		when 0 then ''
		when 1 then 'Yes'
	End as "Owner",
	case trashed
		when 0 then ''
		when 1 then 'Yes'
	End as "Deleted"
FROM items
