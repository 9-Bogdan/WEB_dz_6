SELECT Teachers.teacher_name, Subjects.subject_name, AVG(Grades.grade) AS avg_grade
FROM Teachers 
JOIN Subjects ON Teachers.teacher_id = Subjects.teacher_id 
JOIN Grades ON Subjects.subject_id = Grades.subject_id 
GROUP BY Subjects.subject_name;