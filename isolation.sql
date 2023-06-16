USE db002;

-- 1. 开了两个 MySQL 的控制台

-- 2. 查看当前 MySQL 的隔离级别

SELECT @@TRANSACTION_isolation;

-- mysql> SELECT @@transaction_isolation;

-- +-------------------------+
-- | @@transaction_isolation |
-- +-------------------------+
-- | REPEATABLE-READ         |
-- +-------------------------+

-- 1 row in set (0.00 sec)

-- 3. 把其中一个控制台的隔离级别设置 Read UNCOMMITTED

SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 4. 创建表

CREATE TABLE
    `account` (
        id INT,
        `name` VARCHAR(32),
        money INT
    );

-- 查看当前会话隔离级别
SELECT @@TRANSACTION_ISOLATION;

-- 查看系统当前隔离级别
SELECT @@GLOBAL.TRANSACTION_ISOLATION;

-- 设置当前会话隔离级别
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- 设置系统当前隔离级别
SET GLOBAL TRANSACTION ISOLATION LEVEL REPEATABLE READ;

