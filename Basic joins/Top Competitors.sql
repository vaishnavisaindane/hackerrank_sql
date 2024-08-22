select h.hacker_id,h.name
from submissions s
join 
Challenges c on s.challenge_id=c.challenge_id
join 
Difficulty d on d.difficulty_level = c.difficulty_level
join 
hackers h on h.hacker_id = s.hacker_id  
where  s.score = d.score
group by h.name ,h.hacker_id
having count(s.hacker_id)>1 
order by count(s.hacker_id) desc,s.hacker_id asc
