-- Total hours per project

SELECT p.project_name,
       SUM(t.hours_spent) AS total_hours
FROM projects p
JOIN tasks t
ON p.project_id = t.project_id
GROUP BY p.project_name;


-- Completed tasks

SELECT p.project_name,
       COUNT(*) AS completed_tasks
FROM projects p
JOIN tasks t
ON p.project_id = t.project_id
WHERE status='Completed'
GROUP BY p.project_name;


-- High workload projects

SELECT p.project_name,
       SUM(t.hours_spent)
FROM projects p
JOIN tasks t
ON p.project_id=t.project_id
GROUP BY p.project_name
HAVING SUM(t.hours_spent)>20;
