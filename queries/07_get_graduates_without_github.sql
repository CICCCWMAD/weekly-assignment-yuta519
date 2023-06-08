select s."name", s.email, s.phone from public.students s where s.end_date is not null and s.github is null;
