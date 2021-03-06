set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAllSaleReport_By_Peg1]
@pBtlSize int,
@pHotelId int,
@pDateFrm datetime,
@pDateto datetime

as
begin

create table #PegReport
(
	SubCatagoryId	int,
	SubCatagoryName varchar(50),
	Peg				decimal (18,2),
	--Ml				int,
	Amount			decimal(18,2)
)

	
	
			insert into #PegReport  select ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,
		--round(cast((sum(SaveProductDetails.Qty) * (BottlePerCase.SizeOfBottle)/30.0) as decimal(16,2) ),0)as Peg,
			round((cast((sum(SaveProductDetails.Qty) * (BottlePerCase.SizeOfBottle)/30.0) as decimal(16,2) )/2),0) as Peg,			
--		 convert(varchar(10),(parsename(cast((sum(SaveProductDetails.Qty) * (BottlePerCase.SizeOfBottle)/30.0) as decimal(16,2)),1))*30)
--			as Ml,
			sum(SaveProductDetails.Amount)as Amount from ProductSubCategoryMaster,BottlePerCase,ProductMaster,SaveProductDetails where 
			ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and ProductMaster.ProductId = SaveProductDetails.ProductId 
			and ProductMaster.CaseId = BottlePerCase.CaseId and BottlePerCase.SizeOfBottle = @pBtlSize
			and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
			and ProductSubCategoryMaster.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId
			group by ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,
			BottlePerCase.SizeOfBottle

			--select * from #PegReport order by SubCatagoryName

--			declare @SubCatagoryId				int							
--			declare @peg				decimal
--			declare @Ml				    int 
--					
--			declare CUR cursor for 
--						select SubCatagoryId,Peg,Ml
--						from #PegReport
--						
--					open CUR
--					fetch next from CUR into @SubCatagoryId,@peg,@Ml
--					while @@fetch_status=0
--					BEGIN
--						if(@Ml >=5)
--						begin
--							update #PegReport set Peg = Peg + 1 where SubCatagoryId = @SubCatagoryId
--						end
--						fetch next from CUR into @SubCatagoryId,@peg,@Ml
--					END
--					close CUR
--					deallocate CUR
			
		
	select SubCatagoryName,Peg,Amount from #PegReport order by SubCatagoryName

end



-- exec usp_GetAllSaleReport_By_Peg1 1000,1,'9/26/2013','10/05/2013'
-- exec usp_GetAllSaleReport_By_Peg 0,0,0,1000,1,'9/26/2013','9/30/2013'

