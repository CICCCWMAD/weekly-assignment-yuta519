select
	i.name as instructor,
	c.name as class,
	count(ar.id) as total_assistances
from assistance_requests ar
left join students s on s.id = ar.student_id
left join classes c on c.id = s.class_id
left join instructors i on i.id = ar.instructor_id
where c.name = 'JUL02'
group by instructor, class
order by total_assistances desc;
