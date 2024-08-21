select if(g.Grade<8 ,NULL,s.Name),g.Grade,s.Marks
from Students s join Grades g 
where s.Marks between g.Min_Mark and g.Max_Mark
order by g.Grade desc,s.Name asc,s.marks asc
