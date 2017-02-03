CREATE TABLE ITEM
(
ItemID int,
ItemName varchar(50),
ItemType varchar(50),
ItemCat varchar(50),
ItemCost int,
primary key(ItemID)
);

CREATE TABLE Customer
(
CID int,
FirstName varchar(50),
LastName varchar(50),
Address varchar(50),
Pnumber int,
primary key(CID) 
);

CREATE TABLE Employee 
(
EmpID int,
FName varchar(50),
LName varchar(50),
Designation varchar(50),
Phonenumber int,
Salary int,
primary key(EmpID)
);

CREATE TABLE Supplier
(
SupID int,
SupName varchar(50),
SupContact int,
SupCost int,
primary key(SupID)
);


CREATE TABLE Order 
(
ItemID int,
CID int,
Quantity int, 
primary key(ItemID,CID),
FOREIGN KEY(ItemID) REFERENCES Item(ItemID),
FOREIGN key(CID) references Customer(CID) 
);

CREATE TABLE Ingredient      
(
IngID int,
IngName varchar(50),
primary key(IngID)
);

CREATE TABLE ConsistsOf      
(
IngID int,
ItemID int,
Quantity int,
primary key(IngID,ItemID),
FOREIGN KEY(IngID) REFERENCES Ingredient(IngID),
FOREIGN KEY(ItemID) REFERENCES Item(ItemID)
);

CREATE TABLE Supplies     
(
IngID int,
SupID int,
Quantity int, 
primary key(IngID,SupID),
FOREIGN KEY(IngID) REFERENCES Ingredient(IngID),
FOREIGN key(SupID) references Supplier(SupID) 
);

CREATE TABLE OrderDate     
(
ItemID int,
CID int,
OrderDate date,
primary key(ItemID,CID,OrderDate),
FOREIGN KEY(ItemID) REFERENCES Item(ItemID),
FOREIGN key(CID) references Customer(CID) 
);

CREATE TABLE Leave     
(
EmpID int,
FromDate date,
ToDate date,
primary key(EmpID,FromDate,ToDate),
FOREIGN KEY(EmpID) REFERENCES Employee(EmpID)
);









