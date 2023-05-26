USE db002;

-- 子查询

-- 如何显示与 SMITH 同一部门的所有员工

-- 1. 先查到 SMITH 的部门号

-- 2. 把上面的 SELECT 语句当做一个子查询来使用

SELECT deptno FROM emp WHERE ename = 'SMITH';

SELECT *
FROM emp
WHERE deptno = (
        SELECT deptno
        FROM emp
        WHERE ename = 'SMITH'
    );

-- 课堂练习:如何查询和部门10的工作相同的雇员的

-- 名字、岗位、工资、部门号，但是不含10自己的

-- 1.查询到10号部门有哪些工作

-- 2.把上面查询的结果当做子查询使用

SELECT job FROM emp WHERE deptno = 10;

SELECT ename, job, sal, deptno
FROM emp
WHERE job IN (
        SELECT DISTINCT job
        FROM emp
        WHERE deptno = 10
    ) AND deptno != 10;