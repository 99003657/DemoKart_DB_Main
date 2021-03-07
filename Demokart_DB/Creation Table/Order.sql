CREATE TABLE Orders
(
    OrderId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    UserEmail   VARCHAR(20)  NOT NULL,
	ProdId VARCHAR(10) NOT NULL,
    Quantity int NOT NULL, 
    PaymentCard VARCHAR(20) NOT NULL,
    CONSTRAINT FK_UEmail FOREIGN KEY (UserEmail) REFERENCES Users(UserEmail),
	CONSTRAINT PId FOREIGN KEY (ProdId) REFERENCES Products(ProdId)
);

INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES ('mani@gmail.com','P1001',2,'Debit');
INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES ('sarada@ltts.com','P1002',1,'Credit');
INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES ('pankaj@outlook.com','P1003',1,'Credit');
INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES ('Onkar@gmail.com','P1004',2,'Credit');
INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES ('Ansari@ltts.com','P1005',1,'Credit');
INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES ('akash@gmail.com','P1006',1,'Debit');

SELECT * FROM Orders;