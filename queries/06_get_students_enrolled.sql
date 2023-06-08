select s.id, s."name", s.class_id  from public.students s where s.end_date is null  order by s.class_id;
