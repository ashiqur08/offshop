set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_Save_PurchaseMaster]
	@pPurchaseId			int OUTPUT,
	@pPurchaseDate		   datetime,
	@pLedgerId		int,
	@pInvoiceNo varchar(50),
    @pInvoiceDate datetime,
	@pExcisePassNo	varchar(50),
	@pTotalBottle	decimal,
	@pTotalMRP	decimal,
	@pTotalGross	decimal,
	@pTotalDiscount	decimal,
	@pSTaxOnTotalMRPPer	decimal,
	@pSTaxOnTotalMRPAmt decimal,
	@pSpecialDiscount	decimal,
	@pTCS	decimal,
	@pEduCessPer	decimal,
	@pEduCessAmt	decimal,
	@pNetAmount	decimal,
	--@pFirstEnteredOn	datetime,
	@pFirstEnteredBy	int,
	--@pLastModifiedOn	datetime,
	@pLastModifiedBy	int,
	@pHotelId	int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pPurchaseId = 0
	BEGIN
		INSERT INTO PurchaseMaster
			(
			PurchaseDate,
			LedgerId,
			InvoiceNo,
			InvoiceDate,
			ExcisePassNo,
			TotalBottle,
			TotalMRP,
			TotalGross,
			TotalDiscount,
			STaxOnTotalMRPPer,
			STaxOnTotalMRPAmt,
			SpecialDiscount,
			TCS,
			EduCessPer,
			EduCessAmt,
			NetAmount,
			FirstEnteredOn,
			FirstEnteredBy,
			LastModifiedOn,
			LastModifiedBy,
			HotelId
			)
		VALUES
			(
			@pPurchaseDate,
			@pLedgerId,
			@pInvoiceNo,
			@pInvoiceDate,
			@pExcisePassNo,
			@pTotalBottle,
			@pTotalMRP,
			@pTotalGross,
			@pTotalDiscount,
			@pSTaxOnTotalMRPPer,
			@pSTaxOnTotalMRPAmt,
			@pSpecialDiscount,
			@pTCS,
			@pEduCessPer,
			@pEduCessAmt,
			@pNetAmount,
			getdate(),
			@pFirstEnteredBy,
			getdate(),
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pPurchaseId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE PurchaseMaster
		SET 
		PurchaseDate = @pPurchaseDate,
		LedgerId = @pLedgerId,
		InvoiceNo=@pInvoiceNo,
		InvoiceDate = @pInvoiceDate,
		ExcisePassNo = @pExcisePassNo,
		TotalBottle = @pTotalBottle,
		TotalMRP = @pTotalMRP,
		TotalGross = @pTotalGross,
		TotalDiscount = @pTotalDiscount,
		STaxOnTotalMRPPer = @pSTaxOnTotalMRPPer,
		STaxOnTotalMRPAmt = @pSTaxOnTotalMRPAmt,
		SpecialDiscount = @pSpecialDiscount,
		TCS = @pTCS,
		EduCessPer = @pEduCessPer,
		EduCessAmt = @pEduCessAmt,
		NetAmount = @pNetAmount,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId = @pHotelId
		WHERE PurchaseId = @pPurchaseId
	END
END











