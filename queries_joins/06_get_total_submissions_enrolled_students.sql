select
	s."name" as student,
	count(a.id) as total_submissions
from students s
left join assignment_submissions as a on s.id = a.student_id
where s.end_date is null
group by student;
