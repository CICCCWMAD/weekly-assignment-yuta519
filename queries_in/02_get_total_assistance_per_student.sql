select
	count(a.id) as total_assistances,
	s."name" as student_name
from students s
left join assistance_requests a on s.id = a.student_id
where s.name = 'Elliot Dickinson'
group by student_name;
