SELECT 
    MAX(CASE WHEN Occupation = 'DOCTOR' THEN Name ELSE NULL END) AS Doctor,
    MIN(CASE WHEN Occupation = 'PROFESSOR' THEN Name ELSE NULL END) AS Professor,
    MAX(CASE WHEN Occupation = 'SINGER' THEN Name ELSE NULL END) AS Singer,
    MIN(CASE WHEN Occupation = 'ACTOR' THEN Name ELSE NULL END) AS Actor
FROM (
    SELECT 
        Name, 
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS Row_Num
    FROM 
        Occupations
) AS Ord
GROUP BY Row_Num;
