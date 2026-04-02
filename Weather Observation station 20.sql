A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

SELECT round(AVG(lat_n),4) AS median
FROM (
    SELECT lat_n,
           ROW_NUMBER() OVER (ORDER BY lat_n) AS rn,
           COUNT(*) OVER () AS value
    FROM station
) t
WHERE rn IN (FLOOR((value + 1) / 2), FLOOR((value + 2) / 2));