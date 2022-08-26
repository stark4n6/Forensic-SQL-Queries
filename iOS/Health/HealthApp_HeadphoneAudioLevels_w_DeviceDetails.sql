ATTACH DATABASE 'PATH_TO_FILE/health.db' as "healthdb";
select
datetime(samples.start_date+978307200,'unixepoch','localtime') as "Start Date",
datetime(samples.end_date+978307200,'unixepoch','localtime') as "End Date",
quantity_samples.quantity as "Decibels",
metadata_values.string_value as "Bundle Name",
healthdb.source_devices.name,
healthdb.source_devices.manufacturer,
healthdb.source_devices.model,
healthdb.source_devices.localIdentifier,
metadata_keys.key,
samples.data_id
from samples
left outer join quantity_samples on samples.data_id = quantity_samples.data_id
left outer join metadata_values on metadata_values.object_id = samples.data_id
left outer join metadata_keys on metadata_keys.ROWID = metadata_values.key_id
left outer join objects on samples.data_id = objects.data_id
left outer join data_provenances on objects.provenance = data_provenances.ROWID
left outer join healthdb.source_devices on healthdb.source_devices.ROWID = data_provenances.device_id
where samples.data_type = 173 and metadata_keys.key != "_HKPrivateMetadataKeyHeadphoneAudioDataIsTransient"