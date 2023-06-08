select s."name" as "name", s.id,  s.class_id as class_id  from public.students s where s.end_date is null  order by s.class_id;
