Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city from station 
where city NOT regexp  '[aeiouAEIOU]$';