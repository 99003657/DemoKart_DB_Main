CREATE TABLE Users( 
   UserName VARCHAR(50) NOT NULL, 
   UserPassword VARCHAR(16) NOT NULL, 
   PhoneNumber VARCHAR(20) NOT NULL,
   UserEmail VARCHAR(20) NOT NULL,
   UserAddress  VARCHAR (100), 
   UserStatus	BIT,
   RoleId INT NOT NULL,
   PRIMARY KEY (UserEmail),
   CONSTRAINT FK_RoleId FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
);

INSERT INTO Users(UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES ('mani@gmail.com','mani','abc@','+91 7564323456','Hyderabad',1,1);
INSERT INTO Users(UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES ('sarada@ltts.com','Sarada','asdcda1@','+91 7654334567','Orissa',0,1);
INSERT INTO Users(UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES ('pankaj@outlook.com','Pankaj','1234xyz!','+91 1357997531','Gujarat',1,2);
INSERT INTO Users(UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES ('Onkar@gmail.com','Onkar','@xyz123','+91 2468024680','Jammu',0,1);
INSERT INTO Users(UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES ('Ansari@ltts.com','Ansari','asdfghjhg#','+91 6543345677','Noida',1,1);
INSERT INTO Users(UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES ('akash@gmail.com','Akash','asdf@123','+91 9876543467','Maharastra',1,2);

SELECT * FROM Users;