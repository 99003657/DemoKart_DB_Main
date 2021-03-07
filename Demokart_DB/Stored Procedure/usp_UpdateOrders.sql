CREATE OR ALTER PROCEDURE usp_UpdateOrder( 
 
    @UEmail   VARCHAR(20) ,
	@ProdId VARCHAR(10) ,
    @Quant int , 
    @PaymentCard VARCHAR(20)

)
AS
BEGIN TRY 
    BEGIN
	      UPDATE Orders
		  SET Quantity=@Quant
		  WHERE UserEmail=@UEmail AND ProdId=@ProdId; 
	
	END
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

EXECUTE usp_UpdateOrder @UEmail='pavan@gmail.com',@ProdId='ProdId',@Quant=3,@PaymentCard='PaymentCard'
SELECT * FROM Orders;