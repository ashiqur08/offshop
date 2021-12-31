			Date Operation
--------------------------------------------------
-- select ProductId,Qty from SaveProductDetails where month(BillDate) = month(getdate())



declare @dt datetime
select @dt = dateadd(yyyy, -1, getdate())
select @dt
select convert(varchar(20),@dt,101)

----------------------------------------
declare @dt1 varchar(10)
declare @dt2 varchar(10)
select @dt1 = datepart(month,dateadd(yyyy, -1, getdate()))-- to display only month of previous year.
select @dt2 = datepart(year,dateadd(yyyy, -1, getdate()))-- to display only year of previous year.
declare @dt3 varchar(10)
set @dt3 = @dt1 + '/' + @dt2
select @dt3
-------------------------------------------------------
--to get only month and year

 SELECT RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,GETDATE()),103),7)
SELECT RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) from SaveProductDetails where ProductId = 2
---------------------------------------------------

declare @dt1 varchar(10)
declare @dt2 varchar(10)
select @dt1 = datepart(month,dateadd(yyyy, -1, getdate()))-- to display only month of previous year.
select @dt2 = datepart(year,dateadd(yyyy, -1, getdate()))-- to display only year of previous year.
declare @dt3 varchar(10)
set @dt3 = '0' + @dt1 + '/' + @dt2
select @dt3
select * from SaveProductDetails where RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) = @dt3
-----------------------------------------------------------------------------------
declare @dt1 varchar(10)
declare @dt2 varchar(10)
select @dt1 = datepart(month,dateadd(yyyy, -1, getdate()))-- to display only month of previous year.
select @dt2 = datepart(year,dateadd(yyyy, -1, getdate()))-- to display only year of previous year.
declare @dt3 varchar(10)
declare @CategoryId int
declare @SubCategoryId int
declare @CategoryName varchar(50)
declare @SubCategoryName varchar(50)
declare @CurrentMnthQty int
declare @PrevtMnthQty int
declare @UpToMnthCurrentYearQty int
declare @SaleUpToMnthOfPrevYear int
set @dt3 = '0' + @dt1 + '/' + @dt2

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


-- truncate table exise
--------------------------------------------------------------------------------------
------For update SaleInMonthOfPrevYear
declare CUR1 cursor for 

select ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as PreviousMnthQty 
from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails where
ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
and ProductMaster.ProductId = SaveProductDetails.ProductId and 
RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) = @dt3  
group by ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
ProductSubCategoryMaster.SubCategoryName

open CUR1
        fetch next from CUR1 into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@PrevtMnthQty
		while @@fetch_status=0
        begin
		update exise
		set SaleInMnthOfPrevYea = @PrevtMnthQty where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
		fetch next from CUR1 into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@PrevtMnthQty
						
		END
		close CUR1
		deallocate CUR1
--------------------------------------------------------------------------------------
------For update SaleUpToMnthOfCurrentYear

declare CUR2 cursor for

select ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as CurrentMnthQty  
from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails  where
ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
and ProductMaster.ProductId = SaveProductDetails.ProductId and month(BillDate) <= month(getdate())
group by ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
ProductSubCategoryMaster.SubCategoryName 
open CUR2
        fetch next from CUR2 into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@UpToMnthCurrentYearQty
		while @@fetch_status=0
        begin
		update exise
		set SaleUpToMnthOfCurrentYear = @UpToMnthCurrentYearQty where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
		fetch next from CUR2 into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@UpToMnthCurrentYearQty
						
		END
		close CUR2
		deallocate CUR2
------------------------------------------------------------------------------------

------For update SaleUpToMnthOfPrevYear

declare CUR3 cursor for

select ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as PreviousMnthQty 
from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails where
ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
and ProductMaster.ProductId = SaveProductDetails.ProductId and 
RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) <= @dt3  
group by ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
ProductSubCategoryMaster.SubCategoryName
open CUR3
        fetch next from CUR3 into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@SaleUpToMnthOfPrevYear
		while @@fetch_status=0
        begin
		update exise
		set SaleUpToMnthOfPrevYear = @SaleUpToMnthOfPrevYear where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
		fetch next from CUR3 into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@SaleUpToMnthOfPrevYear
						
		END
		close CUR3
		deallocate CUR3

---------------------------------------------------------------------------------------

----------------------Sale upto the month of current year

declare @dt1 varchar(10)
declare @dt2 varchar(10)
select @dt1 = datepart(month,dateadd(yyyy, -1, getdate()))-- to display only month of previous year.
select @dt2 = datepart(year,dateadd(yyyy, -1, getdate()))-- to display only year of previous year.
declare @dt3 varchar(10)
set @dt3 = '0' + @dt1 + '/' + @dt2
select ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as CurrentMnthQty  
from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails  where
ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
and ProductMaster.ProductId = SaveProductDetails.ProductId and month(BillDate) <= month(getdate())
group by ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName 


----------------------------------------------------------------------------------------------

---------------------Sale upto the month of previous year

select ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as PreviousMnthQty 
from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails where
ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
and ProductMaster.ProductId = SaveProductDetails.ProductId and 
RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) <= @dt3  
group by ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName



