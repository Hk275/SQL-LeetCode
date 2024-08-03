# Write your MySQL query statement below
WITH max_num as (
    SELECT num
    FROM MyNumbers
    GROUP BY num HAVING COUNT(*) = 1 
 )

SELECT CASE WHEN COUNT(*) = 0 THEN null ELSE MAX(num) END as num
FROM max_num