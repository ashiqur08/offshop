set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Delete_OffshopStock_GodownStock]
@pOffshop_GodownStockId int,
@pHotetlId int
as
	declare @ProductId	int
	declare @pBarCode	varchar(50)
	declare @pMRP		int
begin

	set @ProductId=(select ProductId from Offshop_Stock where Offshop_GodownStockId=@pOffshop_GodownStockId)
	set @pBarCode=(select BarCode from Offshop_Stock where Offshop_GodownStockId=@pOffshop_GodownStockId)
	set @pMRP=(select max(MRP) from Offshop_Stock where Offshop_GodownStockId=@pOffshop_GodownStockId)

	delete from GodownStock where Status = 'R' and MainId = @pOffshop_GodownStockId
	and HotelId = @pHotetlId
	
	delete from Offshop_Stock where Offshop_GodownStockId = @pOffshop_GodownStockId

	exec usp_Save_GodownLastQuantity @ProductId,@pBarCode,@pMRP,@pHotetlId
end

