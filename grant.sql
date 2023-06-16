-- Active: 1681181409470@@127.0.0.1@3306@testdb

USE db002;

-- 创建一个用户(你的名字，拼音)，密码 123，并果只可以从本地登录，不让远程登录

CREATE USER 'new_user'@'localhost' IDENTIFIED BY '123';

-- 创建库和表 testdb下的 news 表 ，要求:使用root 用户创建

CREATE DATABASE testdb;

CREATE TABLE news(id INT,content VARCHAR(32));

INSERT INTO news VALUES(200, 'Shanghai NEWS');

-- 给用户分配查看 news 表和添加数据的权限
GRANT SELECT, INSERT ON testdb.news TO 'new_user'@'localhost';
-- 测试看看用户是否只有这几个权限
SHOW GRANTS FOR 'new_user'@'localhost';
-- 修改密码为 abc，要求: 使用root 用户完成
ALTER USER 'new_user'@'localhost' IDENTIFIED BY 'abc';
-- 回收权限
REVOKE ALL PRIVILEGES ON *.* FROM 'new_user'@'localhost';
-- 使用 root 用户删除你的用户
DROP USER 'new_user'@'localhost';