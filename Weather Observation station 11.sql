Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.


SELECT distinct city from station WHERE
city not regexp '^[aeiouAEIOU].*[aeiouAEIOU]$';