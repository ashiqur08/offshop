set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Delete_PurchaseMaster]
	@pPurchaseId int
	as
	begin
		delete from PurchaseDetails where PurchaseId = @pPurchaseId
		delete from PurchaseMaster where PurchaseId = @pPurchaseId
	end

