CREATE OR ALTER PROCEDURE usp_AddCATEGORY(
 
@CategoryName AS VARCHAR(30),
@CategoryTax AS DECIMAL(3,2),
@CategoryStatus AS BIT
)
AS
BEGIN TRY
	INSERT INTO Category( CatName, CatTax,CatStatus) VALUES (@CategoryName,@CategoryTax,@CategoryStatus)
END TRY
BEGIN CATCH
	PRINT('-97')
END CATCH

GO 

EXECUTE usp_AddCATEGORY @CategoryName='Medicin',@CategoryTax=5.25,@CategoryStatus=1


SELECT * FROM Category;