set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[usp_Save_GodownLastQuantity]
@pProductId int
as
begin
	declare @pBarcode varchar(50)
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	declare	@pSataus char(1)
	select @pBarcode = Barcode from GodownStock where ProductId = @pProductId
	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = 'O' and ProductId = @pProductId
	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = 'P' and ProductId = @pProductId
	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = 'S' and ProductId = @pProductId
	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = 'B' and ProductId = @pProductId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
--	set @pLastQty =  @pSumPur - @pSumSale 
	--select @pLastQty as Quantity
	if exists(select * from GodownLastQty where ProductId = @pProductId)
	begin
		update GodownLastQty
		set
--			Barcode = @pBarcode,
			LastQty = @pLastQty
			where ProductId = @pProductId
	end
	else
		begin
				insert into GodownLastQty(ProductId,Barcode,LastQty,HotelId)values(@pProductId,@pBarcode,@pLastQty,0)
		end
end

-- exec usp_Save_GodownLastQuantity 5


