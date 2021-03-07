CREATE OR ALTER FUNCTION ufn_EmailValidation(@Email VARCHAR(30))
RETURNS INT
AS
BEGIN
	
	DECLARE @VAL INT;
	IF(@Email IS NULL OR @Email NOT LIKE '%@%.com' OR @Email LIKE '%[`~!#$%^&*()_-+=/\]%' ) 
			SET @VAL = -1

	ELSE
			SET @VAL = 1
	RETURN @VAL

END
GO
SELECT dbo.ufn_EmailValidation('gagan@ltts.com')