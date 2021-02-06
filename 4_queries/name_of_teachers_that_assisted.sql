-- SELECT teachers.name AS teacher, cohorts.name AS cohort
-- FROM cohorts
-- JOIN students ON students.cohort_id = cohorts.id
-- JOIN assistance_requests ON assistance_requests.student_id = students.id
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- GROUP BY teachers.name
-- HAVING cohorts.name = 'JUL02'
-- ORDER BY teacher;

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;