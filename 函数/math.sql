-- | ABS (NUM)                         
-- | 绝对值          
SELECT ABS(10) FROM DUAL;

-- | BIN (decimal_number)              
-- | 十进制转二进制             
SELECT BIN(10) FROM DUAL;

-- | CEILING (number2)                 
-- | 向上取整，得到比 num2 大的最小整数 
SELECT CEILING(1.1) FROM DUAL;

-- | CONV(number2, from_base, to base) 
-- | 进制转换    
-- 下面的含义是8十进制的8，转成2进制输出.
                      
SELECT CONV(8, 10, 2) FROM DUAL;

-- | FLOOR(number2)                    
-- | 向下取整,得到比 num2 小的最大整数  
SELECT FLOOR(1.1) FROM DUAL;

-- | FORMAT(number, decimal_places)    
-- | 保留小数位数        
SELECT FORMAT(1.22566222222, 3) FROM DUAL;


-- | HEX (DecimalNumber)               
-- | 转十六进制     
SELECT HEX(32323) FROM DUAL;  


-- | LEAST (number, number2 \[, ...\]) 
-- | 求最小值      
SELECT LEAST(0, 1, -10, 4) FROM DUAL;


-- | MOD (numerator, denominator)     
-- | 求余     
SELECT MOD(10, 3) FROM DUAL;

-- | RAND (\[seed\]) RAND (\[seed\])   
-- | 其范围为 0 ≤ v ≤ 1.0   
-- 如果使用 rand() 每次返回不同的随机数，在0≤v≤1.0
-- 如果使用rand(seed) 返回随机数，范围0≤v≤1.0，如果seed不变,该随机数也不变了

SELECT RAND(2) FROM DUAL;
