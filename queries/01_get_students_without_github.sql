-- select s.id, s."name" as "name" , s.email, s.class_id  from public.students s order by s.class_id;

select s.id, s."name" as "name" , s.email, s.class_id  from public.students s where s.github is null order by s.class_id;
