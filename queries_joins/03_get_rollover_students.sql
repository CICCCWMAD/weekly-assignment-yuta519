select
	s."name" as student_name,
	c."name" as class_name,
	s.start_date as student_start_date,
	c.start_date as class_start_date
from public.students s
left join classes as c on s.class_id = c.id
where s.start_date < c.start_date
order by c.start_date;
