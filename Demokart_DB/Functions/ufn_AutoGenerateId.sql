CREATE OR ALTER FUNCTION ufn_AutoGenerateId()

RETURNS VARCHAR(10)

BEGIN
	DECLARE @Value VARCHAR(10)
	DECLARE @String VARCHAR(10)
	DECLARE @Iteration INT
	DECLARE @ConvertString VARCHAR(10)
	DECLARE @FinalResult VARCHAR(10)

	SET @Value=(SELECT TOP 1 ProdId FROM Products ORDER BY ProdId DESC)

	SET @String =RIGHT(@Value,4)
	SET @Iteration=CAST(@String AS INT)+1
	SET @ConvertString= CAST(@Iteration AS VARCHAR(10))
	SET @FinalResult=CONCAT('P',@ConvertString)

	RETURN @FinalResult

END

GO