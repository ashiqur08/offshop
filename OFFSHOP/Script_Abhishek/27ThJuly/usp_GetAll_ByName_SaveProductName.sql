set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_GetAll_ByName_SaveProductName]
	@ProdName	varchar(50),
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;

--	SELECT	ProductMaster.ProductId,ProductMaster.ProductName
--	FROM ProductMaster, GodownLastQty
--	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
--		and ProductMaster.HotelId=@pHotelId and GodownLastQty.HotelId=@pHotelId 
--		and ProductMaster.ProductName like @ProdName + '%'
--	group by ProductMaster.ProductId,ProductMaster.ProductName 
--	having sum(GodownLastQty.LastQty)>0
--	order by ProductMaster.ProductName
SELECT	ProductMaster.ProductId,ProductMaster.ProductName
	FROM ProductMaster, GodownLastQty
	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
		and ProductMaster.HotelId=@pHotelId and GodownLastQty.HotelId=@pHotelId 
		and ProductMaster.ProductCode = @ProdName 
	group by ProductMaster.ProductId,ProductMaster.ProductName 
	having sum(GodownLastQty.LastQty)>0
	order by ProductMaster.ProductName
END



-- exec usp_GetAll_ByName_SaveProductName 'kf',0