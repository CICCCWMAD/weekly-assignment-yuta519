select
	c."name" as class_name,
	sum(a.duration) as total_time
from classes c
left join students as s on c.id = s.class_id
left join assignment_submissions as a on s.id = a.student_id
where c.id = 1
group by class_name;
