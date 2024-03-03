drop database cashvan;
create database cashvan;
use cashvan;

Create table Employee (
SNN int auto_increment,
Name varchar(60),
address varchar(30),
PhoneNumber varchar(10),
Availablity bool,
Salary real,
Gmail varchar(25),
DateOfBirth Date,
CivilStatue varchar (25),
access varchar (20),
primary Key(SNN)
);
select * from paymenttoproduct ;
Create Table Superiver(
SNN int auto_increment,
primary key (SNN),
FOREIGN KEY (SNN) REFERENCES Employee(SNN)
);

Create Table Manager(
SNN int auto_increment,
primary key (SNN),
FOREIGN KEY (SNN) REFERENCES Employee(SNN)
);

Create Table Delegate(
SNN int auto_increment,
VanID int,
primary key (SNN),
FOREIGN KEY (SNN) REFERENCES Employee(SNN),
FOREIGN KEY (VanID) REFERENCES Van(VanID)
);

Create Table Van (
VanID int auto_increment,
Price real,
Quantity int,
ProductID int,
ProductName varchar(50),
Unit real,
Barcode varchar(25),
primary key(VanId)

);


CREATE TABLE CUSTOMER(
    CUS_ID INT PRIMARY KEY auto_increment,
    CUS_NAME VARCHAR(60),
    ADDRESS VARCHAR(30),
    PhoneNumber VARCHAR(10), 
    category INT,
    Rented_Product VARCHAR(20),
    Wanted_Product VARCHAR(20),
    SNN INT,
    FOREIGN KEY (SNN)
	REFERENCES Employee (SNN)
); 

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY auto_increment,
    Product_NAME VARCHAR(30),
    Wieght INT,
    price real,
    category INT,
    Barcode VARCHAR(25),
    ProducedDate DATE,
    ExpieredDate DATE,
    SNN INT,
    FOREIGN KEY (SNN)
	REFERENCES Employee (SNN)
);
ALTER TABLE Product
ADD COLUMN PricePerUnit real;
ALTER TABLE Product
drop COLUMN SNN ;
CREATE TABLE BRANCH (
    BRANCH_ID INT PRIMARY KEY auto_increment,
    ADDRESS VARCHAR(30),
    Product_ID int,
    FOREIGN KEY (Product_ID)
	REFERENCES Product (Product_ID)
);

 Create TABLE OrderINFO(
OrderID int auto_increment,
DateOfOrder date,
OnSale bool,
SaleAmount int,
primary key (OrderId)
);


CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY auto_increment,
    Method VARCHAR(20),
    PaymentDate DATE,
    Remain VARCHAR(10),
    CUS_ID INT,
    Order_ID int,
    FOREIGN KEY (CUS_ID)
	REFERENCES CUSTOMER (CUS_ID),
    FOREIGN KEY (Order_ID)
	REFERENCES  OrderINFO  (OrderId)
);
ALTER TABLE payment
ADD COLUMN Amount real ;

Create Table VanToProduct (
Product_ID INT ,
VanID int,
DateOfImport Date,
DateOfExpierd Date,
primary key (Product_ID,VanID),
FOREIGN KEY (Product_ID)
	REFERENCES Product (Product_ID),
FOREIGN KEY (VanID)
	REFERENCES Van (VanID)
);

Create Table VanToDelegate (
SNN INT,
VanID int,
driving_license varchar(50),
insurance varchar(50),
primary key (SNN,VanID),
FOREIGN KEY (SNN)
	REFERENCES Delegate (SNN),
FOREIGN KEY (VanID)
	REFERENCES Van (VanID)
);

Create Table DelegateToCustomer (
SNN INT,
Cust_ID int,
DateOfStart Date,
PaymentID int,
primary key (SNN,Cust_ID),
FOREIGN KEY (SNN)
	REFERENCES Delegate (SNN),
FOREIGN KEY (Cust_ID)
	REFERENCES Customer (Cus_ID),
FOREIGN KEY (PaymentId)
	REFERENCES Payment (PaymentID)
);


CREATE TABLE Roles (
  RoleId int auto_increment NOT NULL,
  RoleTitle varchar(25) DEFAULT NULL,
  PRIMARY KEY (RoleId)
);

