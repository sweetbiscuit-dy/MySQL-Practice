-- this is creating a table of student information

-- STEP ONE. create a database
-- special attention here. the character set we choose is utf8mb4 instead of utf8, because according to 
-- others'experiences the utf8 encoding would cause some problem somehow.
CREATE DATABASE IF NOT EXISTS student DEFAULT CHARACTER SET = 'utf8mb4';

-- STEP TWO. open the database we just created
USE student;

-- STEP THREE. create the student info table
CREATE TABLE IF NOT EXISTS student_info (
	name VARCHAR(20),
	stuID VARCHAR(15),
	age TINYINT,
	gender ENUM('male', 'femal', 'secret'),
	addr VARCHAR(100),
	tel CHAR(11),
	mail VARCHAR(50)
) ENGINE = INNODB CHARSET = 'utf8mb4';

-- STEP FOUR. insert a record in to the table
INSERT INTO student_info(name, stuID, age, gender, addr, tel, mail) VALUE('Bob', '13010199025', 22, 'male',
'Xi''an', '18829089700', 'hsyfzdy@163.com');