WITH cte1 AS(
SELECT h.hacker_id,h.name,count(c.challenge_id)as challenges_created
FROM Hackers h
INNER JOIN Challenges c
ON h.hacker_id=c.hacker_id
group by h.hacker_id,h.name),

cte2 AS(
SELECT challenges_created,count(challenges_created)as dup_count
FROM cte1 
group by challenges_created
)

select c1.hacker_id,c1.name,c1.challenges_created
from cte1 c1
inner join cte2 c2
on c1.challenges_created=c2.challenges_created
where c2.dup_count=1 
or 
c1.challenges_created=(select max(challenges_created)from cte1)
order by c1.challenges_created desc ,c1.hacker_id


https://youtu.be/oLOxCuCm6b8?si=bkY27fW28g-HoYsy
