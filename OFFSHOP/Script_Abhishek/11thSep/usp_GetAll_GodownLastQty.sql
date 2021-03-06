set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAll_GodownLastQty]
@pHotelId int
as
	begin
		select ProductMaster.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
		GodownLastQty.BarCode,GodownLastQty.LastQty,GodownLastQty.Rate from ProductMaster,BottlePerCase,GodownLastQty
		where ProductMaster.ProductId = GodownLastQty.ProductId
		and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.HotelId = @pHotelId
		and  GodownLastQty.HotelId = @pHotelId 
	end 

-- exec usp_GetAll_GodownLastQty 0
