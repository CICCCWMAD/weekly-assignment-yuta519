select count(s.id) as total_students from public.students s where s.class_id = 1 or s.class_id = 2 or s.class_id = 3 ;
