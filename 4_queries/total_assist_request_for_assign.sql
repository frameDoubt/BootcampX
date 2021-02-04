SELECT assignments.id AS id, assignments.name AS name, assignments.day AS day, assignments.chapter AS chapter, COUNT(assistance_requests.id) AS total_requests
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
WHERE assistance_requests.assignment_id IS NOT NULL
GROUP BY assignments.id
ORDER BY total_requests DESC;




/*
SELECT COUNT(id) as total_requests
FROM assistance_requests
WHERE assignment_id IS NOT NULL
GROUP BY assignment_id
ORDER BY COUNT(id) DESC;
*/