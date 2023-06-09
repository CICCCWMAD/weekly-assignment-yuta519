select
	avg(assistance_duration) as avg_assistance_request_duration
from (
	select a.completed_at - a.started_at as assistance_duration from assistance_requests a
) as request_duration;
