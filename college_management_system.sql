CREATE DATABASE College;
-- Departmnet tables
CREATE TABLE department(dept_id SERIAL PRIMARY KEY,dept_name VARCHAR(100),dept_hod VARCHAR(50));
SELECT * FROM department;
-- insert values
INSERT INTO department VALUES(01,'CSE','rohan'),(02,'CSM','Abhi'),(03,'ECE','Praneeth'),(04,'Venkatesh','EEE'),(05,'Anil','CSM-A');
SELECT * FROM department;
--create students tables
CREATE TABLE Students(std_id SERIAL PRIMARY KEY,std_name VARCHAR(100),std_age INT,std_gender VARCHAR(20),std_mail VARCHAR(100),std_phone VARCHAR(100),std_dept_id VARCHAR(100));
SELECT * FROM Students;
-- insert values to students
INSERT INTO Students VALUES(661,'Abhiram',21,'Male','abhiram@gmail.com','95502863','01'),(662,'Raj',20,'Male','Raj@gmail.com','9550210862','02'),(663,'Krishna',21,'Male','krishna@gmail.com','9550210742','03'),(664,'Abhiram',21,'Male','abhiram@gmail.com','9550210863','04'),(665,'harini',21,'FeMale','harini@gmail.com','9699030354','05'),(666,'Priya',20,'Female','priya@gmail.com','9123456780','001'),
(667,'Rahul',23,'Male','rahul@gmail.com','9234567890','02'),
(668,'Sneha',21,'Female','sneha@gmail.com','9345678901','03'),
(669,'Kiran',22,'Male','kiran@gmail.com','9456789012','04'),
(670,'Anjali',20,'Female','anjali@gmail.com','9567890123','05'),(671,'Vamsi',21,'Male','vamsi@gmail.com','9678901234','01'),
(672,'Deepika',22,'Female','deepika@gmail.com','9789012345','02'),
(673,'Arjun',20,'Male','arjun@gmail.com','9890123456','03'),
(674,'Keerthana',21,'Female','keerthana@gmail.com','9901234567','04'),
(675,'Nikhil',23,'Male','nikhil@gmail.com','9012345678','05'),
(676,'Pooja',20,'Female','pooja@gmail.com','9123456789','01'),
(677,'Manoj',22,'Male','manoj@gmail.com','9234567891','02'),
(678,'Lavanya',21,'Female','lavanya@gmail.com','9345678902','03'),
(679,'Rohith',22,'Male','rohith@gmail.com','9456789013','04'),
(680,'Swathi',20,'Female','swathi@gmail.com','9567890124','05');
SELECT * FROM Students;
--table for teachers
CREATE TABLE Teachers(teach_id SERIAL PRIMARY KEY,teach_name VARCHAR(100),subject VARCHAR(50),salary INT,dep_id INT);
SELECT * FROM Teachers;
INSERT INTO Teachers VALUES(101,'Ramesh','DBMS',55000,'001'),
(102,'Suresh','Python',60000,'002'),
(103,'Mahesh','Java',58000,'003'),
(104,'Praneeth','Machine Learning',70000,'004'),
(105,'Kiran','Data Structures',65000,'005'),
(106,'Lavanya','Operating Systems',62000,'001'),
(107,'Deepak','Computer Networks',57000,'002'),
(108,'Anusha','Artificial Intelligence',72000,'003'),
(109,'Rahul','Web Technologies',59000,'004'),
(110,'Swathi','Cloud Computing',68000,'005');
SELECT * FROM Teachers;
-- table fro coourses
CREATE TABLE Courses(course_id SERIAL PRIMARY KEY ,course_name VARCHAR(100),course_duration VARCHAR(100),course_fee BIGINT);
SELECT * FROM Courses;
INSERT INTO Courses VALUES(201,'Python Programming','3 Months',15000),
(202,'Java Programming','4 Months',18000),
(203,'Web Development','6 Months',25000),
(204,'Data Science','6 Months',30000),
(205,'Machine Learning','5 Months',28000),
(206,'Artificial Intelligence','6 Months',35000),
(207,'Cloud Computing','4 Months',22000),
(208,'Cyber Security','5 Months',27000);
SELECT * FROM Courses;
-- table for enrollments
CREATE TABLE Enrollments(Enroll_id SERIAL PRIMARY KEY,std_id INT,course_id INT ,enrollment_date DATE);
SELECT * FROM Enrollments;
INSERT INTO Enrollments VALUES(1,661,201,'2026-01-10'),
(2,662,202,'2026-01-11'),
(3,663,203,'2026-01-12'),
(4,664,204,'2026-01-13'),
(5,665,205,'2026-01-14'),
(6,666,206,'2026-01-15'),
(7,667,207,'2026-01-16'),
(8,668,208,'2026-01-17'),
(9,669,201,'2026-01-18'),
(10,670,202,'2026-01-19'),
(11,671,203,'2026-01-20'),
(12,672,204,'2026-01-21'),
(13,673,205,'2026-01-22'),
(14,674,206,'2026-01-23'),
(15,675,207,'2026-01-24'),
(16,676,208,'2026-01-25'),
(17,677,201,'2026-01-26'),
(18,678,202,'2026-01-27'),
(19,679,203,'2026-01-28'),
(20,680,204,'2026-01-29'),
(21,661,205,'2026-02-01'),
(22,662,206,'2026-02-02'),
(23,663,207,'2026-02-03'),
(24,664,208,'2026-02-04'),
(25,665,201,'2026-02-05'),
(26,666,202,'2026-02-06'),
(27,667,203,'2026-02-07'),
(28,668,204,'2026-02-08'),
(29,669,205,'2026-02-09'),
(30,670,206,'2026-02-10');
SELECT * FROM Enrollments;
--  table for attendencef
CREATE TABLE Attendence(id SERIAL PRIMARY KEY,std_id INT,attendence_date DATE, status VARCHAR(30));
INSERT INTO Attendence VALUES(1,661,'2026-05-01','Present'),
(2,662,'2026-05-01','Absent'),
(3,663,'2026-05-01','Present'),
(4,664,'2026-05-01','Present'),
(5,665,'2026-05-01','Absent'),
(6,666,'2026-05-02','Present'),
(7,667,'2026-05-02','Present'),
(8,668,'2026-05-02','Absent'),
(9,669,'2026-05-02','Present'),
(10,670,'2026-05-02','Present'),
(11,671,'2026-05-03','Absent'),
(12,672,'2026-05-03','Present'),
(13,673,'2026-05-03','Present'),
(14,674,'2026-05-03','Absent'),
(15,675,'2026-05-03','Present'),
(16,676,'2026-05-04','Present'),
(17,677,'2026-05-04','Absent'),
(18,678,'2026-05-04','Present'),
(19,679,'2026-05-04','Present'),
(20,680,'2026-05-04','Absent');
SELECT * FROM Attendence;
-- table for marks
CREATE TABLE Marks(id SERIAL PRIMARY KEY ,std_id INT,subject VARCHAR(50),marks INT);
INSERT INTO Marks VALUES(1,661,'DBMS',85),
(2,662,'DBMS',78),
(3,663,'DBMS',92),
(4,664,'DBMS',88),
(5,665,'DBMS',74),

