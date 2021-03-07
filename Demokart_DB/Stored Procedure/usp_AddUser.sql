CREATE OR ALTER PROCEDURE usp_AddUser
(
@Name VARCHAR(50),
@Email VARCHAR(30),
@Password VARCHAR(16),
@PhoneNo VARCHAR(20),
@Address VARCHAR(100),
@UStatus AS BIT,
@Roleid AS INT
)
AS
BEGIN TRY
		DECLARE @retVal INT
		DECLARE @retVal1 INT
		DECLARE @retVal2 INT
		DECLARE @retVal3 INT
		SET @retVal=(SELECT dbo.ufn_NameValidation(@Name))
		SET @retVal1=(SELECT dbo.ufn_EmailValidation(@Email))
		SET @retVal2=(SELECT dbo.ufn_PhoneNoValidation(@PhoneNo))
		SET @retVal3=(SELECT dbo.ufn_AddressValidation(@Address))

		IF(@retVal = 1 AND @retVal1=1 AND @retVal2=1 AND @retVal3 =1)
		BEGIN
			INSERT INTO Users (UserEmail,UserName,UserPassword,PhoneNumber,UserAddress,UserStatus,RoleId) VALUES (@Email,@Name,@Password,@PhoneNo,@Address,@UStatus,@Roleid)
		END

END TRY

BEGIN CATCH
	print('-99')
END catch
GO

EXECUTE dbo.usp_AddUser @Name='Rahul',@Email='Rahul@gmail.com',@Password= 'Rahul@123',@PhoneNo='+1234567890',@Address='Dehli',@UStatus=1,@Roleid=1


SELECT * FROM Users;