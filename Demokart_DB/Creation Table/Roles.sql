CREATE TABLE Roles
(
	RoleId INt IDENTITY(1,1) NOT NULL,
	RoleName VARCHAR(30) NOT NULL,
	PRIMARY KEY (RoleId)
);


INSERT INTO Roles(RoleName) VALUES ('User');
INSERT INTO Roles(RoleName) VALUES ('Admin');
 

SELECT * FROM Roles;