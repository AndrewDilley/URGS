select 
prop.property_no,
sub.description,
e.amount,
e.description,
e.evt_datetime
from 
evt e, 
account acc,
property prop,
suburb sub

where 
e.id_number_1 = acc.pk
and
acc.fk_property = prop.pk
and
prop.fk_suburb = sub.code

and 
e.[fk_evt_sub_type] = 'URGSAPP'

order by e.evt_datetime
