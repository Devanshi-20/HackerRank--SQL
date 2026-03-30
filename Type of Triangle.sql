Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.


select  
case when A+B <=C OR B+C<=A OR A+C<=B then 'Not A Triangle' 
     
     when (A=B and B<>C) OR (B=C and C<>A) OR (A=C AND C<>B) then 'Isosceles' 
     when A=B AND B=C THEN 'Equilateral' ELSE
     'Scalene' END 
FROM Triangles;
