SELECT t.teacher_id, t.teacher_name, sub.subject_id, sub.subject_name 
FROM Subjects AS sub
JOIN Teachers AS t ON sub.teacher_id = t.teacher_id
WHERE t.teacher_id = 1;