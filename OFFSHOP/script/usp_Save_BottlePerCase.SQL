set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_Save_BottlePerCase]
	@pCaseId			int OUTPUT,
	@pType				varchar(50),
	@pSizeOfBottle		int,
	@pNoOfBottlePerCase int,
	@pFirstEnteredBy	int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pCaseId = 0
	BEGIN
		INSERT INTO BottlePerCase
			(
			Type,
			SizeOfBottle,
			NoOfBottlePerCase,
			FirstEnteredBy
			)
		VALUES
			(
			@pType,
			@pSizeOfBottle,
			@pNoOfBottlePerCase,
			@pFirstEnteredBy
			)
		SET @pCaseId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE BottlePerCase
		SET 
		Type = @pType,
		SizeOfBottle = @pSizeOfBottle,
		NoOfBottlePerCase=@pNoOfBottlePerCase,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE CaseId = @pCaseId
	END
END





--exec usp_Save_BottlePerCase 0,'Bottle',250,5,0

