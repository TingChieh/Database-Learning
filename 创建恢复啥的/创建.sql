-- Active: 1681181409470@@127.0.0.1@3306@db01
-- 删除数据库
-- DROP DATABASE xxx;

-- 创建数据库 utf-8 
CREATE DATABASE db002 CHARACTER SET utf8 COLLATE utf8_bin;
-- 校对规则 utf8_bin 区分大小 默认 utf8_general_ci 不区分天小写

USE db01;
SELECT * FROM users WHERE NAME = 'jack';
SHOW DATABASES;
SHOW CREATE DATABASE db01;