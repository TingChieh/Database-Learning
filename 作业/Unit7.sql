USE sales;

SET @user_var := 1000;

SELECT * FROM product WHERE stocks > @user_var;

SELECT customerID INTO @customer_var FROM orders WHERE id = 10004;

SELECT * FROM customer WHERE id = @customer_var;

SELECT *, price * stocks AS totalMoney FROM product;

SELECT
    CONCAT(productNo, ' + ', productName) AS combinedField
FROM product;

SELECT
    CONCAT(
        '****',
        SUBSTRING(telephone, 5)
    ) AS hiddenTelephone
FROM seller;

SELECT
    LEFT(saleName, 1) AS `姓`,
    SUBSTRING(saleName, 2) AS `名`
FROM seller;

SELECT
    YEAR(birthday) AS `年`,
    MONTH(birthday) AS `月`,
    DAY(birthday) AS `日`
FROM seller;

SELECT
    DATE_FORMAT(
        orderDate,
        '%Y-%m-%d %h:%i:%s %p %W'
    ) AS formatted_order_date
FROM orders;

SELECT
    CONCAT(
        DATE_FORMAT(orderDate, '%W'),
        '  ',
        DAY(orderDate),
        CASE
            WHEN DAY(orderDate) BETWEEN 11 AND 13 THEN 'th'
            ELSE CASE RIGHT(DAY(orderDate), 1)
                WHEN '1' THEN 'st'
                WHEN '2' THEN 'nd'
                WHEN '3' THEN 'rd'
                ELSE 'th'
            END
        END,
        '/',
        DATE_FORMAT(orderDate, '%M/%Y')
    ) AS formatted_order_date
FROM orders;

SELECT
    productNo,
    productName, (price * stocks * 0.05) AS profit_increase
FROM product;