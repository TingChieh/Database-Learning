USE sales;

CREATE USER 'login1'@'localhost' IDENTIFIED BY '123456';

CREATE USER 'login2'@'localhost';

ALTER USER 'login2'@'localhost' IDENTIFIED BY 'abcabc';

-- 终端输入登录 mysql -u root -ppassword 或 使用 GUI 软件登录
GRANT SELECT, INSERT, UPDATE, DELETE ON sales.* TO 'login1'@'localhost' WITH GRANT OPTION;

-- 终端输入登录 mysql -u login1 -p123456 或 使用 GUI 软件登录
GRANT SELECT, INSERT, UPDATE, DELETE ON sales.product TO 'login2'@'localhost';

REVOKE ALL ON sales.product FROM 'login2'@'localhost';

SHOW GRANTS FOR 'login2'@'localhost';

REVOKE ALL PRIVILEGES ON *.* FROM 'login1'@'localhost';

SHOW GRANTS FOR 'login1'@'localhost';

DROP USER 'login1'@'localhost', 'login2'@'localhost';

