set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

-- exec usp_Godown_Stock_Drink '08/29/2013','08/30/2013',0

ALTER procedure [dbo].[usp_Godown_Stock_Drink]

	@from_dt    	datetime,
	@to_dt    		datetime,
	@pHotelId		int
as

declare @PurId		as int
declare @Btlsize	as int
declare @Opqty		as int
declare @RcvQty		as int
declare @Issueqty	as int
declare @DmgQty		as int
declare @ProdName	as varchar(50)


BEGIN

create table #opening_stock
(
	pur_product_id		int,
	size_of_bottle		int,
	Prod_Name		varchar(50)
)
create table #Total_stock
(
	productname		varchar(50),
	SizeOfBottle	int,
	OpQty			int,
	RcvQty			int,
	SaleQty			int,
	DmgQty			int,
	ClsQty			int
)

insert into #opening_stock
	SELECT distinct ProductMaster.productid,gd.SizeOfBottle,ProductMaster.productName
		FROM GodownStock gd inner join ProductMaster on ProductMaster.ProductId = gd.ProductId

--select * from #opening_stock

declare CUR cursor for select pur_product_id,size_of_bottle,Prod_Name from #opening_stock where size_of_bottle is not null
open CUR
fetch next from CUR into @PurId,@Btlsize,@ProdName
while @@fetch_status=0
	begin
		set @Opqty= (SELECT distinct ((select isnull(sum(Qty),0) from GodownStock,ProductMaster
				Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status ='O' 
				and ProductMaster.ProductId=@PurId and GodownStock.HotelId=@pHotelId)+
			(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.FirstEnteredOn <@from_dt and GodownStock.Status ='P'  
				and ProductMaster.ProductId=@PurId and GodownStock.HotelId=@pHotelId))- 
			((select isnull(sum(Qty),0)from GodownStock,ProductMaster
				where GodownStock.ProductId = ProductMaster.ProductId 
				and ProductMaster.ProductId=@PurId and GodownStock.FirstEnteredOn <@from_dt and GodownStock.Status ='R' and GodownStock.HotelId=@pHotelId)+ 
			(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				where GodownStock.ProductId=ProductMaster.ProductId 
				and ProductMaster.ProductId=@PurId and GodownStock.FirstEnteredOn <@from_dt and GodownStock.Status ='B' and GodownStock.HotelId=@pHotelId))
			FROM GodownStock gd inner join ProductMaster  on ProductMaster.ProductId = gd.ProductId 
				and ProductMaster.ProductId=@PurId and gd.HotelId=@pHotelId)

		--select @Opqty

		IF @Opqty=0
		begin
		set @Opqty=(select isnull(sum(Qty),0) from GodownStock,ProductMaster
			Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status ='O' 
			and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId = @PurId and GodownStock.HotelId=@pHotelId)
		end
		set @RcvQty=(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status ='P' 
				and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId = @PurId and GodownStock.HotelId=@pHotelId)
		set @Issueqty=(select isnull(sum(Qty),0)from GodownStock,ProductMaster
				where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status ='R'
				and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId=@PurId and GodownStock.HotelId=@pHotelId)
		set @DmgQty=(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				where GodownStock.ProductId=ProductMaster.ProductId and GodownStock.Status ='B'
				and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId=@PurId and GodownStock.HotelId=@pHotelId)

		insert into #Total_stock values(
			@ProdName,
			@Btlsize,
			@Opqty,
			@RcvQty,
			@Issueqty,
			@DmgQty,
			(@Opqty+@RcvQty-@Issueqty-@DmgQty))

		fetch next from CUR into @PurId,@Btlsize,@ProdName                                                                                                                                                                                                             
	end
close CUR
deallocate CUR

	select * from #Total_stock order by productname

--truncate table Godown_Closing_Stock
--insert into Godown_Closing_Stock select * from #Total_stock

drop table #opening_stock
drop table #Total_stock

END






