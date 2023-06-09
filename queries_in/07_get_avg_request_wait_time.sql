select
	avg(wait_time) as average_wait_time
from (
	select
		ar.started_at - ar.created_at as wait_time
	from assistance_requests ar
) as average_wait_times;
