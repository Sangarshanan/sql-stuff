/*
employee_number	last_name	first_name	salary	dept_id
12009	Sutherland	Barbara	54000	45
34974	Yates	Fred	80000	45
34987	Erickson	Neil	42000	45
45001	Parker	Sally	57500	30
75623	Gates	Steve	65000	30

*/

SELECT 
  dept_id, last_name, salary,
LEAD (salary,1) 
OVER (ORDER BY salary) 
  AS next_highest_salary
FROM employees;

/*
It would return the following result:

dept_id	last_name	salary	next_highest_salary
45	Erickson	  42000	  54000
45	Sutherland	54000	  57500
30	Parker	      57500	  65000
30	Gates   	  65000	  80000
45	Yates	        80000	  NULL

In this example, the LEAD function will sort in ascending order all of the salary values
in the employees table and then return the next highest salary since we used an offset of 1.

If we had used an offset of 2 instead, it would have returned the salary that is 2 salaries higher.
If we had used an offset of 3, it would have returned the salary that is 3 higher....and so on.


*/
