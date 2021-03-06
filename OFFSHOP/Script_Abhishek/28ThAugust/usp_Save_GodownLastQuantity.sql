set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

--ALTER procedure [dbo].[usp_Save_GodownLastQuantity]
--@pProductId int,
--@pBarcode varchar(50),
--@pRate		decimal(18,0),
--@pHotelId	int
--as
--begin
--	--declare @pBarcode varchar(50)
--	declare @pSumOpng int
--	declare	@pSumPur int
--	declare	@pSumSale int
--	declare	@pSumBrkg int
--	declare	@pSumQty int
--	declare	@pLastQty int
--	declare	@pSataus char(1)
--	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = 'O' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
--	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = 'P' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
--	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = 'S' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
--	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = 'B' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
--	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
--	if exists(select * from GodownLastQty where ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId)
--	begin
--		update GodownLastQty
--		set
--			LastQty = @pLastQty
--			where ProductId = @pProductId and Barcode = @pBarcode and Rate = @pRate and HotelId=@pHotelId
--	end
--	else
--		begin
--				insert into GodownLastQty(ProductId,Barcode,LastQty,HotelId,Rate)values(@pProductId,@pBarcode,@pLastQty,@pHotelId,@pRate)
--		end
--end 


ALTER procedure [dbo].[usp_Save_GodownLastQuantity]
@pProductId int,
@pBarcode varchar(50),
@pRate		decimal(18,0),
@pHotelId	int
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
	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = 'O' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = 'P' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = 'S' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = 'B' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
	if exists(select * from GodownLastQty where ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId)
	begin
		update GodownLastQty
		set
			LastQty = @pLastQty,
			Rate = @pRate
			where ProductId = @pProductId and Barcode = @pBarcode  and HotelId=@pHotelId
	end
	else
		begin
				insert into GodownLastQty(ProductId,Barcode,LastQty,HotelId,Rate)values(@pProductId,@pBarcode,@pLastQty,@pHotelId,@pRate)
		end
end
-- exec usp_Save_GodownLastQuantity 2,'2222'






