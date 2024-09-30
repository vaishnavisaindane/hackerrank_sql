with cte1 as(
    select Start_Date from Projects 
    where Start_Date not in (select End_Date from Projects )
),
cte2 as(
select Start_Date,rank()over(order by Start_Date asc )as rn
    from cte1
),
cte3 as(
select End_Date from Projects 
    where End_Date not in (select Start_Date from Projects )
),
cte4 as(
    select End_Date,rank()over(order by End_Date asc )as rn
    from cte3
)
select c2.Start_Date,c4.End_Date
from cte2 c2 inner join cte4 c4
on c2.rn = c4.rn
order by datediff(day,c2.Start_Date,c4.End_Date)asc,c2.Start_Date asc
