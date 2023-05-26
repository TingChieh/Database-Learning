-- CHAR(size) 固定长度字符串最大255字符

-- VARCHAR(size) 0~65535

-- 可变长度字符串最大65532字节[utf8编码最大21844字符1-3个字节用于记录大小]

-- 如果表的编码是 utf8 varchar(size) size = (65535-3) / 3 = 21844

-- 如果表的编码是 gbk varchar(size) size = (65535-3) / 2 = 32766

USE db002;

CREATE TABLE t09( `name` CHAR(255));

CREATE TABLE t10( `name` VARCHAR(321766)) CHARSET gbk;

-- 如果 VARCHAR 不够用，可以直接使用 MEDIUMTEXT 或者 LONGTEXT
-- 如果想简单点，可以直接使用 TEXT
CREATE TABLE t13 ( content TEXT, content2 MEDIUMTEXT, content3 LONGTEXT);
INSERT INTO t13 VALUES('你好我好大', '你好我好大家好100', '你好我好大家好1000~');
SELECT * FROM t13;