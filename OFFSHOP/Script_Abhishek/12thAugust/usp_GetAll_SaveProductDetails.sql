set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAll_SaveProductDetails]
	@pSaveProductMasterId INT
as
begin
	SELECT	SaveProductDetails.*,ProductMaster.ProductName
	FROM SaveProductDetails, ProductMaster
	WHERE SaveProductDetails.ProductId = ProductMaster.ProductId 
		and SaveProductMasterId = @pSaveProductMasterId
	--order by ProductMaster.ProductName
end





