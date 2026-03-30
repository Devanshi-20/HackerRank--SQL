Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

select count(city) - Count(distinct city) as Uniquecount
from station;