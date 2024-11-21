# MySQL-Data Constraints in MySQL

**Overview**
      
       This project demonstrates the use of Data constraints in MySQL.Data constraints ensure data quality,
       integrity and consistency in database.Contraintss define rules for data entry for preventing errors and
       inconsistencies.Here we discuss about few data constraints in MySQL with example.

**Types of Data Constraints:**

       1.Primary Key         : Unique identifier for each record.
       2.Foreign Key         : Ensure relation between columns in two tables.
       3.Unique              :Prevents duplicate values.
       4.Not Null            :Ensures that the column cannot have a NULL value.
       5.Auto_increment      :Automatically generates a unique number whenever a new row is inserted.
       6.Default             :Assigns default value if no value is specified.
       7.Check               :Validate data against specific condition.


**Illustrating Data Constraints with a Sample Database:**
      
      The script performs the following:

      1.Creating a database named Sales.
      2.Creating a table Orders with the fields:Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No.
      3.DDL Operations:
          * Adding a new column order quantity to the orders table.
          * Renaming the orders table to the sales_orders table.
          * Inserting 10 rows into the sales_orders table.
          * Retrieving customer_name and Ordered_Item from the sales_orders table.
          * Changing the name of the product in any row. 
          * Deleting the sales_orders table from the database.

**CREATING DATABASE SALES**
            
      create database sales;                                         --created database sales
      use sales;                                                     --selects specified database to work with.

**CREATING TABLE ORDERS IN THE DATABASE SALES**
           
           create table orders(                                      --creates table named orders
           Order_Id int auto_increment primary key,                  --a column to store order id,holds integer value,automatically 
                                                                       generates when a row is inserted.Acts as unique identfier for 
                                                                       the table.
           Customer_name varchar(50) not null,                       --a column to store customer name,hold variable character allows 
                                                                       upto 50 characters.Ensures every record has a value ie it 
                                                                       cannot be left blank.
           Product_category varchar(50),                             --a column to store category of product,holds variable character 
                                                                       allows upto 50 characters.
           Ordered_item varchar(50) not null,                        --a column that stores ordered item details which of datatype 
                                                                       variable character and allows upto 50 characters.It cannot be 
                                                                       left blank.
           Contact_no varchar(20) unique);                           --Contact number details are stored in this column.No duplicate 
                                                                       values are permitted in this column.
                                                

**ADDING NEW COLUMN ORDER QUANTITY TO TABLE ORDERS**
          
          alter table orders add column Order_quantity int;          --new column order quantity with datatype integer is added to the 
                                                                       table.
          desc orders;                                               --displays the table structure

**RENAMING ORDER TABLE AS SALES ORDERS TABLE**
          
          rename table orders to sales_orders;                       --renames table name to sales orders
          desc sales_orders;                                         --displays the table structure

**INSERING VALUES INTO TABLE SALES ORDERS**
        
        insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity)      -inserts values into the 
                                                                                                              column fields.
        values('John',null,'Pen',9876512345,10);

        insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
        values('Jose','Electronics','Mobile',9876512346,5);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Johan','Fashion','Shirt',9876512347,10);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Jovan','Cosmetics','Cream',9876512348,2);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Juvan','Cosmetics','Shampoo',9876512349,4);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Raechal','Fashion','Shoes',9876512326,7);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Ethan','Electronics','TV',9876512336,1);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Noah','Home Appliances','Oven',9876512356,2);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) 
       values('Chris','Fashion','Jacket',9876512366,12);

       insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity)
       values('Royce','Home Appliances','Dishwasher',9876512376,1);

       desc sales_orders;                                                                        --displays the table structure
       select * from sales_orders;                                                               --shows the data stored in the table

**RETRIEVING CUSTOMER NAME AND ORDERED ITEM FROM SALES ORDER TABLE**
       
       select Customer_name,Ordered_item from sales_orders;                                      --displays stored data in the fields 
                                                                                                   customer name and order name.

**CHANGING NAME OF PRODUCT USING UPDATE COMMAND**
       
       update sales_orders set Ordered_item ='Pencil' where Customer_name ='John';              --changes the ordered item as Pencil 
                                                                                                  of the customer John.

**DELETING THE CUSTOMER ROYCE FROM SALES ORDER TABLE**
       
       delete from sales_orders where Customer_name='Royce';                                    --deletes customer named Royce from 
                                                                                                 the table.                            
**DELETING SALES ORDER TABLE FROM DATABASE**
      
      drop table sales_orders;                                                                 --deletes table sales order from the 
                                                                                                database.
         
