alter procedure usp_GetAllOffshopStock_By_Date
as
begin 
	select ProductId,Barcode,convert(varchar(10),(FirstEnteredOn),101) as Date,sum(Qty) as 'TotalRequisition' from Offshop_Stock 
	where FirstEnteredOn <= getdate()
	 group by ProductId,Barcode,convert(varchar(10),(FirstEnteredOn),101)
end




-- exec usp_GetAllOffshopStock_By_Date

 