select
	s."name" as student_name,
	avg(a.duration) as average_time
from students s
left join assignment_submissions a ON s.id = a.student_id
where s.end_date is null
group by student_name
order by average_time desc
