USE db002;

-- 视图的使用

-- 创建一个视图emp_view01，只能查询emp表的(empno、ename，job 和 deptno ) 信息

-- 创建视图

CREATE VIEW EMP_VIEW01 AS 
	SELECT empno, ename, job, deptno FROM 
EMP; 

DESC emp_view01;

SELECT * FROM emp_view01;

-- 查看创建视图的指令

SHOW CREATE VIEW emp_view01;

-- 删除视图

DROP VIEW emp_view01;

-- 视图的细节

-- 1. 创建视图后，到数据库去看，对应视图只有一个视图结构文件（形式：视图名 .frm)

-- 2. 视图的数据变化会影响到基表，基表的数据变化也会影响到视图\[INSERT UPDATE DELETE\]

-- 修改视图

UPDATE emp_view01 SET job = 'MANAGER' WHERE empno = 7369;

SELECT * FROM emp;

SELECT * FROM emp_view01;

-- 修改基本表，会影响视图

UPDATE emp SET job = 'SALESMAN' WHERE empno=7368;

-- 3. 视图中可以再使用视图，比如从 emp_view01 视图中，选出 empno 和 ename 做出新视图

DESC emp_view01;

CREATE VIEW EMP_VIEW02 AS 
	SELECT empno,ename FROM emp_view01;

SELECT * FROM emp_view02;
