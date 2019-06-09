SELECT 
    employee_id, 
    name, 
    salary, 
    RANK() OVER (ORDER BY salary) salary_rank
FROM 
    employees;
