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
--				@pTotalBottle,
--				@pTotalMRP,
				@pGrandTotalBottle,
				@pGrandTotalMRP,
				@pTotalGross,
--				@pTotalDiscount,
				@pGrandTotalDisc,
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
--			TotalBottle = @pTotalBottle,

			TotalBottle = @pGrandTotalBottle,
--			TotalMRP = @pTotalMRP,
			TotalMRP = @pGrandTotalMRP,
			TotalGross = @pTotalGross,
--			TotalDiscount = @pTotalDiscount,
			TotalDiscount = @pGrandTotalDisc,
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
			ELSE
			BEGIN

				delete from GodownStock where Status='P' and MainId=@pPurchaseId
				----------For Godown stock entry------------
					declare @ProductId		int
					declare @SizeOfBottle	int
					declare @Qty			int
					declare @BarCode		varchar(50)
					declare @MRP1           decimal(18,2)
					declare CUR cursor for 
						select ProductId,BottlePerCase.SizeOfBottle,TotalBottle,BarCode,MRPBottle
						from PurchaseDetails, BottlePerCase 
						where BottlePerCase.CaseId=PurchaseDetails.CaseId and PurchaseDetails.PurchaseId=@pPurchaseId
					open CUR
					fetch next from CUR into @ProductId,@SizeOfBottle,@Qty,@BarCode,@MRP1
					while @@fetch_status=0
					BEGIN
						insert into GodownStock(ProductId,SizeOfBottle,Qty,BarCode,MRP,Status,MainId,FirstEnteredBy,HotelId)
							values(@ProductId,@SizeOfBottle,@Qty,@BarCode,@MRP1,'P',@pPurchaseId,@pFirstEnteredBy,@pHotelId)
--							exec usp_Save_GodownLastQuantity @ProductId,@BarCode,@MRP1,@pHotelId
						fetch next from CUR into @ProductId,@SizeOfBottle,@Qty,@BarCode,@MRP1
					END
					close CUR
					deallocate CUR
				--------------------------------------
			END
		END
--	return @pPurchaseId
	select @pPurchaseId
END




























