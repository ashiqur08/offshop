set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[usp_GetAll_GuestName]
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	GuestId,GuestName
	FROM GuestMaster 
	where HotelId=@pHotelId
	ORDER by GuestName
END








