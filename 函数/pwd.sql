-- USER( )查询用户
-- 可以查看登录到mysql的有哪些用户，以及登录的IP

SELECT USER() FROM DUAL; -- 用户@ip

-- DATEBASE( ) 查询当前使用数据库名称
SELECT DATABASE();

-- MD5(STR)为字符串算出一个 MD5 32 的字符串，（用户密码）加密
SELECT MD5('Oh My God') FROM DUAL;
SELECT LENGTH(MD5('Oh My God'));


CREATE TABLE users
    (id INT,
    `name` VARCHAR(32) NOT NULL DEFAULT '',
    pwd CHAR(32) NOT NULL DEFAULT ''
    );

INSERT INTO users
    VALUES(1, 'OMG', MD5('WTF'));

SELECT * FROM users;
SELECT * FROM users WHERE `name` = 'OMG' AND pwd = MD5('WTF');

-- PASSWORD(str) `SELECT * FROM mysql.user \G`从原文密码 str 计算并返回密码字符串,
-- 通常用于对 MySQL 数据库的用户密码加密
-- mysql.user 表示 数据库.表
SELECT PASSWORD_HASH('WTF', 'bcrypt') FROM DUAL;

SELECT * FROM mysql.user;