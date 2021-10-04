USE Students;
select * from Employee;
select DEPARTMENT, count(EMPLOYEE_ID) No_of_Employee 
FROM Employee 
group by DEPARTMENT
Order by No_of_Employee desc;
select * from title;
select distinct E.FIRST_NAME, T.EMPLOYEE_TITLE
from Employee E
inner join title T
on E.Employee_ID = T.EMPLOYEE_REF_ID
and T.EMPLOYEE_TITLE in ('Manager');
select * from title;
select distinct E.Employee_ID, E.FIRST_NAME, T.EMPLOYEE_TITLE
from Employee E
inner join title T
on E.Employee_ID = T.EMPLOYEE_REF_ID;
select EMPLOYEE_TITLE, AFFECTED_FROM, COUNT(*)
from title
group by EMPLOYEE_TITLE, AFFECTED_FROM
having count(*) > 1;
select * from Employee 
where mod(EMPLOYEE_ID, 2) <> 0;
create table Employee_Clone like Employee;
select current_timestamp();
Select * from Employee 
Order by Salary desc limit 3;
select FIRST_NAME, SALARY from Employee Order by SALARY desc limit 4,1;
select * from EMPLOYEE
order by SALARY DESC;
SELECT DISTINCT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY
from Employee E, Employee E1
where E.SALARY = E1.SALARY
and E.EMPLOYEE_ID != E1.EMPLOYEE_ID; 
select distinct SALARY from Employee
order by SALARY desc limit 1,1;
select * from Employee E 
UNION ALL
select * from Employee E1;
SELECT * FROM EMPLOYEE
WHERE EMPLOYEE_ID <= (SELECT count(EMPLOYEE_ID)/2 FROM EMPLOYEE);
SELECT DEPARTMENT, count(EMPLOYEE_ID) from Employee
GROUP BY DEPARTMENT having count(EMPLOYEE_ID) >3;
select * from Employee
where EMPLOYEE_ID = (select max(EMPLOYEE_ID) FROM Employee);
select concat(FIRST_NAME, " ", LAST_NAME) FULL_NAME, DEPARTMENT, max(SALARY) HIGHEST_SALARY from Employee
group by DEPARTMENT
ORDER BY SALARY DESC;