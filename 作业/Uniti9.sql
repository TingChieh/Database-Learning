USE sales;

CREATE TRIGGER TR_INSERTSELLER BEFORE INSERT ON SELLER 
FOR EACH ROW BEGIN 
	IF NEW.hireDate is NULL THEN SET NEW.hireDate = CURDATE();
	END IF;
END; 

SHOW TRIGGERS;

INSERT INTO
    seller (id, saleNo, saleName, hireDate)
VALUES (99, 'S09', 'John Doe', NULL);

SELECT * FROM seller WHERE id = 99;

CREATE TRIGGER TR_DELETESELLER BEFORE DELETE ON SELLER 
FOR EACH ROW BEGIN 
	-- 删除与被删除销售员相关的订单
	DELETE FROM orders WHERE `saleId` = OLD.id;
END; 

INSERT INTO
    orders (
        id,
        `customerId`,
        `saleId`,
        `orderDate`
    )
VALUES (10005, 2, 99, '2023-06-06');

DELETE FROM seller WHERE id = 99;

SELECT * FROM orders WHERE `saleId` = 99;

CREATE TRIGGER TR_UPDATEPRODUCT AFTER UPDATE ON PRODUCT 
FOR EACH ROW BEGIN 
	INSERT INTO
	    update_log (
	        modify_time,
	        user,
	        `productNo`,
	        old_price,
	        new_price
	    )
	VALUES (
	        NOW(),
	        CURRENT_USER,
	        NEW.`productNo`,
	        OLD.price,
	        NEW.price
	    );
END; 

CREATE TABLE
    update_log (
        id INT AUTO_INCREMENT PRIMARY KEY,
        modify_time TIMESTAMP,
        user VARCHAR(255),
        `productNo` VARCHAR(255),
        old_price DECIMAL(10, 2),
        new_price DECIMAL(10, 2)
    );

UPDATE product SET price = 18.00 WHERE `productNo` = 'P01001';

SELECT * FROM update_log;

