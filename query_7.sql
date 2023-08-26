SELECT Students.student_name, Grades.grade, Subjects.subject_name
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
JOIN Subjects ON Grades.subject_id = Subjects.subject_id
JOIN Groups ON Students.group_id = Groups.group_id
WHERE Groups.group_id = 5 AND Subjects.subject_id = 3;