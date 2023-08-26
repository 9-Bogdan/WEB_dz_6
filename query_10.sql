SELECT Subjects.subject_name, Students.student_name, Teachers.teacher_name 
FROM Students  
JOIN Grades ON Students.student_id = Grades.student_id 
JOIN Subjects ON Grades.subject_id = Subjects.subject_id 
JOIN Teachers  ON Teachers.teacher_id = Subjects.teacher_id 
WHERE Students.student_id = 2 AND Teachers.teacher_id = 3;