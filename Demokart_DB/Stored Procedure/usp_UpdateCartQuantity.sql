CREATE OR ALTER PROCEDURE usp_UpdateCartQuantity (
@UEmail AS VARCHAR(30),  
@Quantity AS INT  
)  
AS  
BEGIN TRY 
         
        BEGIN  
            UPDATE Cart  
            SET Quantity = @Quantity+Quantity    
            WHERE UserEmail = @UEmail  
        END  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO


EXECUTE usp_UpdateCartQuantity @UEmail='onkar@gmail.com',@Quantity=2

SELECT * FROM Cart;