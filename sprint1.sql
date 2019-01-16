CREATE DATABASE anilu556

USE anilu556

CREATE TABLE People (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (50),
    Age INT (3),
    Height INT (3),
    City VARCHAR (50),
    FavoriteColor VARCHAR (50)
);

/*Describe People para ver tabla */

INSERT INTO People (Name, Age, Height, City, FavoriteColor) VALUES
("Addy Osmani", 20, 178, "California", "yellow"),
("Paul Irish", 25, 191, "Austin", "orange"),
("Eric Elliot", 30, 165, "Portland", "blue"),
("Jack Wilshire", 18, 189, "San Francisco", "purple"),
("Ayrton Senna", 32, 170, "Texas", "green");

/* SELECT * FROM People para ver los datos */

/*List all the people in the Person table by Height from tallest to shortest.*/
SELECT Name, Height FROM People ORDER BY Height DESC;

/*List all the people in the Person table by Height from shortest to tallest.*/
SELECT Name, Height FROM People ORDER BY Height ASC;

/* List all the people in the Person table by Age from oldest to youngest.*/
SELECT Name, Age FROM People ORDER BY Age DESC;

/* List all the people in the Person table older than age 20.*/
SELECT Name, Age FROM People WHERE Age > 19;

/*List all the people in the Person table that are exactly 18.*/
SELECT Name, Age FROM People WHERE Age = 18;

/*List all the people in the Person table that are less than 20 and older than 30.*/
SELECT Name, Age FROM People WHERE Age >= 20 AND  Age <= 30;

/*List all the people in the Person table that are not 27 (Use not equals).*/
SELECT Name, Age FROM People WHERE NOT Age = 27;

/*List all the people in the Person table where their favorite color is not red.*/
SELECT Name, FavoriteColor FROM People WHERE NOT FavoriteColor = "red";

/*List all the people in the Person table where their favorite color is not red and is not blue.*/
SELECT Name, FavoriteColor FROM People WHERE (FavoriteColor NOT LIKE "red") AND (FavoriteColor NOT LIKE "blue");

/*List all the people in the Person table where their favorite color is orange or green.*/
SELECT Name, FavoriteColor FROM People WHERE (FavoriteColor LIKE "orange") OR (FavoriteColor LIKE "green");

/*List all the people in the Person table where their favorite color is orange, green or blue (use IN).*/
SELECT Name, FavoriteColor FROM People WHERE FavoriteColor IN ("orange", "green", "blue");

/*List all the people in the Person table where their favorite color is yellow or purple (use IN).*/
SELECT Name, FavoriteColor FROM People WHERE FavoriteColor IN ("yellow", "purple");

/*Create Table Orders*/

CREATE TABLE Orders (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PersonId INT,
    ProductName VARCHAR (50),
    ProductPrice INT (4),
    Quantity INT (3),
    FOREIGN KEY (PersonId) REFERENCES People(Id)
);

/*Describe Orders para ver tabla */

INSERT INTO Orders (PersonId, ProductName, ProductPrice, Quantity) VALUES
(1, "Beer", 25, 2),
(3, "Tacos", 15, 4),
(4, "Soda", 18, 1),
(1, "Hamburguer", 30, 1),
(2, "Hotdog", 20, 3)
;

/* Select all the records from the Orders table. */
SELECT * FROM Orders

/* Calculate the total number of products ordered. */
SELECT SUM(Quantity) FROM Orders;

/* Calculate the total order price.*/
/* Adding Total Column*/
ALTER TABLE Orders ADD COLUMN Total INT (3);
/* Calculating Total */
SELECT (Quantity * ProductPrice) AS Total FROM Orders ;

/* Calculate the total order price by a single PersonID.*/
SELECT PersonId, SUM(Quantity * ProductPrice) AS Total FROM Orders GROUP BY PersonId ;
