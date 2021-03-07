CREATE OR ALTER FUNCTION ufn_AddressValidation(@Address VARCHAR(100))
RETURNS INT
AS
BEGIN
	DECLARE @Value INT;
	IF(@Address IS NULL OR LEN(@Address)>100 OR @Address  LIKE  '%[`~!@#$%^&*()_-+=/\]%'  ) 
			SET @Value = -1

	ELSE
			SET @Value = 1
	RETURN @Value

END
GO

SELECT dbo.ufn_AddressValidation('Hyderabad')