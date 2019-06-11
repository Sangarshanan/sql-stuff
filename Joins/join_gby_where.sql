SELECT 
    om.external_id as m_id, 
    COUNT(oo.id) as order_count
FROM table1 AS om
INNER JOIN table2 AS oo 
    ON om.ID = oo.m_id
WHERE oo.INSTALL_TS BETWEEN '01-06-2019' AND '07-06-2019'
GROUP BY 1
