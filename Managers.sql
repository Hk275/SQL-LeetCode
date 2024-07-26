SELECT name 
FROM employee
where id in (
    SELECT managerID
    FROM employee
    GROUP BY managerID
    HAVING count(*) >=5
)
