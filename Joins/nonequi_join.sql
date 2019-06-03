/* order amount of orders table matches any of the opening amounts of customer table */

SELECT a.ord_num,a.ord_amount,b.cust_name,b.working_area 
FROM orders a,customer b 
WHERE a.ord_amount 
BETWEEN b.opening_amt AND b.opening_amt;