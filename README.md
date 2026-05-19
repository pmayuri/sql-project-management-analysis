# Project Management KPI & Task Tracking Analysis

## Project Overview
This project analyzes project delivery performance, task completion, and workload distribution using SQL.

The objective was to simulate project management reporting and build KPI-driven insights.

## Dataset Tables
1. Projects
2. Tasks
3. Employees

## SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- HAVING
- INNER JOIN
- Aggregate Functions
- Subqueries
- CASE Statements

## Business Analysis Performed
✔ Total hours spent per project

✔ Task completion tracking

✔ Manager-wise reporting

✔ High workload project identification

✔ KPI monitoring

## Sample Query

```sql
SELECT p.project_name,
       SUM(t.hours_spent) AS total_hours
FROM projects p
JOIN tasks t
ON p.project_id=t.project_id
GROUP BY p.project_name;
