--DDL Constraints

---CREATING DATABASE SALES
create database sales;
use sales;

---CREATING TABLE ORDERS IN THE DATABASE SALES 
create table orders(
Order_Id int auto_increment primary key,
Customer_name varchar(50) not null,
Product_category varchar(50),
Ordered_item varchar(50) not null,
Contact_no varchar(20) unique);

--ADDING NEW COLUMN ORDER QUANTITY TO TABLE ORDERS
alter table orders add column Order_quantity int;
desc orders;

---RENAMING ORDER TABLE AS SALES ORDERS TABLE
rename table orders to sales_orders;
desc sales_orders;

---INSERING VALUES INTO TABLE SALES ORDERS
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('John',null,'Pen',9876512345,10);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Jose','Electronics','Mobile',9876512346,5);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Johan','Fashion','Shirt',9876512347,10);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Jovan','Cosmetics','Cream',9876512348,2);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Juvan','Cosmetics','Shampoo',9876512349,4);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Raechal','Fashion','Shoes',9876512326,7);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Ethan','Electronics','TV',9876512336,1);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Noah','Home Appliances','Oven',9876512356,2);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Chris','Fashion','Jacket',9876512366,12);
insert into sales_orders(Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity) values('Royce','Home Appliances','Dishwasher',9876512376,1);

desc sales_orders;
select * from sales_orders;

--RETRIEVING CUSTOMER NAME AND ORDERED ITEM FROM SALES ORDER TABLE
select Customer_name,Ordered_item from sales_orders;

--CHANGING NAME OF PRODUCT USING UPDATE COMMAND
update sales_orders set Ordered_item ='Pencil' where Customer_name ='John';

--DELETING THE CUSTOMER ROYCE FROM SALES ORDER TABLE
delete from sales_orders where Customer_name='Royce';

desc sales_orders;
--DELETING SALES ORDER TABLE FROM DATABASE
drop table sales_orders;