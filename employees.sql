/*================================================*/
 /* Datenbanken I */
 /* Einführungsbeispiel */
 /* Daten in Demotabellen einfügen */
 /*================================================*/
 alter session set nls_date_format = 'DD-MON-YYYY'
 nls_date_language = 'AMERICAN';
 -- -----------
 -- Abteilungen
 -- -----------
 insert into dept
 (deptno,dname,loc )
 values (10, 'ACCOUNTING', 'NEW YORK');
 insert into dept
 (deptno,dname,loc )
 values (20, 'RESEARCH', 'DALLAS');
 insert into dept
 (deptno,dname,loc )
 values (30, 'SALES', 'CHICAGO');
 insert into dept
 (deptno,dname,loc )
 values (40, 'OPERATIONS', 'BOSTON');
-- -----------
 -- Angestellte
 -- -----------
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7369, 'SMITH', 'CLERK',
 to_date('17-DEC-1980', 'DD-MON-YYYY'),
 800, null, 20);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7499, 'ALLEN', 'SALESMAN',
 to_date('20-FEB-1981', 'DD-MON-YYYY'),
 1600, 300, 30);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7521, 'WARD', 'SALESMAN',
 to_date('22-FEB-1981', 'DD-MON-YYYY'),
 1250, 500, 30);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7566, 'JONES', 'MANAGER',
 to_date('2-APR-1981', 'DD-MON-YYYY'),
 2975, null, 20);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7654, 'MARTIN', 'SALESMAN',
 to_date('28-SEP-1981', 'DD-MON-YYYY'),
 1250, 1400, 30);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7698, 'BLAKE', 'MANAGER',
 to_date('1-MAY-1981', 'DD-MON-YYYY'),
 2850, null, 30);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7782, 'CLARK', 'MANAGER',
 to_date('9-JUN-1981', 'DD-MON-YYYY'),
 2450, null, 10);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7788, 'SCOTT', 'ANALYST',
 to_date('09-DEC-1982', 'DD-MON-YYYY'),
 3000, null, 20);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7839, 'KING', 'PRESIDENT',
 to_date('17-NOV-1981', 'DD-MON-YYYY'),
 5000, null, 10);
insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7844, 'TURNER', 'SALESMAN',
 to_date('8-SEP-1981', 'DD-MON-YYYY'),
 1500, 0, 30);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7876, 'ADAMS', 'CLERK',
 to_date('12-JAN-1983', 'DD-MON-YYYY'),
 1100, null, 20);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7900, 'JAMES', 'CLERK',
 to_date('3-DEC-1981', 'DD-MON-YYYY'),
 950, null, 30);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7902, 'FORD', 'ANALYST',
 to_date('3-DEC-1981', 'DD-MON-YYYY'),
 3000, null, 20);
 insert into emp
 (empno,ename,job,hiredate,sal,comm,deptno)
 values (7934, 'MILLER', 'CLERK',
 to_date('23-JAN-1982', 'DD-MON-YYYY'),
 1300, null, 10);
 update emp
 set mgr = 7902
 where empno = 7369;
 
 update emp
 set mgr = 7698
 where empno = 7499;
 update emp
 set mgr = 7698
 where empno = 7521;
 update emp
 set mgr = 7839
 where empno = 7566;
 update emp
 set mgr = 7698
 where empno = 7654;
 update emp
 set mgr = 7839
 where empno = 7698;
 update emp
 set mgr = 7839
 where empno = 7782;
 update emp
set mgr = 7566
 where empno = 7788;
 update emp
 set mgr = 7698
 where empno = 7844;
 update emp
 set mgr = 7788
 where empno = 7876;
 update emp
 set mgr = 7698
 where empno = 7900;
 update emp
 set mgr = 7566
 where empno = 7902;
 update emp
 set mgr = 7782
 where empno = 7934;
 commit;
