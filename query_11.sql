SELECT Teachers.teacher_name, Students.student_name, AVG(Grades.grade) AS avg_grade
FROM Teachers
JOIN Subjects ON Teachers.teacher_id = Subjects.teacher_id
JOIN Grades ON Subjects.subject_id = Grades.subject_id
JOIN Students ON Grades.student_id = Students.student_id
WHERE Teachers.teacher_id = 2 AND Students.student_id = 6
GROUP BY Teachers.teacher_name, Students.student_name;