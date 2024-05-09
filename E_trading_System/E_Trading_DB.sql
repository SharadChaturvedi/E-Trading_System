create database E_Trading_Project
use E_Trading_Project

 
--Database

----------------------This is the table for the Hint Questions--------
Create table Hints 
(Hint_Id  int Primary Key Identity ,
Questions NVarchar (100))
INSERT INTO Hints (Questions) VALUES 
('What is your Favourite Sport?'),
('In what city were you born?'),
('What is the name of your first pet?'),
('What is your favorite movie?'),
('What street did you grow up on?');


----------------------This is the table for the Admin-----------------
Create table [Admin] 
(Admin_Id numeric(10) Primary key not null,
Admin_Email varchar(30) unique not null,
Admin_Name varchar(30) not null, 
[Password] varchar(20) unique not null,
Hint int foreign key references Hints(Hint_Id),
[Hint_Answers] varchar (200) not null)
insert into Admin values
(101,'sharadchaubey@gmail.com','sharad_Chaubey','Sharad@1999',1,'Cricket')

----------------------This is the table for the Customer ----------------
Create Table Customer 
([Customer_Id] numeric(10) Primary key,
[Customer_Name] varchar(30) not null,
[Customer_Email] varchar(30) unique not null,
Date_Of_Birth Date not null,
[Address] varchar(50) not null,
Balance float default 0,
Mobile_Number numeric(10),
[Password] varchar(20) not null,
[Hint_Id] int foreign key references Hints(Hint_Id),
[Hint_Answer] varchar(200) not null,
[Status] varchar(20))
 
----------------------This is the table for the User_Wallet ----------------
Create Table Wallet (
wallet_Id int primary key identity,
[Customer_Id] numeric(10) foreign key references Customer(Customer_Id),
[Date_of_Top_Up] date,
[Last_Top_Up] float,
[Total_Top_Up] float
)
 
----------------------This is the table for the Vendors ----------------
Create Table Vendors 
(Vendor_Id Numeric(10) Primary Key,
Vendor_Name varchar(20) not null,
Vendor_Email varchar(30) unique not null,
Mobile_Number Numeric(10) not null,
[Address] varchar(50) not  null,
Category varchar(40) not null,
Vendor_Age int not null,
[Passowrd] varchar(20) not null,
[Hint_Id] int foreign key references Hints(Hint_Id),
[Hint_Answer] nvarchar(50),
[Status] varchar(20))
insert into Vendors values(1001,'AmarNath','AmarNath123@gmail.com',9870006790,'Hyderabad','Electronics',7,'Amar@123',1,'cricket','Active')
insert into Vendors values(1002,'PeterSon','PeterSon123@gmail.com',9870006791,'Lucknow','Clothings',4,'PeterSon@123',2,'Lucknow','Active')
insert into Vendors values(1003,'Sanjay Singh','Sanjay@gmail.com',9870006792,'Kanpur','Grocery',4,'Sanjay@123',3,'Golu','Active')
insert into Vendors values(1004,'Sharad Malhotra','Sharad123@gmail.com',9870006793,'Mumbai','Automobile',4,'Sharad@123',3,'Raka','Active')
 
----------------------This is the table for the Orders ----------------
Create Table Orders
(Purchase_Id numeric(5) Primary key,
[Customer_Id] numeric(10) foreign key references Customer(Customer_Id),
Delivery_Date date,
[Order_Amount] float,
[Payment_Mode] varchar(20),
[Address] varchar(50),
[Status] varchar(30))
 

----------------------This is the table for the Order Details ----------------
Create Table Order_Details
(Order_Id numeric(3) primary key,
[Purchase_Id] numeric(5) foreign key references Orders(Purchase_Id),
Product_Name varchar(30),
Product_Price float)

----------------------This is the table for the Products ----------------
Create Table Products
(Product_Id numeric(10) primary key,
Vendor_Id numeric(10) foreign key references Vendors(Vendor_Id),
Product_Name varchar(40),
Brand varchar(30),
Color varchar(20),
Price float,
Available_Stock int,
[Status] varchar(25))
ALTER TABLE Products
ADD ImageFileName varchar(100);
UPDATE Products
SET ImageFileName = 'Television.jpg'
WHERE Product_Name = 'Television';
insert into Products Values (7,1002,'Sweater','Gucchi','Brown',3200,2,'Available','Sweater.jpg')
insert into Products Values (8,1002,'Woolen Top','Prada','Green',4000,2,'Available','WoolenTop.jpg')
insert into Products Values (9,1002,'Jeans','Jack&Jones','Blue',3600,2,'Available','Jeans.jpg')
insert into Products Values (10,1002,'T-Shirt','Gucchi','Multi-Color',1000,2,'Available','Tshirts.jpg')
insert into Products Values (11,1002,'Hoodies','Adidas','Gray',5000,2,'Available','GreyHoodie.jpg')
insert into Products Values (13,1002,'Rice','HindustanRice','Palewhite',1200,2,'Available','Rice.jpg')
insert into Products Values (14,1003,'Cooking Oil','Fortune','yellow',1000,6,'Available','CookingOil.jpg')
insert into Products Values (15,1003,'Eggs','Indianeggs','Brown',200,6,'Available','Eggs.jpg')
insert into Products Values (16,1003,'Bread','Amul','Brown',100,6,'Available','Bread.jpg')
insert into Products Values (17,1003,'Vegetable Bag','Multi-Color','Black',300,6,'Available','Vegetables.jpg')
insert into Products Values (18,1003,'Fruit Bag','FreshIndia','multi-Color',400,6,'Available','Fruits.jpg')
insert into Products Values (19,1003,'Sugar','fortune','White',400,6,'Available','Sugar.jpg')
insert into Products Values (20,1004,'Tycoon-5 series','BMW','Black',70000000,1,'Available','BMW.jpg')
insert into Products Values (21,1004,'GLA200D','Mercedes-Benz','Black',100000000,2,'Available','Benz.jpg')
insert into Products Values (22,1004,'G-Wagon','Mercedes-Benz','Black',200000000,1,'Available','G.jpg')
insert into Products Values (23,1004,'Avantador','Lamborgini','Red',70000000,1,'Available','Lambo.jpg')
insert into Products Values (24,1004,'Fortuner','Toyota','Black',42000000,1,'Available','Fortuner.')








----------------------This is the Table for Bucket------------------
create Table BucketList(
Serial_Number int  identity,
Product_Id numeric(10) foreign key references Products(Product_Id),
Customer_Id numeric(10) foreign key references Customer(Customer_Id))

  
----------------------This is the table for the Order_Cancellation----------------
Create table Order_Cancellation
(Cancellation_Id numeric(5) Primary key,
Order_Id numeric(3) foreign key references Order_Details(Order_Id),
Cancellation_Date DateTime not null,
Refund_Amount numeric(8))
 

 
 
 
 
select * from Admin
Select * from Customer
select * from Vendors
select * from Products
select * from Order_Details
select * from Order_Cancellation
select * from Orders
select * from Wallet
select * from BucketList
select * from Hints
select * from Orders