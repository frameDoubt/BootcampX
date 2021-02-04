/*
SELECT cohorts.name AS name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
WHERE cohorts.name IN (
                        SELECT cohorts.name AS name
                        FROM assistance_requests
                        JOIN students ON students.id = assistance_requests.student_id
                        JOIN cohorts ON students.cohort_id = cohorts.id
                        GROUP BY cohorts.name
                        ORDER BY AVG(assistance_requests.completed_at - assistance_requests.started_at) DESC
                        LIMIT 1
                        )
GROUP BY cohorts.name; */

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;