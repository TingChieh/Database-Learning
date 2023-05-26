CREATE TABLE
    `emp` (
        id INT,
        `name` VARCHAR(32),
        sex CHAR(1),
        brithday DATE,
        entry_date DATETIME,
        job VARCHAR(32),
        salary DOUBLE,
        `resume` TEXT
    ) CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;