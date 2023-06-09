select
	c."name" as class_name,
	count(a.id) as total_submissions
from students as s
left join classes as c on s.class_id = c.id
left join assignment_submissions as a on s.id = a.student_id
where c."name" is not null
group by class_name
order by total_submissions desc
