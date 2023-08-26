SELECT sub.subject_name, s.student_id, s.student_name, AVG(g.grade) as average_grade
FROM Students AS s
JOIN Grades AS g ON s.student_id = g.student_id 
JOIN Subjects as sub ON g.subject_id = sub.subject_id 
WHERE g.subject_id  = 1
GROUP BY sub.subject_name , s.student_id , s.student_name 
ORDER BY sub.subject_name,  average_grade DESC 
LIMIT 1;