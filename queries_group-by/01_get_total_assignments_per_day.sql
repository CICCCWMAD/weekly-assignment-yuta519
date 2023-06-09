select a.day, count(a.id) as total_assignments from assignments as a group by day order by day;
