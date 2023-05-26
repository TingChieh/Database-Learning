-- 演示字符串相关函数的使用，使用 emp 演示
-- CHARSET (str)返回字串字符集
SELECT CHARSET(ename) FROM emp;

-- CONCAT (string2 \[ ,... \])连接字串
SELECT CONCAT (ename, ' job is ', job) FROM emp;

-- INSTR (string, substring)返回 substring 在 string 中出现的位置，没有返回 0
-- DUAL 亚元表， 系统表 可以作为测试表使用
SELECT INSTR('hanshunping', 'ping') FROM DUAL;

-- UCASE (string2)转换成大写
SELECT UCASE(ename) FROM emp;

-- LCASE (string2)转换成小写
SELECT LCASE(ename) FROM emp;

-- LEFT (string, length)从 string2 中的左边起取 length 个字符
SELECT LEFT (ename, 2) FROM emp;
SELECT RIGHT (ename, 2) FROM emp;

-- LENGTH (string)string 长度 \[按照字节\]
SELECT LENGTH(ename) FROM emp;
SELECT LENGTH('韩顺平') FROM emp;

-- REPLACE (str, search_str, replace_str)
--在 str 中用 replace_str 替换 search_str
SELECT ename, REPLACE(job,'MANAGER', '经理') FROM emp;

-- STRCMP (string1, string2)逐字符比较两字串的大小
SELECT STRCMP('hsp', 'jsp') FROM DUAL;

-- SUBSTRING (str, position \[, length\])
-- 从 str 的 position 开始 \[从 1 开始计算\]，取 length 个字符
-- 从 ename 列的第一个位置开始取出2个字符
SELECT SUBSTRING(ename, 1, 2) FROM emp;

-- LTRIM (string2) RTRIM (string2) TRIM(string)
-- 去除前端空格和后端空格
SELECT LTRIM('  我的天哪') FROM DUAL;
SELECT RTRIM('我的天哪 ') FROM DUAL;
SELECT TRIM(' 我的天哪 ') FROM DUAL;

SELECT CONCAT(LCASE(LEFT(ename, 1)), SUBSTRING(UCASE(ename), 2)) FROM emp;