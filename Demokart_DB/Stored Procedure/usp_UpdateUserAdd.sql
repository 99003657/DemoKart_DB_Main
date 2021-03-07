CREATE OR ALTER PROCEDURE usp_UpdateUserAdd (
@UEmail AS VARCHAR(30),  
@UAddr AS VARCHAR(16)  
)  
AS  
BEGIN TRY 
         
        BEGIN  
            UPDATE Users  
            SET UserAddress = @UAddr    
            WHERE UserEmail = @UEmail  
        END  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

SELECT * FROM Users;