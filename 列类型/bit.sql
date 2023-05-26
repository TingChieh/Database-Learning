USE db002;
-- bit(m) m 在 1-64
-- 添加数据 范围 按照你给的位数来确定 比如 m = 8 表示一个字节 0~255
-- 显示按照 bit
CREATE TABLE t05 (num BIT(8));
INSERT INTO t05 VALUES(11);
SELECT * FROM t05;
SELECT * FROM t05 WHERE num = 11;