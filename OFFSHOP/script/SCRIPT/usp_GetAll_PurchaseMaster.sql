set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[usp_GetAll_PurchaseMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	PurchaseId,PurchaseDate,InvoiceNo,InvoiceDate,NetAmount,Ledger_Nm
	FROM PurchaseMaster,Ledger_Master
	where Ledger_Master.Ledger_Id = PurchaseMaster.LedgerId 
		and Ledger_Master.HotelId=@pHotelId and PurchaseMaster.HotelId=@pHotelId 
	order by Ledger_Nm
END






