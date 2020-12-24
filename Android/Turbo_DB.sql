select
datetime(timestamp_millis/1000,'unixepoch') as D_T,
battery_level,
case charge_type
  when 0 then ''
  when 1 then 'Charging Rapidly'
  when 2 then 'Charging Slowly'
  when 3 then 'Charging Wirelessly'
End as C_Type,
case battery_saver
  when 2 then ''
  when 1 then 'Enabled'
End as B_Saver,
timezone
from battery_event
