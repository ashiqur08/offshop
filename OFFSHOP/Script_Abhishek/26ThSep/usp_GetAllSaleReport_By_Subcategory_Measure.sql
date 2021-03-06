set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAllSaleReport_By_Subcategory_Measure]
@pCategoryId int,
@pSubCategoryId int,
@pProductId int,
@pBtlSize int,
@pHotelId int,
@pDateFrm datetime,
@pDateto datetime

as
begin
	if(@pCategoryId = 0 and @pSubCategoryId = 0 and @pProductId = 0)
		begin
			select ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,
			sum(SaveProductDetails.Qty)as Quantity,BottlePerCase.SizeOfBottle,
			sum(SaveProductDetails.Amount)as Amount from ProductSubCategoryMaster,BottlePerCase,ProductMaster,SaveProductDetails where 
			ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and ProductMaster.ProductId = SaveProductDetails.ProductId 
			and ProductMaster.CaseId = BottlePerCase.CaseId and BottlePerCase.SizeOfBottle = @pBtlSize
			and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
			and ProductSubCategoryMaster.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId
			group by ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,
			BottlePerCase.SizeOfBottle
			
		end
	else
		begin
			select ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,
			sum(SaveProductDetails.Qty)as Quantity,BottlePerCase.SizeOfBottle,
			sum(SaveProductDetails.Amount)as Amount from ProductCategoryMaster,ProductSubCategoryMaster,
			BottlePerCase,ProductMaster,SaveProductDetails where ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId 
			and ProductMaster.ProductId = SaveProductDetails.ProductId and ProductMaster.CaseId = BottlePerCase.CaseId 
			and ProductCategoryMaster.CategoryId = @pCategoryId and ProductSubCategoryMaster.SubCategoryId = @pSubCategoryId and 
			ProductMaster.ProductId = @pProductId
			and BottlePerCase.SizeOfBottle = @pBtlSize and SaveProductDetails.BillDate between @pDateFrm and @pDateto  
			and ProductSubCategoryMaster.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId
			group by ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,
			BottlePerCase.SizeOfBottle
		end
end




-- exec usp_GetAllSaleReport_By_Subcategory_Measure 0,0,0,1000,1,'9/26/2013','9/27/2013'
-- exec usp_GetAllSaleReport_By_Subcategory_Measure 3,4,133,1000,1,'9/26/2013','9/27/2013'



