alter PROCEDURE [dbo].[usp_Save_PurchaseDetails]
	@pPurchaseDetailsId int OUTPUT,
	@pPurchaseId		int ,
	@pProductId		int,
	@pBatchNo		   int,
	@pBarCode		int,
	@pPurchaseCase int,
    @pPurchaseBottle int,
	@pRebateCase	int,
	@pRebateBottle	int,
	@pMRPBottle	decimal,
	@pRateCase	decimal,
	@pDiscCase	decimal,
	@pTotalBottle	int,
	@pTotalMRP decimal,
	@pTotalDiscount	decimal,
	@pTotalAmount decimal,
	
	@pFirstEnteredBy	int,
	
	
	@pHotelId	int
	
AS
BEGIN
	SET NOCOUNT ON;
	IF @pPurchaseDetailsId = 0
	BEGIN
		INSERT INTO PurchaseDetails
			(
			PurchaseId,
			ProductId,
			BatchNo,
			BarCode,
			PurchaseCase,
			PurchaseBottle,
			RebateCase,
			RebateBottle,
			MRPBottle,
			RateCase,
			DiscCase,
			TotalBottle,
			TotalMRP,
			TotalDiscount,
			TotalAmount,
			FirstEnteredOn,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pPurchaseId,
			@pProductId,
			@pBatchNo,
			@pBarCode,
			@pPurchaseCase,
			@pPurchaseBottle,
			@pRebateCase,
			@pRebateBottle,
			@pMRPBottle,
			@pRateCase,
			@pDiscCase,
			@pTotalBottle,
			@pTotalMRP,
			@pTotalDiscount,
			@pTotalAmount,
			getdate(),
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pPurchaseDetailsId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE PurchaseDetails
		SET 
		PurchaseId = @pPurchaseId,
		ProductId = @pProductId,
		BatchNo=@pBatchNo,
		BarCode = @pBarCode,
		PurchaseCase = @pPurchaseCase,
		PurchaseBottle = @pPurchaseBottle,
		RebateCase = @pRebateCase,
		RebateBottle = @pRebateBottle,
		MRPBottle = @pMRPBottle,
		RateCase = @pRateCase,
		DiscCase = @pDiscCase,
		TotalBottle = @pTotalBottle,
		TotalMRP = @pTotalMRP,
		TotalDiscount = @pTotalDiscount,
		TotalAmount = @pTotalAmount,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId = @pHotelId
		WHERE PurchaseDetailsId = @pPurchaseDetailsId
	END

end



