alter procedure usp_GetAllSaleReport_By_Subcategory
@pHotelId int,
@pDateFrm datetime,
@pDateto datetime
as
begin
	select ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as Quantity,
	sum(SaveProductDetails.Amount)as Amount from ProductSubCategoryMaster,ProductMaster,SaveProductDetails where 
	ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and ProductMaster.ProductId = SaveProductDetails.ProductId 
	and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
	and ProductSubCategoryMaster.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId
	group by ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName
end

-- exec usp_GetAllSaleReport_By_Subcategory 1,'9/26/2013','9/26/2013'