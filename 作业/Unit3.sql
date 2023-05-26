CREATE TABLE
    seller(
        id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        -- 销售员 ID
        saleNo CHAR(3) NOT NULL,
        saleName VARCHAR(20) NOT NULL,
        sex CHAR(2) NOT NULL,
        birthday DATE,
        hireDate DATE,
        address VARCHAR(50),
        telephone VARCHAR(20)
    );

CREATE TABLE
    customer(
        id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        customerNo CHAR(3) NOT NULL,
        companyName VARCHAR(30) NOT NULL,
        connectName VARCHAR(20),
        address VARCHAR(50),
        zipCode CHAR(6),
        telephone VARCHAR(20)
    );

ALTER TABLE customer MODIFY COLUMN address VARCHAR(100);

DROP TABLE customer;

INSERT INTO seller
VALUES (
        '1',
        'S01',
        '王强',
        '男',
        '1975-12-08',
        '2002-05-01',
        '蓝色港湾42-12',
        '0519-85150900'
    );

INSERT INTO
    seller (
        id,
        saleNo,
        saleName,
        sex,
        birthday,
        hireDate,
        address,
        telephone
    )
VALUES (
        '1',
        'S01',
        '王强',
        '男',
        '1975-12-08',
        '2002-05-01',
        '蓝色港湾42-12',
        '0519-85150900'
    ), (
        '2',
        's02',
        '付芳芳',
        '女',
        '1982-02-19',
        '2008-08-14',
        '燕阳花园53-4',
        '0519-85150901'
    ), (
        '3',
        's03',
        '李芳',
        '女',
        '1983-08-30',
        '2008-04-01',
        '富都小区252-16',
        '0519-85150902'
    );

UPDATE seller SET birthday = '1987-12-06' WHERE saleNo = 'S07';

DELETE FROM seller WHERE saleNo = 'S03';