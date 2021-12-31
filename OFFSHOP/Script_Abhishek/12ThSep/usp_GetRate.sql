set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[usp_GetRate]
	@pProductId	int,
	@pBarcode	varchar(50),
	@pHotelId	int
AS
BEGIN
	SET NOCOUNT ON;
--	SELECT Rate
--	FROM GodownLastQty
--	where ProductId=@pProductId and BarCode=@pBarcode and HotelId=@pHotelId
	SELECT max(MRP) as Rate
	FROM GodownStock
	where ProductId=@pProductId and BarCode=@pBarcode and HotelId=@pHotelId
END


