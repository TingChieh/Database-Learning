-- 修改自己的密码
SET PASSWORD = PASSWORD('adcdef');

-- 修改其他人的密码，需要权限 
SET PASSWORD FOR 'username'@'localhost' = PASSWORD('password');
-- mysql5

ALTER USER 'username'@'localhost' IDENTIFIED BY 'abcabc';
-- mysql80
