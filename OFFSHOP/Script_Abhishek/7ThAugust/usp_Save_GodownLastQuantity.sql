set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[usp_Save_GodownLastQuantity]
@pProductId int,
@pBarcode varchar(50)
as
begin
	--declare @pBarcode varchar(50)
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	declare	@pSataus char(1)
	--select @pBarcode = Barcode from GodownStock where ProductId = @pProductId
	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = 'O' and ProductId = @pProductId and Barcode = @pBarcode
	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = 'P' and ProductId = @pProductId and Barcode = @pBarcode
	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = 'S' and ProductId = @pProductId and Barcode = @pBarcode
	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = 'B' and ProductId = @pProductId and Barcode = @pBarcode
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
--	set @pLastQty =  @pSumPur - @pSumSale 
	--select @pLastQty as Quantity
	if exists(select * from GodownLastQty where ProductId = @pProductId and Barcode = @pBarcode)
	begin
		update GodownLastQty
		set
--			Barcode = @pBarcode,
			LastQty = @pLastQty
			where ProductId = @pProductId and Barcode = @pBarcode
			
	end
	else
		begin
				insert into GodownLastQty(ProductId,Barcode,LastQty,HotelId)values(@pProductId,@pBarcode,@pLastQty,0)
		end
end

-- exec usp_Save_GodownLastQuantity 2,'2222'




