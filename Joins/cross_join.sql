/* 

SELECT * 
FROM table1 
CROSS JOIN table2;

*/


SELECT foods.item_name,foods.item_unit,
company.company_name,company.company_city 
FROM foods 
CROSS JOIN company;
