select ABS(round((min(LAT_N)-MAX(LAT_N))+(MIN(LONG_W)-MAX(LONG_W)),4))
FROM STATION 
