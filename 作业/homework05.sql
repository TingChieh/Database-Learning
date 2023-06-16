-- Active: 1681181409470@@127.0.0.1@3306@db002

SELECT count(*) AS c, deptno FROM emp GROUP BY deptno HAVING c > 1;

SELECT *
FROM emp
WHERE sal > (
        SELECT sal
        FROM emp
        WHERE ename = 'SMITH'
    );

SELECT
    worker.ename AS '员工名',
    worker.hiredate AS '员工入职时间',
    leader.ename AS '上级名',
    leader.hiredate AS '上级入职时间'
FROM emp worker, emp leader
WHERE
    worker.hiredate > leader.hiredate
    AND worker.mgr = leader.empno;

SELECT dname, emp.*
FROM dept
    LEFT JOIN emp ON dept.deptno = emp.deptno;

SELECT ename, dname
FROM emp, dept
WHERE
    job = 'CLERK'
    AND emp.deptno = dept.deptno;

SELECT MIN(sal) AS min_sal, job
FROM emp
GROUP BY job
HAVING min_sal > 1500;

SELECT AVG(sal) FROM emp;

SELECT * FROM emp WHERE sal > (SELECT AVG(sal) FROM emp);

SELECT *
FROM emp
WHERE job = (
        SELECT job
        FROM emp
        WHERE
            ename = 'SCOTT'
    )
    AND ename != 'SCOTT';

SELECT ename, sal
FROM emp
WHERE sal > (
        SELECT MAX(sal)
        FROM emp
        WHERE deptno = 30
    );

SELECT count(*) AS "部门员工数量", deptno FROM emp GROUP BY deptno;

