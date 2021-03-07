CREATE or ALTER PROCEDURE usp_AddOrder( 
@OEmail AS VARCHAR(20),  
@ProdId AS  VARCHAR(10),  
@OQuant AS INT,
@OPaymentCard VARCHAR(20)
)
AS
BEGIN TRY 
	INSERT INTO Orders(UserEmail,ProdId,Quantity,PaymentCard) VALUES (@OEmail,@ProdId,@OQuant,@OpaymentCard);  
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO

 EXECUTE usp_AddOrder @OEmail='pavan@gmail.com',@ProdId='P1001',@OQuant=5,@OPaymentCard='Credit'
 
 
 
SELECT * FROM Orders;