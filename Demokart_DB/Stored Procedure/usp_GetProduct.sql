CREATE PROCEDURE usp_GetProduct
(@ProductName AS VARCHAR(100))
AS
BEGIN TRY 
	SELECT ProdName,ProdPrice FROM Products WHERE ProdName = @ProductName;
END TRY

BEGIN CATCH 
	PRINT('ERROR')
END CATCH
GO 


EXECUTE usp_GetProduct @ProductName = 'I Phone';