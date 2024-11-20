# MySQL-DDL-Constraint

**Project Description:**
      
      This project demonstrates the use of DDL (Data Definition Language) constraints in MySQL. 
      This is intended for educational purposes to understand the basics of database manipulation 
      using MySQL.

**Features:**
      The script performs the following tasks:

      1.Create a Database: Creates a database named Sales.
      2.Create a Table:Creates a table Orders with the fields:Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No.
      3.DDL Operations:
          * Adds a new column order quantity to the orders table.
          * Renaming the orders table to the sales_orders table.
          * Inserting 10 rows into the sales_orders table.
          * Retrieving customer_name and Ordered_Item from the sales_orders table.
          * Changing the name of the product of any row. 
          * Delete the sales_orders table from the database.
          
**Commands and explanation:**
          * Step 1: CREATE DATABASE School;                                                     ---Create the database
                  
                    USE School;                                                                 --- Use the newly created database

          * Step 2: CREATE TABLE STUDENT (                                                      ---Create the STUDENT table with fields Roll_No,Name,Mark and Grade.
                    Roll_No INT PRIMARY KEY AUTO_INCREMENT,                                     ---Field Roll_No is the primary key with datatype integer.
                    Name VARCHAR(100) NOT NULL,                                                 ---Fields Name and Marks should not be NULL.Datatype of field Name is
                    Marks INT NOT NULL,                                                            Variable character and Marks is integer. 
                    Grade CHAR(2) CHECK (Grade in ('A+','A','B+','B','C+','C','D+','D'))        --- CHECKS value of grade in the given list.
                    );

          * Step 3: SELECT * FROM STUDENT;                                                      --- Displays the table Student

          * Step 4: ALTER TABLE STUDENT ADD Contact INT;                                       ---Adds a column named Contact to the STUDENT table

          * Step 5: ALTER TABLE STUDENT DROP COLUMN Grade;                                     ---Removes the Grade column from the STUDENT table

          * Step 6: RENAME TABLE STUDENT TO CLASSTEN;                                          ---Renames the STUDENT table to CLASSTEN

          * Step 7: TRUNCATE TABLE CLASSTEN;                                                   ---Delete all rows from the CLASSTEN table

          * Step 8: DROP TABLE CLASSTEN;                                                       --- Remove the CLASSTEN table from the database
