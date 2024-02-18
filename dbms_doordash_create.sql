CREATE DATABASE doordash;
USE doordash;

CREATE TABLE Customer
(
	CustomerID INT NOT NULL,
	First_name VARCHAR(45) NOT NULL,
    Last_name VARCHAR(45),
    PhoneNo BIGINT NOT NULL,
    Email VARCHAR(255),
    CONSTRAINT Customer_PK PRIMARY KEY (CustomerID)

);

CREATE TABLE Address
(
	AddressID INT NOT NULL,
    AddressLine1 VARCHAR(255) NOT NULL,
    AddressLine2 VARCHAR(255),
    City VARCHAR(45),
	State VARCHAR(45),
    Zipcode INT NOT NULL,
    CONSTRAINT Address_PK PRIMARY KEY (AddressID)
    
);

CREATE TABLE CustomerAddress
(
	CustomerID INT NOT NULL,
    AddressID INT NOT NULL,
    PRIMARY KEY (CustomerID, AddressID),
    CONSTRAINT CustomerAddress_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID), 
    CONSTRAINT CustomerAddress_FK2 FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE Restaurant
(
	RestaurantID INT NOT NULL,
    AddressID INT,
    RestaurantName VARCHAR(45) NOT NULL,
    CuisineType VARCHAR(45),
	CONSTRAINT Restaurant_PK PRIMARY KEY (RestaurantID),
    CONSTRAINT Restaurant_FK FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
    
);

CREATE TABLE Menu
(
	MenuID INT NOT NULL,
    RestaurantID INT,
    FoodName VARCHAR(255) NOT NULL,
    FoodNameDescription VARCHAR(255),
    Amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT Menu_PK PRIMARY KEY (MenuID),
    CONSTRAINT Menu_FK FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
    
);

CREATE TABLE DeliveryAgent
(
    AgentID INT NOT NULL,
    First_name VARCHAR(45) NOT NULL,
    Last_name VARCHAR(45),
    PhoneNo BIGINT NOT NULL,
	VehicleType VARCHAR(45),
    DriversLicenseNo VARCHAR(60),
    CONSTRAINT DeliveryAgent_PK PRIMARY KEY (AgentID)
    
);

CREATE TABLE Orders
(
	OrderID INT NOT NULL,
    CustomerID INT,
    Dates DATETIME NOT NULL,
    MenuID INT NOT NULL,
    Quatity INT NOT NULL,
    AgentID INT NOT NULL,
    CONSTRAINT Orders_PK PRIMARY KEY (OrderID),
    CONSTRAINT Orders_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CONSTRAINT Orders_FK2 FOREIGN KEY (AgentID) REFERENCES DeliveryAgent(AgentID),
    CONSTRAINT Orders_FK3 FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)
   
);

CREATE TABLE Payment
(
	PaymentID INT NOT NULL,
    CustomerID INT,
    PaymentMethod VARCHAR(45) NOT NULL,
    Dates DATETIME NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
	CONSTRAINT Payment_PK PRIMARY KEY (PaymentID),
    CONSTRAINT Payment_FK FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
    
);

CREATE TABLE Review
(
	ReviewID INT NOT NULL,
    OrderID INT,
    AgentID INT,
    RestaurantRating INT,
    AgentRating INT,
    Review VARCHAR(5000),
    CONSTRAINT Review_PK PRIMARY KEY (ReviewID),
    CONSTRAINT Review_FK1 FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT Review_FK2 FOREIGN KEY (AgentID) REFERENCES DeliveryAgent(AgentID)
    
);




-- INSERT INTO CUSTOMER;
--  CONSTRAINT CustomerAddress_PK PRIMARY KEY (CustomerID),
--   CONSTRAINT CustomerAddress_PK PRIMARY KEY (AddressID),