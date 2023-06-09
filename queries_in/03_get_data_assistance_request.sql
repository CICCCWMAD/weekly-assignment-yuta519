select
	i."name" as instructor,
	s."name" as student,
	assignments.name as assignment,
	a.completed_at - a.started_at as assistance_duration
from students s
left join assistance_requests a on s.id = a.student_id
left join instructors i on i.id = a.instructor_id
left join assignments on assignments.id = a.assignment_id
order by assistance_duration asc;
