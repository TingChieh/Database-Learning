-- 创建商品类别表
CREATE TABLE `category` (
  `category_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '类别编码',
  `category_name` VARCHAR(50) NOT NULL COMMENT '类别名称',
  `category_desc` VARCHAR(255) COMMENT '类别说明',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品类别表';

-- 创建商品表
CREATE TABLE `product` (
  `product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `product_code` VARCHAR(50) NOT NULL COMMENT '商品代码',
  `product_name` VARCHAR(100) NOT NULL COMMENT '商品名称',
  `price` DECIMAL(10,2) NOT NULL COMMENT '价格',
  `stock` INT NOT NULL COMMENT '库存量',
  `category_id` INT UNSIGNED NOT NULL COMMENT '所属类别',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- 创建销售员表
CREATE TABLE `salesman` (
  `salesman_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '销售员编号',
  `account` VARCHAR(50) NOT NULL COMMENT '销售员账户号',
  `name` VARCHAR(50) NOT NULL COMMENT '销售员名称',
  `gender` ENUM('男', '女') NOT NULL COMMENT '性别',
  `birthdate` DATE NOT NULL COMMENT '出生日期',
  `hiredate` DATE NOT NULL COMMENT '入职日期',
  `address` VARCHAR(255) NOT NULL COMMENT '联系地址',
  `phone` VARCHAR(20) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='销售员表';

-- 创建客户表
CREATE TABLE `customer` (
  `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `account` VARCHAR(50) NOT NULL COMMENT '客户账户号',
  `name` VARCHAR(50) NOT NULL COMMENT '客户名称',
  `company` VARCHAR(100) COMMENT '客户单位',
  `address` VARCHAR(255) NOT NULL COMMENT '客户地址',
  `phone` VARCHAR(20) NOT NULL COMMENT '联系电话',
  `zipcode` VARCHAR(10) COMMENT '邮编',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客户表';

-- 创建订单表
CREATE TABLE `order` (
  `order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `order_date` DATE NOT NULL COMMENT '订单日期',
  `order_desc` VARCHAR(255) COMMENT '订单说明',
  `customer_id` INT UNSIGNED NOT NULL COMMENT '客户编号',
  `salesman_id` INT UNSIGNED NOT NULL COMMENT '销售员编号',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `salesman_id` (`salesman_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`sales
