-- 注意:创建表时，要根据需保存的数据创建相应的列，并根据数据的类型定义相
-- 应的列类型。例: user表(快速入门案例create tab01 .sql )
-- id 整形 name 字符串 password 字符串 birthday 日期

USE db03;
CREATE TABLE `users` (
  `id` INT AUTO_INCREMENT PRIMARY KEY, -- 自动添加 ID 且是唯一键
  `name` VARCHAR(32),
  `password` VARCHAR(32),
  `birthday` DATE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ENGINE=InnoDB;

