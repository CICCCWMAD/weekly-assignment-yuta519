select s.id, s."name" , s.email, s.class_id  from public.students s where s.email not like '%@gmail.com' and s.phone is null;
