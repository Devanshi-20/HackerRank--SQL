Write a query to print all prime numbers less than or equal to . Print your result on a single line, and use the ampersand () character as your separator (instead of a space).

For example, the output for all prime numbers  would be: 2&3&5&7



WITH RECURSIVE numbers AS (
    SELECT 2 AS num
    UNION ALL
    SELECT num + 1
    FROM numbers
    WHERE num < 1000
)
SELECT GROUP_CONCAT(num SEPARATOR '&')
FROM numbers n
WHERE NOT EXISTS (
    SELECT 1
    FROM numbers d
    WHERE d.num < n.num
    AND n.num % d.num = 0