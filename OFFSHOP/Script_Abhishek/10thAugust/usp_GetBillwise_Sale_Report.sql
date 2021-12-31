ALTER PROCEDURE usp_GetBillwise_Sale_Report
@pDateFrom DATETIME,
@pDateto DATETIME,
@pHotelId int
as
begin  
	select BillNo,ReceivableAmt from SaveProductMaster where BillDate between @pDateFrom and @pDateto and HotelId = @pHotelId
end

-- exec usp_GetBillwise_Sale_Report '8/10/2013 12:00:00 AM','8/10/2013 12:00:00 AM'