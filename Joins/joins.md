# Joins 

These are basic kind of joins in sql


INNER JOIN: Returns records that have matching values in both tables


![alt img](https://www.w3schools.com/sql/img_innerjoin.gif)

Natural join is very similar to inner join except that in inner join the common column is repeated and in natural join this repeat is avoided


LEFT JOIN: Returns all records from the left table, and the matched records from the right table

![alt img](https://www.w3schools.com/sql/img_leftjoin.gif)

RIGHT JOIN: Returns all records from the right table, and the matched records from the left table

![alt img](https://www.w3schools.com/sql/img_rightjoin.gif)

FULL JOIN: Returns all records when there is a match in either left or right table

![alt img](https://www.w3schools.com/sql/img_fulljoin.gif)


![alt img](https://sqlwithmanoj.files.wordpress.com/2014/08/sql_joins.jpg)

**Equi join**: Joining two tables based on an equality 

**Non equi join**: Joining tables based on inequality (<,>,>= etc)


##### There are also some cooler joins 

**CROSS JOIN**: As the name says it's just a cross of 2 tables. Suppose, we have two tables A and B. The following statements perform the cross join and produce a cartesian product of the rows from the A and B tables.

![alt img](http://www.sqltutorial.org/wp-content/uploads/2018/01/SQL-CROSS-JOIN.png)

**SELF JOIN**: This is used to join a table to itself as if the table were two tables; temporarily renaming at least one table in the SQL statement.

![alt img](https://277dfx2bm2883ohl6u2g3l59-wpengine.netdna-ssl.com/wp-content/uploads/2014/07/Self-Join.png)

