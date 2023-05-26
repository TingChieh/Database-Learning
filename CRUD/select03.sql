USE db002;

-- 查询姓名为赵云的学生成绩

SELECT * FROM student WHERE `name` = '赵云';

-- 查询英语成绩大于90分的同学

SELECT * FROM student WHERE (chinese+english+math) > 200;

-- 查询总分大于200分的所有同学

-- 查询 math 大于 60 并且 (and) id 大于 4 的学生成绩

SELECT * FROM student WHERE math >60 AND id > 4;

--查询英语成绩大于语文成绩的同学

SELECT * FROM student WHERE english > chinese;

--查询总分大于200分并且数学成绩小于语文成绩,的姓韩的学生.

-- 赵% 表示 名字以赵开头的就可以

SELECT *
FROM student
WHERE (chinese + english + math) > 200
    AND math < chinese
    AND `name` LIKE '赵%';

-- 查询英语分数在80一90之间的同学。

SELECT * FROM student WHERE english >= 80 AND english <= 90;

SELECT * FROM student WHERE english BETWEEN 80 AND 90;

-- BETWEEN ... AND ... 是闭区间

-- 查询数学分数为89, 90, 91的同学。

SELECT * FROM student WHERE math IN (89,90,91);

-- 查询所有姓李的学生成绩。

SELECT * FROM student WHERE `name` LIKE '韩%';

-- 查询数学分>80，语文分>80的同学

SELECT * FROM student WHERE math > 80 AND chinese > 80;