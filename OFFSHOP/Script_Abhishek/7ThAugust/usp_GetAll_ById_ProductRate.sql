set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_GetAll_ById_ProductRate]
	@pProductId INT,
	@pBarcode varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	MRP
	FROM GodownStock
	WHERE ProductId = @pProductId and Status = 'P' and Barcode = @pBarcode
END
