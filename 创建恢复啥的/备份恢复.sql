-- 备份命令行里运行
mysqldump -u root -p -B db01 db02 > D:\\cs-learning\\Database\\back\\bak.sql;

DROP DATABASE db02;

-- 恢复指令
SOURCE D:\\cs-learning\\Database\\back\\bak.sql;

