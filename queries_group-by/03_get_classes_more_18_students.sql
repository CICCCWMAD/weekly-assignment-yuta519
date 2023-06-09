select
	c."name" as class_name,
	count(s.id) as total_students
from students as s
left join classes as c on s.class_id = c.id
where c."name" is not null
group by class_name
having count(s.id) >= 18
order by total_students
