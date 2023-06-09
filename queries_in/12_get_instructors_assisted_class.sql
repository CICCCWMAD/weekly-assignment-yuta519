select distinct on(i.name)
	i.name as instructor,
	c.name as class
from assistance_requests ar
left join students s on s.id = ar.student_id
left join classes c on c.id = s.class_id
left join instructors i on i.id = ar.instructor_id
where c.name = 'JUL02'
