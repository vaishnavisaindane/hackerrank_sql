select w.id,p.age,w.coins_needed,w.power
from Wands w  join Wands_Property p
on w.code = p.code
where p.is_evil =0 
and w.coins_needed in 
                  (select min(w1.coins_needed) 
                     from wands w1 join wands_property w2 
                     on w1.code = w2.code 
                    where p.age = w2.age 
                   and w.power =w1.power)  
order by power desc,age desc
