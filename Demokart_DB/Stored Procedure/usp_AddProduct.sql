CREATE OR ALTER PROCEDURE usp_AddProduct
(
@ProductId AS VARCHAR(10),
@ProductName AS VARCHAR(100),
@ProductPrice AS DECIMAL(12,2),
@ProductQuant AS INT,
@ProductDes AS VARCHAR(100),
@ProdStatus AS BIT,
@CategoryId AS INT
)
AS
BEGIN TRY
		BEGIN
		--DECLARE @Value INT
		--SET @Value=(SELECT dbo.ufn_AutoGenerateId())
		INSERT INTO Products (ProdId,ProdName,ProdPrice,QuantityAvail,ProdDes,ProdStatus,CatId) VALUES (@ProductId,@ProductName,@ProductPrice,@ProductQuant,@ProductDes,@ProdStatus,@CategoryId)
		END
END TRY

BEGIN CATCH
	print('-98')
END catch
GO

EXECUTE usp_AddProduct @ProductId='P1010',@ProductName='Mi Mobile',@ProductPrice=11.98,@ProductQuant=10,@ProductDes='Its very easy to use',@ProdStatus=1,@CategoryId=3

SELECT * FROM Products;


