-- 增强 group by
-- 显示每种岗位的雇员总数、平均工资。
SELECT COUNT(*), avg(sal), job
    FROM emp
    GROUP BY job;
-- 显示雇员总数，以及获得补助的雇员数,
-- 思路:获得补助的雇员数就是comm列为非null,就是count (列)，如果该列的值为null,是
-- 不会统计

SELECT COUNT(*), COUNT(comm)
    FROM emp;

-- 统计没有获得补助的雇员数
SELECT COUNT(*), COUNT(IF(comm IS NULL, 1, NULL))
    FROM emp;

SELECT COUNT(*), COUNT(*) - COUNT(comm)
    FROM emp;

-- 显示管理者的总人数。
SELECT COUNT(DISTINCT mgr)
    FROM emp;

-- 显示雇员工资的最大差额。
-- 思路 max(sal) - min(sal)
SELECT MAX(sal) - MIN(sal)
    FROM emp;


-- 应用案例：请统计各个部门 group by 的平均工资 avg ，
-- 并且是大于1000的，having
-- 并且按照平均工资从高到低排序 order by，取出前两行记录。 LIMIT 0, 2


SELECT deptno, AVG(sal) AS avg_sal
    FROM emp
    GROUP BY deptno
    HAVING avg_sal > 1000
    ORDER BY avg_sal DESC
    LIMIT 0, 2;