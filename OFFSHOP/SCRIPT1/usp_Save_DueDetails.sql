set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_Save_DueDetails]

	---------For GuestMaster----------
	@pDueDetailsId			int OUTPUT,
	@pDueId					int,
	@pPaidCash				decimal,
	@pPaidCard				decimal,
	@pLastPayDate			datetime
AS
BEGIN
	SET NOCOUNT ON;
	IF @pDueDetailsId = 0
	BEGIN
		INSERT INTO DueDetails
			(
			DueId,
			PaidCash,
			PaidCard,
			LastPayDate
			)
		VALUES
			(
			@pDueId,
			@pPaidCash,
			@pPaidCard,
			@pLastPayDate
			)
		SET @pDueDetailsId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE DueDetails
		SET PaidCash = @pPaidCash,
		PaidCard = @pPaidCard,
		LastPayDate = LastPayDate 
		WHERE DueDetailsId = @pDueDetailsId
	END
END










