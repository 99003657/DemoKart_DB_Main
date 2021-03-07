CREATE PROCEDURE usp_UpdateCart( 
 
@UEmail AS  VARCHAR(20),  
@Quant AS INT,
@Last_update DATE 

)
AS
BEGIN TRY 
    BEGIN
	      UPDATE Cart
		  SET Quantity=@Quant, LastUpdate=@Last_update
		  WHERE UserEmail=@UEmail; 
	
	END
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE usp_UpdateCart @UEmail='pavan@gmail.com',@Quant=3,@Last_update='2021-02-02'
SELECT * FROM Cart;