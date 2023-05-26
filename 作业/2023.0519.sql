USE stuinfo;

SELECT * FROM student;

SELECT * FROM course;

SELECT * FROM score;

SELECT
    student.sNo,
    student.sName,
    student.sex,
    course.cName,
    score.grade
FROM student
    INNER JOIN score ON student.id = score.sId
    INNER JOIN course ON course.id = score.cid;

SELECT
    student.sNo,
    student.sName,
    student.sex,
    course.cName,
    score.grade
FROM student, score, course
WHERE
    student.id = score.sId
    AND score.cid = course.id;

SELECT * FROM student, course;