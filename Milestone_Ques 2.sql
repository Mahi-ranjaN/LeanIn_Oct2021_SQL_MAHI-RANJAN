mysql-ctl cli                 /*to stop the SQL server*/

USE hw_student;            /*to use the created DATABASE*/ 

CREATE TABLE `teachers`           /*to create a TABLE*/
(
	`id_no` INT NOT NULL AUTO_INCREMENT,
	`Name` CHAR(60) NOT NULL DEFAULT 'UNKNOWN USER',
	`Address` CHAR(100),
	`Age` INT NOT NULL,
	PRIMARY KEY (`id_no`)
);


INSERT INTO teachers(id_no,Name,Address,Age)           /*to enter data in the TABLE*/   
VALUES  
(1,'Priety Goel','Shimla Road, Himachal Pradesh',35),
(2,'Sunil Kumar Verma', 'LodhiRoad, New Delhi',28),
(3,'Priyanka','Tonk,Rajasthan',31),
(4,'Anshika kapoor','NULL',0),
(5,'UNKNOWN USER','Dwarka,Delhi',25),
(6,'UNKNOWN USER','Tonk,Rajasthan',38),
(7,'Sakshi','NULL',28),     
(8,'Sangam Jha','NULL',31);


SELECT * FROM teachers;               /*to print the TABLE*/


UPDATE teachers                /*to update the required values of a TABLE*/
SET Address = 'N/A'
WHERE Address = 'NULL';

SELECT * FROM teachers;          /*to print the updated TABLE*/

Drop table teachers,students_data;       /*to drop the required tables together*/

DROP hw_student;             /*to drop the required database*/