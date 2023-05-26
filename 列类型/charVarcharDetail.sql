-- CHAR(4) 和 VARCHAR(4) 这个 4 表示的是字符，而不是字节，不区分字符是汉字还是字母

USE db002;

CREATE TABLE t11 ( `name` CHAR(4));

INSERT INTO t11 VALUES('abcd');

SELECT * FROM t11;

CREATE TABLE t12( `name` VARCHAR(4));

INSERT INTO t12 VALUES('你好我好');

SELECT * FROM t12;