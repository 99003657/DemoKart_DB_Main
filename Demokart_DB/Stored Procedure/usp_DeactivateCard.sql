CREATE Or ALTER PROCEDURE usp_DeactivatingCard(@CardNo BIGINT)
AS
   BEGIN
   UPDATE PaymentCard SET CardStatus=0 WHERE CardNo=@CardNo;
   END

EXECUTE usp_DeactivatingCard @CardNo=12343421
SELECT * FROM PaymentCard;
