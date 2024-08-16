with cte as(
select 
	machine_id, 
	process_id, 
	MAX(CASE WHEN activity_type = 'end' THEN timestamp ELSE NULL END) AS end_time,
    MAX(CASE WHEN activity_type = 'start' THEN timestamp ELSE NULL END) AS start_time
from Activity
group by machine_id, process_id)
select 
	machine_id, 
	ROUND(AVG(end_time - start_time), 3) processing_time
from cte
group by machine_id
