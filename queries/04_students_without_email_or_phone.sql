select s."name" as student_name from public.students s where s.email is null or s.phone is null;
