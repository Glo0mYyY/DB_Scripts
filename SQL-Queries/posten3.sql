-- aufgabe a
SELECT ENAME AS NAME, TO_CHAR(HIREDATE, 'MONTH,DAY,YYYY') AS ANSTELLUNGSDATUM
FROM emp
WHERE deptno = 20
ORDER BY NAME;

-- aufgabe b (Konnte entweder sortieren oder 6 Monate hinzufügen, aber aufgrund des CHAR Datentyps nicht sortieren)
SELECT ename AS NAME, TRUNC(sal) AS GEHALT, TO_CHAR(add_months(HIREDATE, 6), 'IW-YYYY') AS KW_PRUEF
FROM emp
ORDER BY KW_PRUEF;

-- aufgabe c (mit KI gemacht, war 2much)
SELECT ename AS NAME,
    TO_CHAR(last_day(to_date('05.2005', 'MM.YYYY')) - 1, 'Day DD.') AS Mai,
    TO_CHAR(last_day(to_date('06.2005', 'MM.YYYY')) - 1, 'Day DD.') AS Juni,
    TO_CHAR(last_day(to_date('07.2005', 'MM.YYYY')) - 1, 'Day DD.') AS Juli
FROM emp
WHERE ename = 'SMITH';

-- aufgabe d
SELECT ename AS NAME, 
TRUNC(months_between(to_date(sysdate,'dd.mm.yyyy'), to_date(HIREDATE, 'DD-MON-YYYY'))) AS Monate_beschaeftigt
from EMP
ORDER BY Monate_beschaeftigt desc;

-- aufgabe e
SELECT TRUNC(SYSDATE - TO_DATE('01-01-2000', 'DD-MM-YYYY')) AS vergangene_Tage
FROM DUAL;
