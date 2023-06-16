-- MySQL 用户管理

-- 原因：当我们做项目开发时，可以根据不同的开发人员，赋予他相应的 MYSQL 操作权限

-- 所以，MySQL 数据库管理人员 (root) ，根据需要创建不同的用户，赋给相应的权限，供开发人员使用

-- 1. 创建新的用户

CREATE USER 'new_user'@'localhost' IDENTIFIED BY '123456';

SELECT * FROM mysql.`user`;

SELECT `host`, `user` , AUTHENTICATION_STRING FROM mysql.`user`;

-- 2. 删除用户
DROP USER 'username'@'localhost';

-- 3. 登录



