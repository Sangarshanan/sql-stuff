/*An equijoin is a join with a join condition containing an equality operator. 
An equijoin returns only the rows that have equivalent values 
for the specified columns. */

SELECT agents.agent_name,customer.cust_name,
customer.cust_city
FROM agents,customer
WHERE agents.working_area=customer.cust_city;