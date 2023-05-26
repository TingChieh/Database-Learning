-- IF(expr1, expr2, expr3)

-- 如果 expr1 为 TRUE，则返回 expr2 否则返回 expr3

SELECT IF(TRUE, '北京', '上海') FROM DUAL;

-- IFNULL(expr1, expr2)

-- 如果 expr1 不为空 NULL，则返回 expr1，否则返回 expr2

SELECT IFNULL(NULL, '上海') FROM DUAL;

-- SELECT CASE WHEN expr1 THEN expr2 WHEN expr3 THEN expr4 ELSE expr5 END; [ 类似多重分支 ]

-- 如果 expr1 为 TRUE ，则返回 expr2 ，如果 expr2 为 TRUE ，返回expr4，否则返回 expr5

SELECT
    CASE
        WHEN TRUE THEN 'JACK'
        WHEN FALSE THEN 'TOM'
        ELSE 'AMY'
    END;

-- 1.查询emp表，如果comm是null，则显示0.0

-- 老师说明，判断是否为null要使用is null，判断不为空使用is not

SELECT ename, IF(comm IS NULL, 0.0, comm) FROM emp;

SELECT ename, IFNULL(comm, 0.0) FROM emp;

-- 2.如果emp表的job是CLERK 则显示职员，

-- 如果是MANAGER 则显示经理

-- 如果是SALESMAN 则显示销售人员，其它正常显示

SELECT ename, (
        SELECT
            CASE
                WHEN job = 'CLERK' THEN '职员'
                WHEN job = 'MANAGER' THEN '经理'
                WHEN job = 'MANAGER' THEN '销售人员'
                ELSE job
            END
    )
FROM emp;

