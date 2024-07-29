# Write your MySQL query statement below
SELECT * 
FROM Prices p INNER JOIN UnitsSold u 
on p.product_id = u.product_id 
WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
