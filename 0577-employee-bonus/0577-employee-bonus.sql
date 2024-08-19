# name and bonus amount of each employee 
# bonus less than 1000.
SELECT name, bonus
FROM Employee E 
LEFT JOIN Bonus B 
USING (empId)
Where B.bonus IS NULL OR B.bonus < 1000
