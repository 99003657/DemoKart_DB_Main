CREATE or ALTER PROCEDURE usp_AddRole( 
@RoleName AS VARCHAR(30)
)
AS
BEGIN TRY 
	INSERT INTO Roles(RoleName) VALUES (@RoleName);  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

 EXECUTE usp_AddRole @RoleName='Manager'

 select * from Roles;