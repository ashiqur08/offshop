set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_Delete_DueDetails]
	@pDueDetailsId int
	as
	begin
		delete from DueDetails where DueDetailsId = @pDueDetailsId
	end
