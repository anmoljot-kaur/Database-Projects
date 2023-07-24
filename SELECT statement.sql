/* Author: Anmoljot Kaur 
 Date: July 21, 2023
 Topic: Selecting Data from Database
 Objectives:
   1. Use the SELECT statement to query a database
   2. Use the COUNT() function
   3. Use the following operators to query a database:
       <
       >
       =
       WHERE
       ORDER BY
       AND  */

/*This command lists the existing databases*/
SHOW DATABASES;

/* This command lists all rows and columns in the country table*/
SELECT * 
 FROM world.country;

/* count() command is used to query the number of rows in a table */
SELECT COUNT(*) 
 FROM world.country;

/*This command is used to list all columns from the country table */
SHOW COLUMNS 
 FROM world.country;

/* This command is used to list some specific columns from the contry table*/
SELECT Name, Capital, Region, SurfaceArea, Population 
 FROM world.country;

/*To add more descriptive names to the column names, use AS option*/
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country;

/*To sort the results of a query based on a specific column, use ORDER BY option*/
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country 
 ORDER BY Population;

/*Same as previous command*/
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country 
 ORDER BY Population ASC;

/*ORDER BY option sorts by default in the ascending order. Alternatively, 
you can ASC or DESC keyword to sort in either ascending or descending order*/
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country 
 ORDER BY Population DESC;

/*Conditions can be added to the SELECT query using WHERE clause. 
To list all rows with a population greater than 50,000,000*/
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country 
 WHERE Population > 50000000 
 ORDER BY Population DESC;

/* > is a comparison operator. You can use other comparision operators such as >, < , =*/

/*More than one condition can be combined in one query. 
The following query uses two conditions: all rows with a population greater than 50,000,000 
and all rows with a population less than 100,000,000. The query includes the AND operator to indicate 
that both the conditions must be true*/
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country 
 WHERE Population > 50000000 AND Population < 100000000 
 ORDER BY Population DESC;

/*Qusetion: Which country in Southern Europe has a population greater than 50,000,000? */
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
 FROM world.country 
 WHERE Population > 50000000 AND Region = "Southern Europe";

