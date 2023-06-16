-- Active: 1681181409470@@127.0.0.1@3306@db002

SELECT ename FROM emp WHERE ename NOT LIKE '%R%';

SELECT LEFT(ename, 3) FROM emp;

SELECT REPLACE(ename, 'A', 'a') FROM emp;

SELECT ename, hiredate
FROM emp
WHERE
    DATE_ADD(hiredate, INTERVAL 10 YEAR) <= NOW();

SELECT ename, hiredate FROM emp ORDER BY hiredate;

SELECT ename, job ,sal FROM emp ORDER BY job desc, sal;

SELECT
    ename,
    CONCAT(
        YEAR(hiredate),
        '-',
        MONTH(hiredate)
    )
FROM emp
ORDER BY
    MONTH(hiredate),
    YEAR(hiredate);

SELECT
    ename,
    CONCAT(
        YEAR(hiredate),
        '-',
        MONTH(hiredate)
    ) AS hire_month
FROM emp
ORDER BY
    MONTH(hiredate),
    YEAR(hiredate);

SELECT ename, FLOOR(sal / 30), sal / 30 FROM emp;

SELECT * FROM emp WHERE MONTH(hiredate) = 2;

SELECT ename, DATEDIFF(NOW(), hiredate) FROM emp;

SELECT * FROM emp WHERE ename LIKE '%A%';

SELECT
    ename,
    FLOOR(DATEDIFF(NOW(), hiredate) / 365) AS "工作年",
    FLOOR(DATEDIFF(NOW(), hiredate) % 365 / 30) AS "工作月",
    DATEDIFF(NOW(), hiredate) % 31
FROM emp;




