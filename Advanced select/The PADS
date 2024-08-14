SELECT concat(Name,'(',substring(Occupation,1,1),')') from occupations 

Union

SELECT concat("There are a total of ",count(Occupation)," ",lower(Occupation),"s.") from occupations 
group by Occupation 
order by 1
