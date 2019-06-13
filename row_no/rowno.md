
### ROW_NUMBER() Function without Partition By clause
Partition by clause is an optional part of Row_Number function and if you don't use it all the records of the result-set will be considered as a part of single record group or a single partition and then ranking functions are applied.

```
SELECT *, ROW_NUMBER() 
OVER(ORDER BY EmpName) AS Row_Number  
FROM Employee  
```


![alt img](https://csharpcorner-mindcrackerinc.netdna-ssl.com/UploadFile/BlogImages/11192012060525AM/row-numberfunction-without-partition-by-in-Sql-Server.jpg)




### ROW_NUMBER() Function with Partition By clause
When you specify a column or set of columns with the PARTITION BY clause, then it will divide the result set into record partitions. Then, finally ranking functions are applied to each record partition separately, and the rank will restart from 1 for each record partition separately.

```
SELECT *, ROW_NUMBER() 
OVER(Partition by EmpName ORDER BY EmpName) 
AS Row_Number 
from Employee  
```

![alt img](https://csharpcorner-mindcrackerinc.netdna-ssl.com/UploadFile/BlogImages/11192012060525AM/row-numberfunction-wit-partition-by-in-Sql-Server.jpg)
