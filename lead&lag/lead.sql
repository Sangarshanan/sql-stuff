/*
The LAG function can be used in SQL Server (Transact-SQL).

Let's look at an example. If we had an employees table that contained the following data:

employee_number	last_name	first_name	salary	dept_id
12009	Sutherland	Barbara	54000	45
34974	Yates	Fred	80000	45
34987	Erickson	Neil	42000	45
45001	Parker	Sally	57500	30
75623	Gates	Steve	65000	30

*/

SELECT 
  dept_id, last_name, salary,
LAG (salary,1) 
OVER (ORDER BY salary) 
  AS lower_salary
FROM employees;


/*

In this example, the LAG function will sort in ascending order all of the salary values
in the employees table and then return the salary that is 1 position lower
in the result set since we used an offset of 1.

If we had used an offset of 2 instead, it would have returned the salary that is 2 salaries lower. 
If we had used an offset of 3, it would have returned the salary that is 3 lower....and so on.

dept_id	last_name	salary	lower_salary
45	Erickson	42000	NULL
45	Sutherland	54000	42000
30	Parker	57500	54000
30	Gates	65000	57500
45	Yates	80000	65000

*/
