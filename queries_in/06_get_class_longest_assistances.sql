select
	class,
	avg(assistance_duration) as avg_duration_assistance
from (
	select
		ar.completed_at - ar.started_at as assistance_duration,
		c."name" as class
	from assistance_requests ar
	left join students s on ar.student_id = s.id
	left join classes c ON s.class_id = c.id
) as assistance_durations
where class is not null
group by class
order by avg_duration_assistance desc
limit 1;
