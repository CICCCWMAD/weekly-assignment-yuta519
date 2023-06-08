select s.id, s."name" , s.email, s.class_id  from public.students s where s.email is null or s.phone is null;
