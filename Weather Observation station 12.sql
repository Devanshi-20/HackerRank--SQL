Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT distinct city from station WHERE
city not regexp '^[aeiouAEIOU]' AND CITY NOT REGEXP '[aeiouAEIOU]$';