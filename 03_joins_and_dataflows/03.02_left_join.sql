-- Query: Low Activity Students (LEFT JOIN)
-- Purpose:
--     Identify students who have fewer than 2 course enrollments.
--     Show students with 0 or 1 enrollment, sorted by enrollment count (highest to lowest).
-- Tables Used:
--     - students (student_id, name)
--     - enrollments (student_id, course_name)
-- Concepts Used:
--     - LEFT JOIN
--     - COUNT aggregate
--     - GROUP BY
--     - HAVING clause
--     - NULL-safe filtering

SELECT    
  s.name,    
  COUNT(e.course_name) AS low_course_activity
FROM students s
LEFT JOIN enrollments e 
  ON s.student_id = e.student_id
GROUP BY s.name
HAVING COUNT(e.course_name) < 2
ORDER BY low_course_activity DESC;

