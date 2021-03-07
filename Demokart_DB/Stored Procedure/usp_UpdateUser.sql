CREATE OR ALTER PROCEDURE usp_UpdateUser (
@UEmail AS VARCHAR(30),  
@UPhoneNumber AS VARCHAR(20)  
)  
AS  
BEGIN TRY 
         
        BEGIN  
            UPDATE Users  
            SET PhoneNumber = @UPhoneNumber    
            WHERE UserEmail = @UEmail  
        END  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE usp_UpdateUser  @UEmail='yash@Outlook.com',@UPhoneNumber='+1 83475785787'
 
SELECT * FROM Users;

