select
	s."name" as student_name,
	avg(a1.duration) as average_time,
	avg(a2.duration) as average_estimated_time
from students s
left join assignment_submissions a1 ON s.id = a1.student_id
left join assignments a2 on a1.assignment_id  = a2.id
where s.end_date is null
group by student_name
having avg(a1.duration) < avg(a2.duration)
order by average_time asc;
