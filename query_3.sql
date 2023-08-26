SELECT grp.group_name, AVG(g.grade) AS average_grade
FROM Groups AS grp
JOIN Students AS s ON grp.group_id = s.group_id
JOIN Grades  AS g ON s.student_id = g.student_id
WHERE g.subject_id = 2 
GROUP BY grp.group_name
ORDER BY average_grade DESC;