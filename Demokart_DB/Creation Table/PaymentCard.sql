
CREATE TABLE PaymentCard
(
  CardName VARCHAR(25) NOT NULL,
  CardNo BIGINT NOT NULL,
  PaymentAdd VARCHAR(50) NOT NULL,
  ExpDate DATE NOT NULL,
  TypeOfCard VARCHAR(10),
  UserEmail VARCHAR(20) NOT NULL,
  CardStatus BIT
  CONSTRAINT FK_UserEmail FOREIGN KEY (UserEmail) REFERENCES Users(UserEmail)
 );
 go

INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES ('mani',234675431,'Bengalore','2021-01-02','Debit','mani@gmail.com',0);
INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES ('Sarada',234675432,'Mysore','2023-03-06','Credit','Sarada@ltts.com',1); 
INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES ('Pankaj',234675438,'Pune','2021-03-06','Debit','Pankaj@outlook.com',0); 
INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES ('Onkar',234675436,'Chennai','2023-01-06','Credit','onkar@gmail.com',1); 
INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES ('Ansari',234675437,'Mysore','2022-03-05','Debit','Ansari@gmail.com',0); 
INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES ('Akash',234675433,'Goa','2022-03-05','Debit','Ansari@ltts.com',0); 





SELECT * FROM PaymentCard;
