set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetGodownStock]

@today datetime,
@HotelId int
as
begin

	select GodownLastQty.ProductId,GodownLastQty.Barcode,GodownLastQty.LastQty,
	ProductMaster.ProductName ,(select isnull(sum(GodownStock.Qty),0) from GodownStock 
		where GodownStock.ProductId = GodownLastQty.ProductId and GodownStock.Status = 'S' 
		and GodownStock.HotelId = 0 and convert(varchar(10),GodownStock.FirstEnteredOn,101)=@today
		and GodownStock.barcode=GodownLastQty.barcode) as sale
	from GodownLastQty,ProductMaster where GodownLastQty.ProductId = ProductMaster.ProductId and
	GodownLastQty.HotelId = 0 and ProductMaster.HotelId = 0
	group by GodownLastQty.ProductId,GodownLastQty.Barcode,GodownLastQty.LastQty,
	ProductMaster.ProductName
end

-- exec usp_GetGodownStock '9/5/2013 12:00:00 AM',0

	

	
