SELECT COUNTRY.CONTINENT,floor(AVG(CITY.Population))
FROM CITY  
inner JOIN COUNTRY
on CITY.CountryCode=COUNTRY.Code
GROUP BY COUNTRY.CONTINENT
