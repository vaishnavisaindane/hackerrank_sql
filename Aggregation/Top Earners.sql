
select max(salary * months) ,count(name )
from Employee
where(salary * months)=
(
    select max(salary * months) from Employee
)

















https://youtu.be/bpOq6um4Ns4?si=5V0PGvkWvbFwZMy0
