select
	title as "File Name",
	owner as "Owner",
	case creationTime
		when 0 then ''
		else datetime("creationTime"/1000, 'unixepoch')
	end as "Created",
	case lastModifiedTime
		when 0 then ''
		else datetime("lastModifiedTime"/1000, 'unixepoch') 
	end as "Modified",
	case lastOpenedTime
		when 0 then ''
		else datetime("lastOpenedTime"/1000, 'unixepoch')
	end as "Opened",
	lastModifierAccountAlias as "Last Modifier Account Alias",
	lastModifierAccountName as "Last Modifier Account Name",
	kind as "File Type",
	shareableUri as "Shareable URI",
	htmlUri as "HTML URI",
	md5Checksum as "MD5 Hash",
	size as "File Size"
from EntryView
