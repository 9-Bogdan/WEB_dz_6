SELECT s.student_id,s.student_name, g.group_name
FROM Groups AS g
JOIN Students AS s ON g.group_id  = s.group_id 
WHERE g.group_id = 5