CREATE TABLE User (
  UserID int auto_increment NOT NULL,
  UserName varchar(25) DEFAULT NULL,
  UserPassword varchar(25) DEFAULT NULL,
  UserRoleId int DEFAULT NULL,
  PRIMARY KEY (UserID),
  KEY UserRoleId (UserRoleId),
  FOREIGN KEY (UserRoleId) REFERENCES Roles (RoleId) ON DELETE SET NULL ON UPDATE CASCADE
) ;

CREATE TABLE Login(
  LoginID INT auto_increment NOT NULL,
  LoginDate DATE DEFAULT NULL,
  UserID int DEFAULT NULL,
  PRIMARY KEY (LoginID),
  KEY UserID (UserID),
  FOREIGN KEY (UserID) 
  REFERENCES User (UserID) ON DELETE SET NULL ON UPDATE CASCADE
);
ALTER TABLE Login
ADD COLUMN username VARCHAR(255) DEFAULT NULL;
ALTER TABLE Login
ADD COLUMN userpassword VARCHAR(10) DEFAULT NULL;

CREATE TABLE ordertoproduct (
    ProductToOrderID INT AUTO_INCREMENT PRIMARY KEY,
    Product_ID INT,
    OrderID INT,
    ProductPrice DOUBLE,
  FOREIGN KEY (Product_ID)
	REFERENCES Product (Product_ID),
FOREIGN KEY (OrderID)
	REFERENCES OrderINFO (OrderID)
);
ALTER TABLE ordertoproduct
ADD COLUMN Quantity int;



Create Table PaymentToProduct (
Product_ID INT,
PaymentID int,
Quantity int,
ProductPrice double DEFAULT NULL,
primary key (Product_ID,PaymentID),
FOREIGN KEY (Product_ID)
	REFERENCES Product (Product_ID),
FOREIGN KEY (PaymentID)
	REFERENCES Payment (PaymentID)
);

Create Table BranchToProduct (
Product_ID INT,
BranchID int,
Quantity int,
primary key (Product_ID,BranchID),
FOREIGN KEY (Product_ID)
	REFERENCES Product (Product_ID),
FOREIGN KEY (BranchID)
	REFERENCES Branch (BRANCH_ID)
);

Insert into roles(roletitle) values('Admin');
Insert into roles(roletitle) values('Customer');
select * from roles;
insert into user(username,userpassword,userRoleId) values ('Lana Bat','1200308',1);
select * from user;



INSERT INTO OrderInfo (DateOfOrder, OnSale, SaleAmount) VALUES ('2024-01-13', true, 100);
insert into login(logindate,userid,username,userpassword) values ('2024-1-1',1,'Lana Bat','1200308');
select * from login ;
select * from employee ;
Select * from product;
insert into product (product_id,product_name,wieght, category,barcode,ProducedDate,ExpieredDate,PricePerUnit)
Values(2,'Choclate Milk',250,1,202020,'2024-1-1','2024-1-9',10);
INSERT INTO OrderInfo (DateOfOrder, OnSale, SaleAmount) VALUES ('2024-01-13', true, 100);

SELECT p.Product_NAME, COUNT(op.OrderID) AS OrderCount 
                FROM Product p ,OrderToProduct op , OrderInfo o where 
                p.Product_ID = op.Product_ID AND
				op.OrderID = o.OrderID
                GROUP BY p.Product_NAME;

select * from paymenttoproduct;
select * from ordertoproduct;
select * from orderinfo;
select * from payment;
select * from customer;
insert into customer (cus_id,cus_name) values (000,'Lana');

insert into product (product_id,product_name,wieght, category,barcode,ProducedDate,ExpieredDate,PricePerUnit)
Values(3,'whole Milk',250,1,202020,'2024-1-1','2024-1-9',10);
insert into product (product_id,product_name,wieght, category,barcode,ProducedDate,ExpieredDate,PricePerUnit)
Values(4,'White Cheese',500,2,202020,'2024-1-1','2024-1-9',15);
insert into product (product_id,product_name,wieght, category,barcode,ProducedDate,ExpieredDate,PricePerUnit)
Values(5,'Cheeder Cheese',500,2,202020,'2024-1-1','2024-1-9',25);