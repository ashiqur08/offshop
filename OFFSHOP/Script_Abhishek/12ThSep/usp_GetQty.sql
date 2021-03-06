set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[usp_GetQty]
	@pProductId	int,
	@pBarcode	varchar(50),
	@pRate		decimal,
	@pHotelId	int
AS
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	declare	@pSataus char(1)
BEGIN
	SET NOCOUNT ON;
--	SELECT LastQty
--	FROM GodownLastQty
--	where ProductId=@pProductId and BarCode=@pBarcode and Rate=@pRate and HotelId=@pHotelId
	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = 'O' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = 'P' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = 'R' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = 'B' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
	select @pLastQty as LastQty
END

-- exec usp_GetQty 1,'1',200,0


