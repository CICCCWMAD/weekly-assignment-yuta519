select
	s."name" as student_name,
	s.email,
	c."name" as class_name
from public.students s
left join classes as c on s.class_id = c.id
where s.class_id is not null and s.end_date is null;
