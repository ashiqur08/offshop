set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[usp_Requisition]
@pGodownStockId int,
@ProductId int,
@pSizeOfBottle int,
@pQty int,
@pBarCode varchar(50),
@pPurchaseRate int,
@pMRP int,
@pTotalAmount decimal(18,0),
@Status char(1),
@pMainId int,

@pFirstEnteredBy int,

@pLastModifiedBy int,
@pHotelId int
as
	declare @pOffshop_GodownStockId int
	begin		
		if(@pGodownStockId = 0)		
		begin		
			insert into Offshop_Stock
				(
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
				)
				values
				(
					@ProductId,
					@pSizeOfBottle,
					@pQty,
					@pBarCode,
					@pPurchaseRate,
					@pMRP,
					@pTotalAmount,
					@Status,
					@pMainId,
					
					@pFirstEnteredBy,
					
					@pLastModifiedBy,
					@pHotelId
				)	
				set @pGodownStockId = scope_identity()
	------------------------------------------------------------------------------------
				
			
				insert into GodownStock
				(
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
				)
				values
				(
					@ProductId,
					@pSizeOfBottle,
					@pQty,
					@pBarCode,
					@pPurchaseRate,
					@pMRP,
					@pTotalAmount,
					@Status,
					@pGodownStockId,
					
					@pFirstEnteredBy,
					
					@pLastModifiedBy,
					@pHotelId
				)
		end
	end

