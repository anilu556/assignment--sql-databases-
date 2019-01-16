/* TaABLE ARTIST

Add 15 new Artists to the Artist table. (ArtistId, Name)*/
INSERT INTO Artist (Name) VALUES
("Radio Head"),
("AC/DC"),
("The White Stripes"),
("Aerosmith"),
("Red Hot Chili Peppers"),
("Queen"),
("Led Zeppelin"),
("Guns N' Roses"),
("Nirvana"),
("Linkin Park"),
("Black Sabath"),
("Jimi Hendrix"),
("The Rolling Stones"),
("Green Day"),
("The Beatles");

SELECT * FROM Artist

/* Select 10 artists in reverse alphabetical order. */
SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;

/* Select 5 artists in alphabetical order.*/
SELECT * FROM Artist ORDER BY Name LIMIT 5 ;

/* Select all artists that start with the word "Black".*/
SELECT * FROM Artist WHERE Name LIKE "Black%";

/*Select all artists that contain the word "Black".*/
SELECT * FROM Artist WHERE Name LIKE "%Black%";

/* TABLE EMPLOYEE

List all Employee first and last names only that live in Calgary.*/
SELECT FirstName, LastName FROM Employee WHERE City LIKE "Calgary";

/*Find the first and last name and birthdate for the youngest employee.*/
SELECT FirstName, LastName,  Max(BirthDate)  FROM Employee;

/*Find the first and last name and birthdate for the oldest employee.*/
SELECT FirstName, LastName,  Min(BirthDate)  FROM Employee;

/*Find everyone that reports to Nancy Edwards (Use the ReportsTo column).You will need to query the employee table to find the Id for Nancy Edwards*/
SELECT * FROM Employee WHERE ReportsTo LIKE 2;

/*Count how many people live in Lethbridge.*/
SELECT COUNT (*) FROM Employee WHERE City LIKE "Lethbridge";

/* TABLE INVOICE

Count how many orders were made from the USA.*/
SELECT COUNT (*) FROM Invoice WHERE BillingCountry LIKE "USA";

/* Find the largest order total amount.*/
SELECT *, Max(Total) FROM Invoice;

/* Find the smallest order total amount.*/
SELECT *, Min(Total) FROM Invoice;

/* Find all orders bigger than $5.*/
SELECT * FROM Invoice WHERE Total >5;

/* Count how many orders were smaller than $5.*/
SELECT COUNT (*) FROM Invoice WHERE Total < 5;

/* Count how many orders were in CA, TX, or AZ (use IN).*/
SELECT COUNT (*) FROM Invoice WHERE BillingState IN ("CA", "TX", "AZ");

/* Get the average total of the orders.*/
SELECT AVG(Total) FROM Invoice;

/* Get the total sum of the orders.*/
SELECT SUM(Total) FROM Invoice;
