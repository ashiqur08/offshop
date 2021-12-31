set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Getall_SaveProductMaster_By_BillNo]
@pBillNo bigint,
@pHotelId int
as
begin
	select * from SaveProductMaster where BillNo = @pBillNo and HotelId = @pHotelId
end

-- exec usp_Getall_SaveProductMaster_By_BillNo 2,0

