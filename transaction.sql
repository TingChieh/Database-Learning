USE db002;

-- 事务的一个重要的概念和具体操作

CREATE TABLE t27 (id INT, `name` VARCHAR(32));

-- 开启事务
START TRANSACTION;

-- 设置保存点
SAVEPOINT a;

-- 执行 dml 操作
INSERT INTO t27 VALUES(100, 'tom');

SELECT * FROM t27;

SAVEPOINT b;

-- 执行 dml 操作
INSERT INTO t27 VALUES(200, 'jack');

-- 回退到 b
ROLLBACK TO b;

-- 回退道 a
ROLLBACK TO a;

-- 如果这样，表示直接回退到事务开始的状态
ROLLBACK;

COMMIT;