select
	id,
	day,
	chapter,
	name,
	count(request_id) as total_assistances
from (
	select
		a.id as id,
		a.chapter,
		a.day,
		name,
		ar.id as request_id
	from assistance_requests ar
	left join assignments a on ar.assignment_id = a.id
) as assignments_with_reqeusts
where id is not null
group by name,id, day, chapter
order by total_assistances desc
