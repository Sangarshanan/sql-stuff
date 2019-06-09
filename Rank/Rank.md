## Rank and Dense Rank


The RANK() function is a window function that assigns a rank to each row in the partition of a result set.

- First, the PARTITION BY clause distributes the rows in the result set into partitions by one or more criteria.
- Second, the ORDER BY clause sorts the rows in each a partition.
- The RANK() function is operated on the rows of each partition and re-initialized when crossing each partition boundary.

The following statement ranks employees by their salaries:


```
SELECT 
    first_name, 
    last_name, 
    salary, 
    RANK() OVER (ORDER BY salary) salary_rank
FROM 
    employees;
```

![alt text](http://www.sqltutorial.org/wp-content/uploads/2018/09/SQL-Rank-Function-over-result-set-example.png)

```
SELECT 
EmployeeID, EmployeeName, Gender, Location,
DENSE_RANK() OVER (partition by Location, order by Gender DESC)
AS Rank
FROM Employee;
```


empID empName Gender Location Salary

1003	John	Male	London	  1

1004	Mile	Male	London	  1

1006	Sophie	Female	London	  2

1002	Tina	Female	Moscow	  1

1005	Tara	Female	Moscow	  1

1001	Henry	Male	New York	  1



### Rank vs Dense Rank

RANK gives you the ranking within your ordered partition. Ties are assigned the same rank, with the next ranking(s) skipped. So, if you have 3 items at rank 2, the next rank listed would be ranked 5.

DENSE_RANK again gives you the ranking within your ordered partition, but the ranks are consecutive. No ranks are skipped if there are ranks with multiple items.




| RowNum | Salary | Rank | Dense Rank  |
| :---: | :---: | :---: | :---: |
| 1 | 1000 | 1 | 1 |
| 2 | 1000 | 1 | 1 |
| 3 | 1000 | 1 | 1 |
| 4 | 1000 | 4 | 2 |
| 5 | 3000 | 5 | 3 |
| 6 | 3000 | 5 | 3 |
| 7 | 8000 | 7 | 4 |
| 8 | 8000 | 8 | 5 |



