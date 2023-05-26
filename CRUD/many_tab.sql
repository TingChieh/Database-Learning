-- 多表查询
-- ?显示雇员名,雇员工资及所在部门的名字\[笛卡尔集\]
-- 雇员 emp 表
-- 部门名字 dept 表
-- 当我们需要指定显示某个表的列是需要 表.列表
SELECT ename, sal, dname, emp.deptno
    FROM emp, dept
    WHERE emp.deptno = dept.deptno;

-- 老韩小技巧:多表查询的条件不能少于表的个数1,否则会出现笛卡尔集
-- ?如何显示部门号为10的部门名、员工名和工资
SELECT ename, sal, dname, emp.deptno
    FROM emp, dept
    WHERE emp.deptno = dept.deptno AND emp.deptno = 10;

-- ?显示各个员工的姓名，工资，及其工资的级别
SELECT ename, sal, grade
    FROM emp, salgrade
    WHERE sal BETWEEN losal AND hisal;