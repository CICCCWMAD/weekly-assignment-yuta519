select
	s."name" as student_name,
	sum(a.duration) as total_time
from public.students s
left join assignment_submissions as a on s.id = a.student_id
where s.id = 186
group by student_name;
