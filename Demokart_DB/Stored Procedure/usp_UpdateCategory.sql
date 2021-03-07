CREATE OR ALTER PROCEDURE usp_UpdateCategory (
@CategoryId AS INT,
@CategoryTax AS DECIMAL(3,2),
@CategoryStatus AS BIT, 
@Choice AS INT
)  
AS  
BEGIN TRY 
      IF @Choice = 1 
	  BEGIN
            UPDATE Category  
            SET CatTax = @CategoryTax   
            WHERE CatId = @CategoryId  
      END  
      ELSE IF @Choice = 2 
	  BEGIN
            UPDATE Category  
            SET CatStatus = @CategoryStatus   
            WHERE CatId = @CategoryId  
      END
	  ELSE 
	  BEGIN
            PRINT('-97') 
      END
END TRY
BEGIN CATCH
	PRINT('-97')
END CATCH
GO


EXECUTE usp_UpdateCategory @Choice=1 ,@CategoryId=1,@CategoryTax=6.75, @CategoryStatus=1

SELECT * FROM Category;