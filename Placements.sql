You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.


Sample Output

Samantha
Julia
Scarlet

Explanation

Now,

Samanthas best friend got offered a higher salary than her at 11.55
Julias best friend got offered a higher salary than her at 12.12
Scarlets best friend got offered a higher salary than her at 15.2
Ashleys best friend did NOT get offered a higher salary than her
The name output, when ordered by the salary offered to their friends, will be:

Samantha
Julia
Scarlet

select s.name from students s
join friends f on 
s.id=f.id
join packages p on 
s.id=p.id
join packages p1 on 
f.friend_id=p1.id
where p.salary<p1.salary
ORDER BY p1.salary;