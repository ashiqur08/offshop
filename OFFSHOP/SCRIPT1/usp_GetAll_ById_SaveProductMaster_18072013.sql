set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetAll_ById_SaveProductMaster]
	@pSaveProductMasterId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BillNo from SaveProductMaster 
	where SaveProductMasterId = @pSaveProductMasterId and Occupy='Y'
	
END




