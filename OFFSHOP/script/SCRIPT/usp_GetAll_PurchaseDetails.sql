set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAll_PurchaseDetails]
	@pPurchaseId INT
as
begin
	SELECT	*,ProductMaster.ProductName, SizeOfBottle
	FROM PurchaseDetails, ProductMaster, BottlePerCase
	WHERE PurchaseDetails.ProductId = ProductMaster.ProductId 
		and BottlePerCase.CaseId=PurchaseDetails.CaseId and PurchaseId = @pPurchaseId 
	order by ProductMaster.ProductName
end


