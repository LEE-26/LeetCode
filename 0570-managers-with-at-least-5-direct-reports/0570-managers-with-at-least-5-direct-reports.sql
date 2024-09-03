# Write your MySQL query statement below

with Manager as (
    select managerId, count(*) as cnt
    from Employee
    group by managerId
) 

select E.name 
from Employee as E 
inner join Manager as M
on E.id = M.managerId
where M.cnt>= 5


