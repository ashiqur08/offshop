set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
alter procedure [dbo].[usp_Measure_AllBrand_Wise_SaleReport]
@pBtlSize int,
@pfrmdt datetime,
@ptodt datetime,
@pHotelId int
as
begin
	select ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,sum(SaveProductDetails.Qty)as 'Qty In Bottle',
		BottlePerCase.SizeOfBottle from ProductSubCategoryMaster,ProductMaster,SaveProductDetails,BottlePerCase where  
		BottlePerCase.SizeOfBottle=@pBtlSize and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and 	ProductMaster.ProductId = 
		SaveProductDetails.ProductId and ProductMaster.CaseId = BottlePerCase.CaseId and ProductSubCategoryMaster.HotelId = @pHotelId and 
		ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId and SaveProductDetails.BillDate between @pfrmdt and @ptodt
		group by ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,
		BottlePerCase.SizeOfBottle order by ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName
end

-- exec usp_Measure_AllBrand_Wise_SaleReport 1000,'9/26/2013','10/7/2013',1