--aufgabe a
select ename,deptno,sal from EMP
where sal < 2000 AND sal > 1000;

--aufgabe b
select ename,job from EMP
where job = 'ANALYST';

--aufgabe c
select ename from EMP
where ename LIKE '%C%';

--aufgabe d
select ename,job,sal from EMP
where job = 'MANAGER' AND sal > 2800;

--aufgabe e
select ename,job,deptno from EMP
where job = 'MANAGER' AND deptno != 30;

--aufgabe f
select ename,comm from EMP
where comm IS NULL
ORDER BY ename asc;

--aufgabe g
select ename,comm from EMP
where comm IS NOT NULL
ORDER BY comm desc;

--aufgabe h
select ename from EMP
where ename LIKE '__R%';