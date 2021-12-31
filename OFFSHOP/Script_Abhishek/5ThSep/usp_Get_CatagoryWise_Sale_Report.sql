alter procedure [dbo].usp_Get_CatagoryWise_Sale_Report
	@pCategory varchar(10),
	@pSubCatagory varchar(10),
	@pDateFrm datetime,
	@pDateto datetime,
	@pHotelId int
	as
	begin 
		select sum(SaveProductDetails.Qty)as Quantity,sum(SaveProductDetails.Amount)as Amount,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
		ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
		from SaveProductDetails,ProductMaster,BottlePerCase,ProductCategoryMaster,ProductSubCategoryMaster
		where SaveProductDetails.ProductId = ProductMaster.ProductId 
		and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.CategoryId = ProductCategoryMaster.CategoryId
		and ProductMaster.SubCategoryId = ProductSubCategoryMaster.SubCategoryId and ProductCategoryMaster.CategoryId = @pCategory
		and ProductSubCategoryMaster.SubCategoryId = @pSubCatagory
		and SaveProductDetails.BillDate between @pDateFrm and @pDateto and SaveProductDetails.HotelId = @pHotelId 
		and ProductMaster.HotelId = @pHotelId group by(ProductMaster.ProductName),BottlePerCase.SizeOfBottle,
		ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
	end

-- exec usp_Get_CatagoryWise_Sale_Report 3,4,'8/24/2013 11:51:00 AM','9/24/2013 11:51:00 AM',0