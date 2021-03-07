CREATE TABLE Cart
(
  UserEmail VARCHAR(20) NOT NULL,
  ProdId VARCHAR(10) NOT NULL,
  Quantity INT NOT NULL,
  LastUpdate Date NULL,
  PRIMARY KEY(ProdId),
  CONSTRAINT FK_UserEmails FOREIGN KEY (UserEmail) REFERENCES Users(UserEmail),
  CONSTRAINT FK_ProdId FOREIGN KEY (ProdId) REFERENCES Products(ProdId)
);


INSERT INTO Cart(UserEmail,ProdId,Quantity,LastUpdate) VALUES ('mani@gmail.com','P1001',2,CURRENT_TIMESTAMP);
INSERT INTO Cart(UserEmail,ProdId,Quantity,LastUpdate) VALUES ('sarada@ltts.com','P1002',3,CURRENT_TIMESTAMP);
INSERT INTO Cart(UserEmail,ProdId,Quantity,LastUpdate) VALUES ('pankaj@outlook.com','P1003',4,CURRENT_TIMESTAMP);
INSERT INTO Cart(UserEmail,ProdId,Quantity,LastUpdate) VALUES ('Onkar@gmail.com','P1004',5,CURRENT_TIMESTAMP);
INSERT INTO Cart(UserEmail,ProdId,Quantity,LastUpdate) VALUES ('Ansari@ltts.com','P1005',6,CURRENT_TIMESTAMP);



SELECT * FROM Cart;