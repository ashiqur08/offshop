set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_GetAllOffshopStock_By_Date]
as
begin 
	select convert(varchar(10),(FirstEnteredOn),101) as Date,sum(Qty) as 'TotalRequisition' 
	from Offshop_Stock 
	where FirstEnteredOn <= getdate() and Offshop_Stock.status='R'
	 group by convert(varchar(10),(FirstEnteredOn),101)
end




-- exec usp_GetAllOffshopStock_By_Date

 

