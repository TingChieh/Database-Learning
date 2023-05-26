-- 多表查询的 自连接
-- 显示公司员工和他上级的名字 emp 表
-- 员工和上级是通过 emp 表的 mgr 列关联
-- 自连接的特点 1.把同一张表当作两张表用
-- 2.需要给表取别名，表名 表别名
3. 列名不明确，可以指定列的别名，别名 AS 列的别名
SELECT worker.ename AS '职员名', boss.ename AS '上级名'
    FROM emp worker, emp boss
    WHERE worker.mgr = boss.empno;



