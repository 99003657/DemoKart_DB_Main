CREATE PROCEDURE usp_RemoveFromCart
(
@ProdId VARCHAR(10),
@UEmail VARCHAR(20)
)
AS
BEGIN TRY
     BEGIN 
	    DELETE FROM Cart WHERE ProdId=@ProdId and UserEmail=@UEmail
	 END
END TRY
BEGIN CATCH
   PRINT('ERROR')
END CATCH
   GO

   EXECUTE usp_RemoveFromCart @ProdId='P1001',@UEmail='pavan@gmail.com'

   SELECT * FROM Cart;
