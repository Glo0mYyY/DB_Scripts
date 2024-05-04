/*================================================*/
/* Datenbanken I */
/* Einführungsbeispiel */
/* Tabellen erzeugen */
/*================================================*/
drop index relation_3_fk;

drop index relation_16_fk;

drop table emp cascade constraints;

drop table dept cascade constraints;

/*================================================*/
/* Tabelle: DEPT */
/*================================================*/
create table
    dept (
        deptno number (2) not null,
        dname varchar2 (14) not null,
        loc varchar2 (13) not null,
        constraint pk_dept primary key (deptno)
    );

/*================================================*/
/* Tabelle: EMP */
/*================================================*/
create table
    emp (
        empno number (4) not null,
        ename varchar2 (10) not null,
        job varchar2 (9) not null,
        mgr number (4),
        hiredate date not null,
        sal number (7, 2) not null,
        comm number (7, 2),
        deptno number (2) not null,
        constraint pk_emp primary key (empno),
        constraint fk_emp_relation__dept foreign key (deptno) references dept (deptno),
        constraint fk_emp_relation__emp foreign key (mgr) references emp (empno)
    );