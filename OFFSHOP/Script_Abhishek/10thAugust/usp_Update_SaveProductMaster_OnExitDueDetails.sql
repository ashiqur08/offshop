CREATE PROCEDURE usp_Update_SaveProductMaster_OnExitDueDetails
@pBillNo BIGINT,
@pDueAmount decimal
as
declare @cash decimal
begin
	select @cash =  Cash from SaveProductMaster where BillNo = @pBillNo
	set @cash = @cash + @pDueAmount 
	update SaveProductMaster
	set Cash = @cash,
		Due = 0
	where BillNo = @pBillNo
end


-- exec usp_Update_SaveProductMaster_OnExitDueDetails 1,100