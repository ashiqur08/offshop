set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Save_GodownStock_From_Requisition]
@pCurrentDate datetime
as 
begin
	insert into GodownStock (ProductId,
					SizeOfBottle,
					Qty,
					BarCode,
					PurchaseRate,
					MRP,
					TotalAmount,
					Status,
					MainId,
					
					FirstEnteredBy,
					
					LastModifiedBy,
					HotelId)
			 select 
					ProductId,
					SizeOfBottle,
					Qty,
					BarCode,
					PurchaseRate,
					MRP,
					TotalAmount,
					Status,
					MainId,
					
					FirstEnteredBy,
					
					LastModifiedBy,
					HotelId
	
	 from Offshop_Stock where convert(varchar(10),FirstEnteredOn,101) = @pCurrentDate
end

-- exec usp_Save_GodownStock_From_Requisition'9/11/2013'
