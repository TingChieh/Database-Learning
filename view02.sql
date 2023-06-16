--视图的课堂练习

--计对 emp ，dept和view03，salgrade 张三表创建一个视图 emp

--可以显示雇员编号，雇员名，雇员部门名称和 薪水级别[即使用三张表，构建一个视图

-- 分析三表联合查询，得到结果

-- 13 * 4 * 5

CREATE VIEW EMP_VIEW03 AS 
	SELECT
	    empno,
	    ename,
	    dname,
	    grade
	FROM emp, dept, salgrade
	WHERE
	    emp.deptno = dept.deptno
	    AND (
	        sal BETWEEN losal AND hisal
	    );
; 

DESC emp_view03;
