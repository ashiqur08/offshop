set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_Save_PurchaseMaster]
	-----For Master Entry-------
	@pPurchaseId		int OUTPUT,
	@pPurchaseDate		datetime,
	@pLedgerId			int,
	@pInvoiceNo			varchar(50),
    @pInvoiceDate		datetime,
	@pExcisePassNo		varchar(50),
	@pGrandTotalBottle	decimal,
	@pGrandTotalMRP		decimal,
	@pTotalGross		decimal,
	@pGrandTotalDisc    decimal,
	@pSTaxOnTotalMRPPer	decimal,
	@pSTaxOnTotalMRPAmt decimal,
	@pSpecialDiscount	decimal,
	@pTCS				decimal,
	@pEduCessPer		decimal,
	@pEduCessAmt		decimal,
	@pNetAmount			decimal,
	@pFirstEnteredBy	int,
	@pHotelId			int,

	-----For Details Entry------
	@pProductId			int,
	@pCaseId			int,
	@pBatchNo			varchar(50),
	@pBarCode			varchar(50),
	@pPurchaseCase		int,
    @pPurchaseBottle	int,
	@pTotPurchaseBtl	int,
	@pRebateCase		int,
	@pRebateBottle		int,
	@pTotRebateBtl		int,
	@pMRPBottle			decimal,
	@pRateCase			decimal,
	@pDiscCase			decimal,
	@pTotalBottle		int,
	@pTotalMRP			decimal,
	@pTotalDiscount		decimal,
	@pTotalAmount		decimal

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
				FirstEnteredBy,
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
				@pFirstEnteredBy,
				@pHotelId
				)
			SET @pPurchaseId = SCOPE_IDENTITY()
			-------------------
			INSERT INTO PurchaseDetails
				(
				PurchaseId,
				ProductId,
				CaseId,
				BatchNo,
				BarCode,
				PurchaseCase,
				PurchaseBottle,
				TotPurchaseBtl,
				RebateCase,
				RebateBottle,
				TotRebateBtl,
				MRPBottle,
				RateCase,
				DiscCase,
				TotalBottle,
				TotalMRP,
				TotalDiscount,
				TotalAmount,
				FirstEnteredBy,
				HotelId
				)
			VALUES
				(
				@pPurchaseId,
				@pProductId,
				@pCaseId,
				@pBatchNo,
				@pBarCode,
				@pPurchaseCase,
				@pPurchaseBottle,
				@pTotPurchaseBtl,
				@pRebateCase,
				@pRebateBottle,
				@pTotRebateBtl,
				@pMRPBottle,
				@pRateCase,
				@pDiscCase,
				@pTotalBottle,
				@pTotalMRP,
				@pTotalDiscount,
				@pTotalAmount,
				@pFirstEnteredBy,
				@pHotelId
				)
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
			LastModifiedBy = @pFirstEnteredBy
			WHERE PurchaseId = @pPurchaseId and HotelId = @pHotelId
			-------------------
			IF @pNetAmount=0
			BEGIN
				INSERT INTO PurchaseDetails
					(
					PurchaseId,
					ProductId,
					CaseId,
					BatchNo,
					BarCode,
					PurchaseCase,
					PurchaseBottle,
					TotPurchaseBtl,
					RebateCase,
					RebateBottle,
					TotRebateBtl,
					MRPBottle,
					RateCase,
					DiscCase,
					TotalBottle,
					TotalMRP,
					TotalDiscount,
					TotalAmount,
					FirstEnteredBy,
					HotelId
					)
				VALUES
					(
					@pPurchaseId,
					@pProductId,
					@pCaseId,
					@pBatchNo,
					@pBarCode,
					@pPurchaseCase,
					@pPurchaseBottle,
					@pTotPurchaseBtl,
					@pRebateCase,
					@pRebateBottle,
					@pTotRebateBtl,
					@pMRPBottle,
					@pRateCase,
					@pDiscCase,
					@pTotalBottle,
					@pTotalMRP,
					@pTotalDiscount,
					@pTotalAmount,
					@pFirstEnteredBy,
					@pHotelId
					)
			END
		END
	return @pPurchaseId
END