(6,666,'Python',95),
(7,667,'Python',81),
(8,668,'Python',89),
(9,669,'Python',76),
(10,670,'Python',84),

(11,671,'Java',90),
(12,672,'Java',72),
(13,673,'Java',87),
(14,674,'Java',93),
(15,675,'Java',79),

(16,676,'OS',88),
(17,677,'OS',91),
(18,678,'OS',77),
(19,679,'OS',83),
(20,680,'OS',86),

(21,661,'CN',80),
(22,662,'CN',75),
(23,663,'CN',94),
(24,664,'CN',82),
(25,665,'CN',69),

(26,666,'AI',96),
(27,667,'AI',88),
(28,668,'AI',91),
(29,669,'AI',73),
(30,670,'AI',85),

(31,671,'ML',89),
(32,672,'ML',78),
(33,673,'ML',92),
(34,674,'ML',95),
(35,675,'ML',81),

(36,676,'Cloud',84),
(37,677,'Cloud',90),
(38,678,'Cloud',76),
(39,679,'Cloud',88),
(40,680,'Cloud',79),

(41,661,'Cyber Security',87),
(42,662,'Cyber Security',74),
(43,663,'Cyber Security',93),
(44,664,'Cyber Security',86),
(45,665,'Cyber Security',71),

(46,666,'Web Tech',91),
(47,667,'Web Tech',82),
(48,668,'Web Tech',89),
(49,669,'Web Tech',77),
(50,670,'Web Tech',94);
SELECT * FROM Marks;
-- display all students
SELECT * FROM Students;
--display std names and mail
SELECT std_name,std_mail FROM Students; 
-- display stds older than 20
SELECT * FROM Students
WHERE std_age>20;
-- display female students
SELECT * FROM Students
WHERE std_gender='Female';
--sort students age by decesding order
SELECT * FROM Students
ORDER BY std_age DESC;
--display top 5 students by marks
SELECT * FROM Marks
ORDER BY marks DESC
LIMIT 5;
--find teachers earing more then 50k
SELECT * FROM Teachers
WHERE salary>50000;
--find course fee betwwwen 10-30k
SELECT * FROM Courses
WHERE course_fee BETWEEN 10000 AND 30000;
--update any student mail
UPDATE Students
SET std_mail='newmail@gmail.com'
WHERE std_id=667;
--increase all teachers salary by 10%
UPDATE Teachers
SET salary =salary*1.10;
SELECT salary FROM Teachers;
--find total numbers of students
SELECT Count(*)
FROM Students;
--find avg teacher salary
SELECT AVG(salary)
FROM Teachers;
--find highest marks scored
SELECT MAX(marks)
FROM Marks;
--find minimum course fee
SELECT MIN(course_fee)
FROM Courses;
--count students dept wise
SELECT std_dept_id, COUNT(*) AS total_students
FROM students
GROUP BY std_dept_id;
--find avg marks subject wise
SELECT subject, AVG(marks) AS avg_marks
FROM Marks
GROUP BY subject;
--find no.of students in enrolled in each course
SELECT course_id, COUNT(std_id) AS total_students
FROM Enrollments
GROUP BY course_id;
--display departments having more then 5students
SELECT std_dept_id, COUNT(*) AS total_students
FROM Students
GROUP BY std_dept_id
HAVING COUNT(*) > 5;
SELECT * FROM Students;
SELECT s.name, d.dept_name
FROM Students s
JOIN department d
ON s.dept_id = d.dept_id;
CREATE TABLE Student1(std_id SERIAL PRIMARY KEY,name VARCHAR(100),gender VARCHAR(50));
select * from Student1;
--find stds from cse
SELECT * FROM department WHERE dept_name='CSE';
SELECT a.std_id,a.name,b.dept_name
FROM Students a INNER JOIN department b ON a.std_dept_id=b.dept_id
WHERE b.dept_name='CSE';
select * from students;
Drop DATABASE College;
drop TABLE IF EXISTS department;