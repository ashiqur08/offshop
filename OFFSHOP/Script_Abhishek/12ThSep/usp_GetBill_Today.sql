alter procedure usp_GetBill_Today
@pDt datetime,
@pHotelId int
as
begin
	select BillNo,SaveProductMasterId,convert(varchar(10),BillDate,101)as BillDate from SaveProductMaster
	where convert(varchar(10),BillDate,101) = @pDt
end

-- exec usp_GetBill_Today '9/13/2013',0