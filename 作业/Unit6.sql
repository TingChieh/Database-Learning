USE sales;

CREATE VIEW V_SELLER AS 
	SELECT saleNo, saleName, sex, address FROM 
SELLER; 

CREATE VIEW V_STOCKS AS 
	SELECT * FROM product WHERE stocks < 500 WITH CHECK 
OPTION; 

SELECT * FROM v_seller WHERE sex = '男';

INSERT INTO
    v_seller (saleNo, saleName, sex, address)
VALUES ('S10', '刘文明', '男', '金梅花园302号');

INSERT INTO
    v_stocks (
        productNo,
        productName,
        categoryId,
        price,
        stocks
    )
VALUES (
        'P01100',
        '白猫洗洁精500g',
        1,
        3.2,
        1175
    ), (
        'P02100',
        '恒顺香醋500g',
        2,
        6.5,
        439
    );

UPDATE v_seller SET address = '蓝钻小区176号' WHERE saleNo = 'S10';

UPDATE v_stocks SET stocks = 111 WHERE `productNo` = 'P01002';

DELETE FROM v_seller WHERE saleNo = 'S10';

DESC v_seller;

DROP VIEW v_seller, v_stocks;