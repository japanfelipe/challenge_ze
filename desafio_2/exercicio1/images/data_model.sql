CREATE TABLE Customers
(
  CustomerCode CHAR(6) NOT NULL,
  CustomerName VARCHAR(32) NOT NULL,
  Address VARCHAR(32) NOT NULL,
  City VARCHAR(32) NOT NULL,
  State VARCHAR(32) NOT NULL,
  ZipCode CHAR(8) NOT NULL,
  Country VARCHAR(32) NOT NULL,
  RegistrationDate DATE NOT NULL,
  PRIMARY KEY (CustomerCode)
);

CREATE TABLE Date
(
  DateID DATE NOT NULL,
  YearMonth CHAR(6) NOT NULL,
  Month CHAR(2) NOT NULL,
  PRIMARY KEY (DateID)
);

CREATE TABLE Products
(
  ProductCode CHAR(8) NOT NULL,
  Description VARCHAR(32) NOT NULL,
  Family VARCHAR(32) NOT NULL,
  Category VARCHAR(32) NOT NULL,
  Package VARCHAR(32) NOT NULL,
  PRIMARY KEY (ProductCode)
);

CREATE TABLE Sales
(
  InvoiceNumber CHAR(8) NOT NULL,
  SalesID CHAR(16) NOT NULL,
  SalesAmount FLOAT NOT NULL,
  SalesRevenue FLOAT NOT NULL,
  DateID DATE NOT NULL,
  ProductCode CHAR(8) NOT NULL,
  CustomerCode CHAR(6) NOT NULL,
  PRIMARY KEY (SalesID),
  FOREIGN KEY (DateID) REFERENCES Date(DateID),
  FOREIGN KEY (ProductCode) REFERENCES Products(ProductCode),
  FOREIGN KEY (CustomerCode) REFERENCES Customers(CustomerCode)
);
