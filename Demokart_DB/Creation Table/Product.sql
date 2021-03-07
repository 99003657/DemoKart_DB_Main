CREATE TABLE Products
(
	ProdId VARCHAR(10) PRIMARY KEY NOT NULL,
	ProdName VARCHAR(100) NOT NULL,
	ProdPrice DECIMAL(12,2),
	QuantityAvail INT NOT NULL,
	ProdDes VARCHAR(100),
	ProdStatus BIT,
	CatId INT NOT NULL,
	CONSTRAINT FK_CatId FOREIGN KEY (CatId) REFERENCES Category(CatId)
);

INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1001','I Phone',1567.05,5,'The iPhone has a sleek, minimalist design, and differs from other smartphones in its lack of buttons',1,1);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1002','FitBit',130.05,10,'Heart rate monitor with touch screen facility',1,1);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1003','Lays',30.05,7,'flavoured',0,2);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1004','Chocolate',20.00,8,'Milk chocolate',0,2);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1005','Shirt',150.05,6,'Jeans shirt',1,3);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1006','Saree',400.05,7,'silk Saree',0,3);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1007','Dryer',150.05,6,'Hair dryer',1,4);
INSERT INTO Products(ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES ('P1008','Nailpolish',15.75,7,'red nailpolish',1,4);



SELECT * FROM Products;