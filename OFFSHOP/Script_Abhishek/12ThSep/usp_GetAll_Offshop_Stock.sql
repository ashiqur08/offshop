set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAll_Offshop_Stock]
@pToday datetime,
@pHotelId int
as
begin
	select ProductMaster.ProductId,ProductMaster.ProductName,Offshop_Stock.Offshop_GodownStockId,Offshop_Stock.Barcode,Offshop_Stock.Qty
	from ProductMaster,Offshop_Stock 
	where ProductMaster.ProductId = Offshop_Stock.ProductId
	and ProductMaster.HotelId = @pHotelId and Offshop_Stock.HotelId = @pHotelId and 
	convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) = @pToday and Offshop_Stock.status='R'
end

-- exec usp_GetAll_Offshop_Stock '9/12/2013',0

