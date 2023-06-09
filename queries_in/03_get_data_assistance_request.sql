select
	i."name" as instructor,
	s."name" as student,
	a."name" as assignment,
	ar.completed_at - ar.started_at as assistance_duration
from assistance_requests ar
left join instructors i on i. id = ar.instructor_id
left join students s on s.id = ar.student_id
left join assignments a on a.id = ar.assignment_id
order by assistance_duration asc;
