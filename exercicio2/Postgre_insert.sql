-- Criei este script para simuluar a criação de um DB postgres com dados fake

CREATE TABLE Date
(
  DateID DATE NOT NULL,
  YearMonth CHAR(6) NOT NULL,
  Month CHAR(2) NOT NULL,
  PRIMARY KEY (DateID)
);

CREATE TABLE Product
(
  ProductID CHAR(8) NOT NULL,
  ProductName VARCHAR(32) NOT NULL,
  ProductCategory VARCHAR(32) NOT NULL,
  ProductVolume FLOAT NOT NULL,
  PRIMARY KEY (ProductID)
);

CREATE TABLE WarehouseLocation
(
  Country VARCHAR(32) NOT NULL,
  City VARCHAR(32) NOT NULL,
  State VARCHAR(32) NOT NULL,
  WarehouseID CHAR(8) NOT NULL,
  PRIMARY KEY (WarehouseID)
);

CREATE TABLE Daily_Inventory
(
  StorageLocation VARCHAR(32) NOT NULL,
  StockQuantily FLOAT NOT NULL,
  ProductID CHAR(8) NOT NULL,
  DateID DATE NOT NULL,
  WarehouseID CHAR(8) NOT NULL,
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
  FOREIGN KEY (DateID) REFERENCES Date(DateID),
  FOREIGN KEY (WarehouseID) REFERENCES WarehouseLocation(WarehouseID)
);

  INSERT INTO date VALUES ('2020-01-01', '202001', '01');
  INSERT INTO date VALUES ('2020-02-01', '202002', '02');
  INSERT INTO date VALUES ('2020-03-01', '202003', '03');
  INSERT INTO date VALUES ('2020-04-01', '202004', '04');
  INSERT INTO date VALUES ('2020-05-01', '202005', '05');
  INSERT INTO date VALUES ('2020-01-11', '202001', '01');
  INSERT INTO date VALUES ('2020-02-21', '202002', '02');
  INSERT INTO date VALUES ('2020-03-05', '202003', '03');
  INSERT INTO date VALUES ('2020-04-14', '202004', '04');
  INSERT INTO date VALUES ('2020-05-22', '202005', '05');


  INSERT INTO Product VALUES ( '00000001', 'A', 'beer', 4.3);
  INSERT INTO Product VALUES ( '00000002', 'B', 'beer', 2.3);
  INSERT INTO Product VALUES ( '00000003', 'C', 'wine', 3.3);
  INSERT INTO Product VALUES ( '00000004', 'D', 'wine', 4.3);
  INSERT INTO Product VALUES ( '00000005', 'E', 'soda', 2.3);
  INSERT INTO Product VALUES ( '00000006', 'F', 'soda', 2.3);

  INSERT INTO WarehouseLocation VALUES ( 'Brazil', 'São Paulo', 'São Paulo', '00000001');

  INSERT INTO WarehouseLocation VALUES ( 'Brazil', 'São Paulo', 'Campinas', '00000002');

  INSERT INTO WarehouseLocation VALUES ( 'Brazil', 'Rio de Janeiro', 'Rio de Janeiro', '00000003');

  INSERT INTO WarehouseLocation VALUES ( 'Brazil', 'São Paulo', 'Paulinia', '00000004');

  INSERT INTO WarehouseLocation VALUES ( 'Brazil', 'Bahia', 'Salvador', '00000005');


  INSERT INTO Daily_Inventory VALUES ( 'SP', 40.3, '00000001', '2020-01-01', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'RJ', 400.3, '00000001', '2020-02-01', '00000003');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 42.3, '00000002', '2020-03-01', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 55.3, '00000002', '2020-02-01', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 69.3, '00000003', '2020-02-01', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 465.3, '00000004', '2020-04-01', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'RJ', 52.3, '00000003', '2020-05-01', '00000003');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 50.3, '00000001', '2020-03-01', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 55.3, '00000003', '2020-02-01', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 62.3, '00000005', '2020-02-01', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 45.3, '00000002', '2020-04-01', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 40.3, '00000001', '2020-01-11', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'RJ', 400.3, '00000001', '2020-01-11', '00000003');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 42.3, '00000002', '2020-03-05', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 55.3, '00000002', '2020-02-21', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 69.3, '00000003', '2020-02-21', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 465.3, '00000004', '2020-04-14', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'RJ', 52.3, '00000003', '2020-05-22', '00000003');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 50.3, '00000001', '2020-03-05', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 55.3, '00000003', '2020-02-21', '00000005');
  INSERT INTO Daily_Inventory VALUES ( 'SP', 62.3, '00000005', '2020-02-21', '00000001');
  INSERT INTO Daily_Inventory VALUES ( 'BA', 45.3, '00000002', '2020-04-14', '00000005');
