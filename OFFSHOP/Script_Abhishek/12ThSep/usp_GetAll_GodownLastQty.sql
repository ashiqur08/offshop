set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAll_GodownLastQty]
@pHotelId int
as
	declare @LastQty	as int	
	begin
		select GS.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GS.BarCode,
		(select (select isnull(sum(Qty),0) from GodownStock where Status = 'O' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)+
			(select isnull(sum(Qty),0) from GodownStock where Status = 'P' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)-
			(select isnull(sum(Qty),0) from GodownStock where Status = 'R' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)-
			(select isnull(sum(Qty),0) from GodownStock where Status = 'B' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)) as LastQty
		from GodownStock GS,ProductMaster,BottlePerCase
		where GS.HotelId=@pHotelId and ProductMaster.ProductId = GS.ProductId and ProductMaster.CaseId = BottlePerCase.CaseId
		and ProductMaster.HotelId = @pHotelId
		group by GS.BarCode,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GS.ProductId
	end 

-- exec usp_GetAll_GodownLastQty 0

