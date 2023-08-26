SELECT Subjects.subject_name, Students.student_name
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
JOIN Subjects ON Grades.subject_id = Subjects.subject_id
WHERE Students.student_id = 1;