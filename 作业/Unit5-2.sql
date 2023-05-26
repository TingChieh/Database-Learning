-- Active: 1681181409470@@127.0.0.1@3306@statsdb

CREATE DATABASE statsdb CHARACTER SET utf8;

CREATE TABLE
    t_province (
        pid INT NOT NULL AUTO_INCREMENT,
        pname VARCHAR(50) NOT NULL,
        area VARCHAR(50) NOT NULL,
        PRIMARY KEY (pid)
    );

INSERT INTO
    t_province (pname, area)
VALUES ('山东', '华东'), ('江苏', '华东'), ('安徽', '华东'), ('上海', '华东'), ('浙江', '华东'), ('江西', '华东'), ('福建', '华东'), ('广东', '华南'), ('海南', '华南'), ('广西', '华南'), ('河南', '华中'), ('湖北', '华中'), ('湖南', '华中'), ('北京', '华北'), ('天津', '华北'), ('河北', '华北'), ('山西', '华北'), ('内蒙古', '华北'), ('重庆', '西南'), ('贵州', '西南'), ('四川', '西南'), ('云南', '西南'), ('西藏', '西南'), ('陕西', '西北'), ('甘肃', '西北'), ('青海', '西北'), ('宁夏', '西北'), ('新疆', '西北'), ('黑龙江', '东北'), ('吉林', '东北'), ('辽宁', '东北');

CREATE TABLE
    t_nevsales (
        nid INT NOT NULL AUTO_INCREMENT,
        pid INT NOT NULL,
        sales INT NOT NULL,
        syear YEAR NOT NULL,
        PRIMARY KEY (nid),
        FOREIGN KEY (pid) REFERENCES t_province (pid)
    );

INSERT INTO
    t_nevsales (pid, sales, syear)
VALUES (1, 349111, 2022), (2, 479697, 2022), (3, 193410, 2022), (4, 332330, 2022), (5, 619646, 2022), (6, 86821, 2022), (7, 139796, 2022), (8, 756852, 2022), (9, 68891, 2022), (10, 181683, 2022), (11, 321724, 2022), (12, 163421, 2022), (13, 141145, 2022), (14, 158168, 2022), (15, 105028, 2022), (16, 179991, 2022), (17, 93934, 2022), (18, 26773, 2022), (19, 114481, 2022), (20, 85202, 2022), (21, 235098, 2022), (22, 99226, 2022), (23, 1399, 2022), (24, 125944, 2022), (25, 23223, 2022), (26, 3691, 2022), (27, 12793, 2022), (28, 20621, 2022), (29, 13075, 2022), (30, 37218, 2022), (31, 62728, 2022);

SELECT
    t_province.pname AS '省份名称',
    t_nevsales.sales AS '销量'
FROM t_nevsales
    INNER JOIN t_province ON t_province.pid = t_nevsales.pid
WHERE t_nevsales.syear = 2022
ORDER BY t_nevsales.sales DESC;

SELECT
    t_province.area AS '地区',
    SUM(t_nevsales.sales) AS '销量'
FROM t_nevsales
    INNER JOIN t_province ON t_province.pid = t_nevsales.pid
GROUP BY t_province.area
ORDER BY
    SUM(t_nevsales.sales) DESC;

SELECT
    MAX(sales) AS '最大销量',
    MIN(sales) AS '最小销量',
    ROUND(AVG(sales), 2) AS '平均销量',
    SUM(sales) AS '总销量'
FROM t_nevsales;

SELECT
    ROUND(MAX(sales), 2) AS '最大销量',
    ROUND(MIN(sales), 2) AS '最小销量',
    ROUND(AVG(sales), 2) AS '平均销量',
    ROUND(SUM(sales), 2) AS '总销量'
FROM t_nevsales;

SELECT
    p.pname AS '省份名称',
    t.sales AS '销量',
    ROUND( (t.sales / total.total_sales) * 100,
        2
    ) AS '百分比'
FROM (
        SELECT
            pid,
            SUM(sales) AS sales
        FROM t_nevsales
        WHERE syear = 2022
        GROUP BY pid
    ) AS t
    JOIN t_province AS p ON t.pid = p.pid
    JOIN (
        SELECT
            SUM(sales) AS total_sales
        FROM t_nevsales
        WHERE
            syear = 2022
    ) AS total
ORDER BY t.sales DESC;

SELECT
    t_province.pname AS '省份名称',
    t_nevsales.sales AS '销量',
    ROUND( (
            t_nevsales.sales / total.total_sales
        ) * 100,
        2
    ) AS '百分比'
FROM (
        SELECT
            pid,
            SUM(sales) AS sales
        FROM t_nevsales
        WHERE syear = 2022
        GROUP BY pid
    ) AS t_nevsales
    JOIN (
        SELECT
            SUM(sales) AS total_sales
        FROM t_nevsales
        WHERE syear = 2022
    ) AS total
    CROSS JOIN t_province ON t_nevsales.pid = t_province.pid
ORDER BY t_nevsales.sales DESC;