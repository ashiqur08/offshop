set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Delete_Purchase_Details]
	@pPurchaseDetailsId int
	as
	begin
		delete from PurchaseDetails where PurchaseDetailsId = @pPurchaseDetailsId
	end

