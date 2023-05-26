-- Active: 1681181409470@@127.0.0.1@3306@sales

SELECT companyName, connectName, telephone FROM customer;

SELECT * FROM product;

SELECT
    id as 商品ID,
    `productNo` AS `商品编号`,
    `productName` AS `商品名称`,
    `categoryId` AS `商品种类ID`,
    price AS 商品价格,
    stocks AS 库存量, 
    (price * stocks) AS 商品总价值
FROM product;

SELECT * FROM product WHERE price BETWEEN 10 AND 50;

SELECT * FROM seller WHERE `sex` = '女';

SELECT * FROM seller WHERE YEAR(birthday) > 1985;

SELECT * FROM seller WHERE saleNo IN ('S02', 'S03', 'S06');

SELECT * FROM seller WHERE `saleName` LIKE '吴%';

SELECT *
FROM seller
WHERE
    `saleName` LIKE '_宝%'
    OR `saleName` LIKE '_芳%';

SELECT * FROM seller ORDER BY `sex` DESC, birthday DESC;

SELECT * FROM product ORDER BY stocks LIMIT 3;