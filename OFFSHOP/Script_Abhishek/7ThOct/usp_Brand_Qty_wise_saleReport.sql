alter procedure usp_Brand_Qty_wise_saleReport
@pfrmdt datetime,
@ptodt datetime,
@pHotelId int
as
begin
	select ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,sum(SaveProductDetails.Qty)as 'Qty In Bottle',
		BottlePerCase.SizeOfBottle from ProductSubCategoryMaster,ProductMaster,SaveProductDetails,BottlePerCase where  
		ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and 	ProductMaster.ProductId = 
		SaveProductDetails.ProductId and ProductMaster.CaseId = BottlePerCase.CaseId and ProductSubCategoryMaster.HotelId = @pHotelId and 
		ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId and SaveProductDetails.BillDate between @pfrmdt and @ptodt
		group by ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,
		BottlePerCase.SizeOfBottle order by ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName
end



-- exec usp_Brand_Qty_wise_saleReport '9/26/2013','10/6/2013',1