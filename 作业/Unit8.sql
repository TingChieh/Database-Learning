USE sales;

CREATE PROCEDURE PROC_1() BEGIN 
	SELECT
	    saleNo,
	    saleName,
	    sex,
	    telephone
	FROM seller
	WHERE sex = '女';
END; 

CALL proc_1();

DELIMITER //
CREATE PROCEDURE proc_2(IN n INT)
BEGIN
    SELECT * FROM product ORDER BY stocks ASC LIMIT n;
END //

DELIMITER ;

CREATE PROCEDURE proc_2(IN n INT) 
BEGIN 
    SELECT * FROM product ORDER BY stocks ASC LIMIT n; 
END;

CALL proc_2(5);

CREATE PROCEDURE proc_3(IN birthDate DATE)
BEGIN
    SELECT * FROM seller WHERE birthdate <= birthDate;
END;

CALL proc_3('1990-01-01');

DELIMITER //

CREATE PROCEDURE proc_4(IN productNo VARCHAR(10), OUT stockStatus INT)
BEGIN
    SET stockStatus = (
        SELECT IF(stocks > 500, 1, 0) FROM product WHERE productNo = productNo LIMIT 1
    );
END //

DELIMITER ;


CALL proc_4('P01100', @stockStatus);
SELECT @stockStatus;

DELIMITER //

CREATE FUNCTION func_1(categoryName VARCHAR(50)) RETURNS VARCHAR(50)
DETERMINISTIC NO SQL
BEGIN
    DECLARE categoryCount INT;
    DECLARE result VARCHAR(50);
    
    SET categoryCount = (
        SELECT COUNT(DISTINCT category) FROM product WHERE category = categoryName
    );
    
    SET result = CASE
        WHEN categoryCount >= 5 THEN '种类繁多'
        WHEN categoryCount >= 3 THEN '种类偏少'
        WHEN categoryCount = 1 THEN '品种单一'
        ELSE '无商品'
    END;
    
    RETURN result;
END //

DELIMITER ;

SELECT func_1('某种类名称');
