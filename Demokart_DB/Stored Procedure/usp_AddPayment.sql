CREATE PROCEDURE usp_AddPayment( 

@Card_name AS  VARCHAR(10), 
@Card_No AS BIGINT, 
@Payment_Add AS VARCHAR(50),
@Exp_Date DATE ,
@TypeOf_Card VARCHAR(10),
@UEmail VARCHAR(20) ,
@CardStatus BIT
)
AS
BEGIN TRY 
	INSERT INTO PaymentCard(CardName,CardNo,PaymentAdd,ExpDate,TypeOfCard,UserEmail,CardStatus) VALUES (@Card_name,@Card_No,@Payment_Add,@Exp_Date,@Typeof_Card,@UEmail,@CardStatus) 
END TRY
BEGIN CATCH
	PRINT('ERROR')
END CATCH
GO



EXECUTE usp_AddPayment @Card_name='Ram',@Card_No=12344321,@Payment_Add='Bengalore',@Exp_Date='2021-01-03',@TypeOf_Card='Debit',@UEmail='pavan@gmail.com',@Cardstatus=0
 
SELECT * FROM PaymentCard;
