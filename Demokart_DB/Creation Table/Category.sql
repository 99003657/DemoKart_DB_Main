CREATE TABLE Category
(
	CatId INT IDENTITY(1,1) NOT NULL,
	CatName VARCHAR(30) NOT NULL,
	CatTax DECIMAL(3,2),
	CatStatus BIT,
	PRIMARY KEY(CatId)
);

INSERT INTO Category(CatName,CatTax,CatStatus) VALUES ('Electronics',7.08,1);
INSERT INTO Category(CatName,CatTax,CatStatus) VALUES ('Grocery',4.25,0);
INSERT INTO Category(CatName,CatTax,CatStatus) VALUES ('Clothing',2.35,1);
INSERT INTO Category(CatName,CatTax,CatStatus) VALUES ('Cosmetics',3.55,1);

SELECT * FROM Category;