set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_Save_GodownBreakage]
	@pBreakageId			int OUTPUT,
	@pBreakageDate			datetime,
	@pProductId				int,
	@pCaseId				int,
	@pBarCode				varchar(50),
	@pBreakageQty			int,
	@pTypeId				int,
	@pFirstEnteredBy		int,
	@pHotelId				int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pBreakageId = 0
	BEGIN
		INSERT INTO GodownBreakage
			(
			BreakageDate,
			ProductId,
			CaseId,
			BarCode,
			BreakageQty,
			TypeId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pBreakageDate,
			@pProductId,
			@pCaseId,
			@pBarCode,
			@pBreakageQty,
			@pTypeId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pBreakageId = SCOPE_IDENTITY()
			insert into GodownStock(ProductId,SizeOfBottle,Qty,Barcode,Status,MainId,FirstEnteredBy,HotelId)select GodownBreakage.ProductId,
			BottlePerCase.SizeOfBottle,GodownBreakage.BreakageQty,GodownBreakage.Barcode,'B',@pBreakageId,GodownBreakage.FirstEnteredBy,
			GodownBreakage.HotelId  from GodownBreakage,BottlePerCase 
			where GodownBreakage.CaseId = BottlePerCase.CaseId and GodownBreakage.BreakageId = @pBreakageId
			
	END
	ELSE
	BEGIN
		UPDATE GodownBreakage
		SET 
		BreakageDate = @pBreakageDate,
		ProductId = @pProductId,
		CaseId=@pCaseId,
		BarCode=@pBarCode,
		BreakageQty=@pBreakageQty,
		TypeId=@pTypeId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId=@pHotelId
		WHERE BreakageId = @pBreakageId
	
		update GodownStock
		set
		ProductId = @pProductId,
		SizeOfBottle = (select BottlePerCase.SizeOfBottle from GodownBreakage,BottlePerCase 
					where GodownBreakage.CaseId = BottlePerCase.CaseId and GodownBreakage.BreakageId = @pBreakageId),
		Qty = @pBreakageQty,
		Barcode = @pBarCode,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId=@pHotelId
		where MainId = @pBreakageId
	END
END




-- exec usp_Save_GodownBreakage 2,'7/25/2013 3:48:02 PM',4,3,1111,15,1,0,0



-- select BottlePerCase.SizeOfBottle from GodownBreakage,BottlePerCase,ProductMaster where GodownBreakage.CaseId = BottlePerCase.CaseId and BottlePerCase.CaseId = ProductMaster.CaseId and GodownBreakage.ProductId = ProductMaster.ProductId and GodownBreakage.BreakageId = 1