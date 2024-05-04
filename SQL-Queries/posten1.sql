-- aufgabe a
select * from DEPT;

-- aufgabe b
select DEPTNO,DNAME from DEPT
ORDER BY DNAME;

-- aufgabe c
select SUBSTR(ENAME, 0, 3) AS ShortName,(SAL * 12) AS Jahregehalt from EMP
ORDER BY SAL desc;