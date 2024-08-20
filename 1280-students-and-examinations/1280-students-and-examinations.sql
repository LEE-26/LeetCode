# find the number of times each student attended each exam.
# ordered by student_id and subject_name. 

# CROSS JOIN 이 필요
# 세 개 join 해야할 때, CTE 사용하면 편리하다.

with StudentSubjects as (
	select 
		s.student_id, 
		s.student_name, 
		sub.subject_name
	from 
		Students s
	cross join
		Subjects sub
)
select 
	ss.student_id, 
	ss.student_name,
	ss.subject_name,
	coalesce(count(e.student_id), 0) as attended_exams
from 
	StudentSubjects ss
left join 
	Examinations e
on 
	ss.student_id = e.student_id 
	and ss.subject_name = e.subject_name
group by 
	ss.student_id, ss.student_name, ss.subject_name
order by 
	ss.student_id, ss.subject_name;