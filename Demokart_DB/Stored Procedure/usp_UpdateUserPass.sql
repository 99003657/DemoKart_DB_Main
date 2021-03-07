CREATE OR ALTER PROCEDURE usp_UpdateUserPass (
@UEmail AS VARCHAR(30),  
@Upass AS VARCHAR(16)  
)  
AS  
BEGIN TRY 
         
        BEGIN  
            UPDATE Users  
            SET UserPassword = @Upass    
            WHERE UserEmail = @UEmail  
        END  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

SELECT * FROM Users;