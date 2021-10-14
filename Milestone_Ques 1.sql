mysql-ctl cli   /*to stop the SQL server*/

CREATE DATABASE hw_student;   /*to create a DATABASE*/     

USE hw_student;   /*to use the created DATABASE*/     

CREATE TABLE `students_data`  /*to create a TABLE*/
(
	`roll_no` INT NOT NULL AUTO_INCREMENT,
	`first_name` CHAR(30) NOT NULL DEFAULT 'UNKNOWN',
	`last_name` CHAR(30),
	`class_rank` INT NOT NULL,
	PRIMARY KEY (`roll_no`)
);


INSERT INTO students_data(roll_no, first_name, last_name, class_rank)     /*to enter data in the TABLE*/
VALUES  
(1,'Kavita','Gupta',17),
(2,'Vidya','Balan',3),
(3,'Nidhi','Sharma',27),
(4,'Riya','Kumar',12),
(5,'Drishti','NULL',7),
(6,'Samiksha','NULL',1),
(7,'Poornima','NULL',6),     
(8,'Kavya','NULL',25),
(9,'UNKNOWN','NULL',2),
(10,'UNKNOWN','NULL',15),
(11,'Harshita','Mehra',4),
(12,'Avni','Chaturvedi',5),
(13,'Nidhi','KUmari',8),
(14,'Pawan','Kumar',10);

SELECT * FROM students_data;    /*to print the TABLE*/

SELECT roll_no,first_name,class_rank FROM students_data;  /*to print only the selected columns of the TABLE*/

ALTER TABLE students_data        /*to change the names of columns of the TABLE*/
CHANGE roll_no Roll number INT,
CHANGE first_name First_name CHAR(30),
CHANGE Last_name last_name name CHAR(30),
CHANGE class_rank Rank;

SELECT * FROM students_data;   /*to print the updated TABLE*/


