select a.day, count(a.id) as total_assignments from assignments as a group by a.day having count(a.id) >= 10 order by a.day;
