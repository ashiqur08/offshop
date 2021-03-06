set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetProductDetails_By_Id_Requisition]
@pProductId int,
@pBarcode	varchar(50),
@pHotelId int
as
begin
	select ProductMaster.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GodownStock.BarCode,max(GodownStock.MRP) as Rate
	from ProductMaster,BottlePerCase,GodownStock
	where ProductMaster.ProductId = GodownStock.ProductId
		and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.HotelId = @pHotelId
		and  GodownStock.HotelId = @pHotelId and ProductMaster.ProductId = @pProductId
		and GodownStock.ProductId = @pProductId and GodownStock.BarCode=@pBarcode
	Group by ProductMaster.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GodownStock.BarCode
	
end
