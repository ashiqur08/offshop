set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[usp_GetAll_ById_DueDetails]
	@pDueDetailsId	int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
		GM.PhoneNo,isnull(sum(DD.PaidCash)+sum(DD.PaidCard),0)
	FROM GuestMaster GM,DueDetails DD,DueMaster DM, SaveProductMaster SPM
	where DM.GuestId = GM.GuestId and DD.DueId = DM.DueId 
		and SPM.SaveProductMasterId=DM.SaveProductMasterId
		and DD.DueDetailsId=@pDueDetailsId
	group by SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
		GM.PhoneNo
END

