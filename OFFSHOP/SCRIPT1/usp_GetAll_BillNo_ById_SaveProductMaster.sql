set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]
	@pSaveProductMasterId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaveProductMasterId,BillNo from SaveProductMaster 
	where SaveProductMasterId = @pSaveProductMasterId and Occupy='Y'
	
END






