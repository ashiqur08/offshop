set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Get_CreditorsWise_Purchase_Report]
@pFrmDate datetime,
@pToDate datetime,
@pHotelId int
as
begin
	select ProductMaster.ProductId, ProductMaster.ProductName,sum(PurchaseDetails.TotalBottle)as TotalBtl,sum(PurchaseDetails.TotalMRP)as TotalMRP,
	sum(PurchaseDetails.TotalAmount)as TotalAmount,Ledger_Master.Ledger_Nm 
	from ProductMaster,PurchaseDetails,PurchaseMaster,Ledger_Master 
	where ProductMaster.ProductId = PurchaseDetails.ProductId and PurchaseDetails.PurchaseId=PurchaseMaster.PurchaseId 
	and PurchaseMaster.LedgerId = Ledger_Master.Ledger_Id
	and PurchaseMaster.PurchaseDate between @pFrmDate and @pToDate and ProductMaster.HotelId = @pHotelId and
	PurchaseMaster.HotelId = @pHotelId and PurchaseDetails.HotelId = @pHotelId and Ledger_Master.HotelId = @pHotelId
	group by ProductMaster.ProductId,ProductMaster.ProductName,Ledger_Master.Ledger_Nm
--	group by ProductMaster.ProductName,PurchaseMaster.TotalBottle,PurchaseMaster.TotalMRP,
--	PurchaseMaster.TotalGross,PurchaseMaster.NetAmount,Ledger_Master.Ledger_Nm
	
end


-- exec usp_Get_CreditorsWise_Purchase_Report '7/20/2013 12:00:00 AM','7/23/2013 12:00:00 AM',0
