
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

select round(max(lat_n),4) as lat
from station where lat_n<=137.2345;