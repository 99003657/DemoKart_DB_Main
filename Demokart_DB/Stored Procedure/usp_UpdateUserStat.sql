CREATE OR ALTER PROCEDURE usp_UpdateUserStat (
@UEmail AS VARCHAR(30),  
@Ustatus AS BIT  
)  
AS  
BEGIN TRY 
         
        BEGIN  
            UPDATE Users  
            SET UserAddress = @Ustatus    
            WHERE UserEmail = @UEmail  
        END  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

SELECT * FROM Orders;