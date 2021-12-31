alter procedure usp_ExiseReport

as
begin
	declare @dt1 varchar(10)
	declare @dt2 varchar(10)
	select @dt1 = datepart(month,dateadd(yyyy, -1, getdate()))-- to display only month of previous year.
	select @dt2 = datepart(year,dateadd(yyyy, -1, getdate()))-- to display only year of previous year.
	declare @dt3 varchar(10)
	declare @CategoryId int
	declare @SubCategoryId int
	declare @CategoryName varchar(50)
	declare @SubCategoryName varchar(50)
	declare @CurrentMnthQty decimal(18,2)
	declare @PrevtMnthQty decimal(18,2)
	declare @UpToMnthCurrentYearQty decimal(18,2)
	declare @SaleUpToMnthOfPrevYear decimal(18,2)
	declare @SaleInMnthOfCurrentYear decimal(18,2)
	declare @GrowthRate  decimal(18,2)
	declare @GrowthRate1  decimal(18,2)
	-- set @dt3 = '0' + @dt1 + '/' + @dt2
	if(@dt1 < 10)
	begin
	set @dt3 = '0' + @dt1 + '/' + @dt2
	end
	else
	begin 
		set @dt3 =  @dt1 + '/' + @dt2
	end

	truncate table exise
	declare CUR cursor for
			select ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
			ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as CurrentMnthQty 
			from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails  where
			ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
			and ProductMaster.ProductId = SaveProductDetails.ProductId and month(BillDate) = month(getdate())
			group by ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
			ProductSubCategoryMaster.SubCategoryName
	open CUR
			fetch next from CUR into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@CurrentMnthQty
			while @@fetch_status=0
			begin
			insert into exise(CatagoryId,Catagory,SubCatagoryId,SubCatagory,SaleInMnthOfCurrentYear)
			values(@CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@CurrentMnthQty)
			fetch next from CUR into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@CurrentMnthQty
							
			END
			close CUR
			deallocate CUR
	declare CUR1 cursor for 
			select CatagoryId ,SubCatagoryId,SaleInMnthOfCurrentYear from exise order by slno
	open CUR1
			fetch next from CUR1 into @CategoryId,@SubCategoryId,@SaleInMnthOfCurrentYear
			while @@fetch_status=0
			begin
				select @PrevtMnthQty=sum(SaveProductDetails.Qty)
				from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails 
				where ProductCategoryMaster.CategoryId = ProductMaster.CategoryId 
				and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
				and ProductMaster.ProductId = SaveProductDetails.ProductId 
				and RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) = @dt3 
				and ProductSubCategoryMaster.SubCategoryId = @SubCategoryId
				and ProductCategoryMaster.CategoryId = @CategoryId
				update exise
				set SaleInMnthOfPrevYea = @PrevtMnthQty where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				--------------
				set @GrowthRate = ((@SaleInMnthOfCurrentYear - @PrevtMnthQty) / @SaleInMnthOfCurrentYear )*100
    			update exise
				set GrowthRate = @GrowthRate
					where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				------------------
				select @UpToMnthCurrentYearQty = sum(SaveProductDetails.Qty) 
				from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails  where
				ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
				and ProductMaster.ProductId = SaveProductDetails.ProductId and month(BillDate) <= month(getdate())
				and ProductSubCategoryMaster.SubCategoryId = @SubCategoryId
				and ProductCategoryMaster.CategoryId = @CategoryId
				update exise
				set SaleUpToMnthOfCurrentYear = @UpToMnthCurrentYearQty where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				---------------------
				select @SaleUpToMnthOfPrevYear = sum(SaveProductDetails.Qty)
				from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails where
				ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
				and ProductMaster.ProductId = SaveProductDetails.ProductId and 
				RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) <= @dt3  
				and ProductSubCategoryMaster.SubCategoryId = @SubCategoryId
				and ProductCategoryMaster.CategoryId = @CategoryId
				update exise
				set SaleUpToMnthOfPrevYear = @SaleUpToMnthOfPrevYear where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				----------------------	
				set @GrowthRate1 = ((@UpToMnthCurrentYearQty - @SaleUpToMnthOfPrevYear) / @UpToMnthCurrentYearQty )*100
				update exise
				set GrowthRate1 = @GrowthRate1
					where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				-------------------
				fetch next from CUR1 into @CategoryId,@SubCategoryId,@SaleInMnthOfCurrentYear
							
			END
			close CUR1
			deallocate CUR1
	select SlNo,Catagory +'( '+ SubCatagory +')' as Fl,SaleInMnthOfCurrentYear,SaleInMnthOfPrevYea,GrowthRate,SaleUpToMnthOfCurrentYear,SaleUpToMnthOfPrevYear,GrowthRate1 from exise 
	
	

end




-- exec usp_ExiseReport 