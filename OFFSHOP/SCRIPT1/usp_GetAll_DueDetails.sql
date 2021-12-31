set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetAll_DueDetails]
	@pHotelId INT
AS

BEGIN
	SET NOCOUNT ON;
	SELECT	DM.DueId,SPM.BillNo,GM.GuestName,DM.DueAmount 
	FROM DueMaster DM, GuestMaster GM, SaveProductMaster SPM
	WHERE DM.GuestId=GM.GuestId and DM.SaveProductMasterId=SPM.SaveProductMasterId 
		and SPM.HotelId=@pHotelId
END









