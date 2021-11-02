mysql-ctl cli   /*to stop the SQL server*/

CREATE DATABASE pastry_shop;   /*to create a DATABASE*/

USE pastry_shop;   /*to use the created DATABASE*/

CREATE TABLE `pastry_shop`   /*to create a TABLE*/
(
	`s_no` INT NOT NULL AUTO_INCREMENT,
	`pastry_name` CHAR(30) NOT NULL DEFAULT 'UNAVAILABLE',
	`price` INT NOT NULL DEFAULT '9999',
	PRIMARY KEY (`s_no`)
);


INSERT INTO pastry_shop(s_no,pastry_name,price)  /*to enter data in the TABLE*/   
VALUES  
(1,'Vanilla pastry',70),
(2,'Butter cookie pastry',78),
(3,'Chocolate pastry',88),
(4,'Cream & nut pastry',99),
(6,'Red velvet pastry',89),
(9,'Honey cream pastry',76),
(100,'Fruit & nut pastry',88),     
(150,'Mixed fruit pastry ',85),
(151,'Dark forest pastry',89),
(152,'mango pastry',75),
(153,'UNAVAILABLE',88),
(154,'UNAVAILABLE',90),
(155,'UNAVAILABLE',76),
(156,'Strawberry pastry',9999),
(157,'Ice cream and pastry combo',9999);


SELECT * FROM pastry_shop;    /*to print the TABLE*/