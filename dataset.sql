CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    manager VARCHAR(100),
    deadline DATE
);

CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    project_id INT,
    task_name VARCHAR(100),
    status VARCHAR(50),
    hours_spent INT,
    FOREIGN KEY (project_id)
    REFERENCES projects(project_id)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(100)


INSERT INTO projects VALUES
(1, 'Website Revamp', 'Mayuri', '2026-06-30'),
(2, 'App Launch', 'Rahul', '2026-07-15'),
(3, 'CRM Migration', 'Sneha', '2026-08-01');

INSERT INTO tasks VALUES
(101, 1, 'UI Design', 'Completed', 12),
(102, 1, 'Backend Development', 'In Progress', 20),
(103, 2, 'Testing', 'Completed', 10),
(104, 3, 'Data Migration', 'Pending', 8),
(105, 2, 'Deployment', 'Completed', 15);


INSERT INTO employees VALUES
(1, 'Amit', 'Operations'),
(2, 'Sneha', 'Product'),
(3, 'Rahul', 'Engineering');
