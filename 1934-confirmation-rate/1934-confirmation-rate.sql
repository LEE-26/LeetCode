select 
	s.user_id,
	round(sum(if(c.action = 'confirmed', 1, 0)) / count(*), 2) as 'confirmation_rate'
from 
	signups as s left join confirmations as c using(user_id)
group by 
	s.user_id;