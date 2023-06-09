select
	count(a.id) as total_assistances,
	i."name" as instructor_name
from instructors i
left join assistance_requests a on i.id = a.instructor_id
where i.name = 'Waylon Boehm'
group by instructor_name;
