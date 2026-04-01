You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

Grades Table contains Grade, min_marks, max_marks .

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.


select case when grade >=8 then name else
       null end as name, 
       g.grade, marks from students s 
    left join grades g on s.marks between g.min_mark and  g.max_mark
order by grade desc, name , marks;