/* "QUESTION 1 : CLOSET INVENTORY" */

mysql-ctl cli    /*to stop the SQL server*/

CREATE DATABASE Mahi_db;   /*to create a DATABASE*/

USE Mahi_db;   /*to use the created DATABASE*/

CREATE TABLE shirts  /*to create a TABLE*/
(
	shirt_id INT(11) NOT NULL AUTO_INCREMENT,
	article VARCHAR(100) DEFAULT NULL,
	colour VARCHAR(100) DEFAULT NULL,
	shirt_size VARCHAR(100) DEFAULT NULL,
	last_worn VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY (shirt_id)
);

INSERT INTO shirts (shirt_id,article,colour,shirt_size,last_worn)     /*to enter data in the TABLE*/   
VALUES
(1,'t-shirt','white','S',10),
(2,'t-shirt','green','S',200),
(3,'polo shirt','black','M',10),
(4,'tank top','blue','S',50),
(5,'t-shirt','pink','S',0),
(6,'polo shirt','red','M',5),
(7,'tank top','white','S',200),
(8,'tank top','blue','M',15),
(9,'purple','polo shirt','medium',50);

SELECT * FROM shirts;   /*to print the TABLE*/






/* "QUESTION 2 : Try yourself to write codes by looking at the tables" */


/* 1. */

SELECT article,colour FROM shirts; 



/* 2. */


SELECT shirt_id,article,colour,shirt_size,last_worn FROM shirts   
WHERE shirt_id = 3 OR  shirt_id = 6 or shirt_id = 8;



/* 3. */


SELECT article,colour,shirt_size,last_worn FROM shirts   
WHERE shirt_id = 3 OR  shirt_id = 6 or shirt_id = 8;





/* "QUESTION 3 : UPDATE table shirts" */



UPDATE shirts                  /* 1. Change size to ‘L’ for article 'polo shirt’ */
SET shirt_size = 'L'
WHERE article = 'polo shirt' ;

SELECT shirt_id,article,colour,shirt_size,last_worn FROM shirts   /* 2. Print the specific article updated */
WHERE article = 'polo shirt';





UPDATE shirts                  /* 3. Change last_worn to 0 for any last_worn = 15 */
SET last_worn = 0
WHERE last_worn = 15 ;

SELECT shirt_id,article,colour,shirt_size,last_worn FROM shirts   /* 4. Print the specific article updated */
WHERE last_worn = 0;  






UPDATE shirts             /* 5. Change color to 'off white' and shirt_size to 'XS' wherever color is'white' */
SET colour = 'off-white', shirt_size = 'XS'
WHERE colour = 'white' ;


SELECT shirt_id,article,colour,shirt_size,last_worn FROM shirts   /* 6. Print the specific article updated */
WHERE colour = 'off-white';




SELECT * FROM shirts;    /* Print the complete updated shirts table */







/* "QUESTION 4: DELETE" */


DELETE FROM shirts       /* 1. Delete all the shirts which were worn equal/more than 200 days ago */
WHERE last_worn = 200;

SELECT * FROM shirts;    /* Print the updated table */





DELETE FROM shirts      /* 2. Delete all the tank tops */
WHERE article = 'tank top';  

SELECT * FROM shirts;    /* Print the updated table */




DELETE FROM shirts;     /* 3. Delete all shirts without deleting the table*/

SELECT * FROM shirts;   /* Print the updated table */