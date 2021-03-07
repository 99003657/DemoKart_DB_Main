CREATE OR ALTER PROCEDURE usp_AddToCart( 
 
@UEmail AS  VARCHAR(20), 
@ProdID AS VARCHAR(10), 
@Quant AS INT,
@Last_update Date

)
AS
BEGIN TRY 
	INSERT INTO Cart(UserEmail,ProdId,Quantity,LastUpdate) VALUES (@UEmail,@prodID,@Quant,@Last_update);  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE usp_AddToCart @UEmail='Onkar@gmail.com',@ProdId='P1008',@Quant=3,@Last_update='2020-02-04'
SELECT * FROM Cart;