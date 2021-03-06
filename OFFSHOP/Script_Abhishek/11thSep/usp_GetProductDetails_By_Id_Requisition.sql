set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetProductDetails_By_Id_Requisition]
@pProductId int,
@pHotelId int
as
begin
	select ProductMaster.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
		GodownLastQty.BarCode,GodownLastQty.LastQty,GodownLastQty.Rate from ProductMaster,BottlePerCase,GodownLastQty
		where ProductMaster.ProductId = GodownLastQty.ProductId
		and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.HotelId = @pHotelId
		and  GodownLastQty.HotelId = @pHotelId and ProductMaster.ProductId = @pProductId
		and GodownLastQty.ProductId = @pProductId
end
