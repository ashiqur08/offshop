SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](50) NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF__RoleMaste__First__3B75D760]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_RoleMaster] UNIQUE NONCLUSTERED 
(
	[RoleDescription] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DueMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DueMaster](
	[DueId] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NULL,
	[SaveProductMasterId] [int] NULL,
	[BillNo] [bigint] NULL,
	[DueAmount] [decimal](18, 0) NULL,
	[DueDate] [datetime] NULL,
	[Remarks] [nchar](10) NULL,
 CONSTRAINT [PK_DueMaster] PRIMARY KEY CLUSTERED 
(
	[DueId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaveProductMaster](
	[SaveProductMasterId] [int] IDENTITY(1,1) NOT NULL,
	[BillNo] [bigint] NULL,
	[BillDate] [datetime] NULL,
	[BillAmt] [decimal](18, 0) NULL,
	[DiscPer] [decimal](18, 2) NULL,
	[DiscAmt] [decimal](18, 0) NULL,
	[LSDiscAmt] [decimal](18, 0) NULL,
	[DiscRemarks] [varchar](100) NULL,
	[Complemantry_Remarks] [varchar](100) NULL,
	[ReceivableAmt] [decimal](18, 0) NULL,
	[Occupy] [char](1) NULL CONSTRAINT [DF_SaveProductMaster_Occupy]  DEFAULT ('N'),
	[Cash] [decimal](18, 0) NULL,
	[Card] [decimal](18, 0) NULL,
	[ExtraChargeOnCard] [decimal](18, 2) NULL,
	[Due] [decimal](18, 0) NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_SaveProductMaster_1] PRIMARY KEY CLUSTERED 
(
	[SaveProductMasterId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeHotelMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeHotelMaster](
	[EmployeeId] [int] NULL,
	[HotelId] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownLastQty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GodownLastQty](
	[GodownQtyId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeOfBottle] [int] NULL,
	[BarCode] [varchar](50) NULL,
	[LastQty] [int] NULL,
	[HotelId] [int] NULL,
	[Rate] [decimal](18, 0) NULL,
 CONSTRAINT [PK_GodownLastQty] PRIMARY KEY CLUSTERED 
(
	[GodownQtyId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_BottlePerCase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_BottlePerCase]
	@pCaseId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM BottlePerCase
	WHERE CaseId = @pCaseId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BottlePerCase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BottlePerCase](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[SizeOfBottle] [int] NULL,
	[NoOfBottlePerCase] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
 CONSTRAINT [PK_BottlePerCase] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[exise]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[exise](
	[SlNo] [int] IDENTITY(1,1) NOT NULL,
	[CatagoryId] [int] NULL,
	[SubCatagoryId] [int] NULL,
	[Catagory] [varchar](50) NULL,
	[SubCatagory] [varchar](50) NULL,
	[SaleInMnthOfCurrentYear] [int] NULL,
	[SaleInMnthOfPrevYea] [int] NULL,
	[GrowthRate] [decimal](18, 2) NULL,
	[SaleUpToMnthOfCurrentYear] [int] NULL,
	[SaleUpToMnthOfPrevYear] [int] NULL,
	[GrowthRate1] [decimal](18, 2) NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_exise] PRIMARY KEY CLUSTERED 
(
	[SlNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductCategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[TypeId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_ProductCategory_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductCategoryMaster] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_ProductCategoryMaster] UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PurchaseMaster](
	[PurchaseId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseDate] [datetime] NULL,
	[LedgerId] [int] NULL,
	[InvoiceNo] [varchar](50) NULL,
	[InvoiceDate] [datetime] NULL,
	[ExcisePassNo] [varchar](50) NULL,
	[TotalBottle] [int] NULL,
	[TotalMRP] [decimal](18, 0) NULL,
	[TotalGross] [decimal](18, 0) NULL,
	[TotalDiscount] [decimal](18, 0) NULL,
	[STaxOnTotalMRPPer] [decimal](18, 2) NULL,
	[STaxOnTotalMRPAmt] [decimal](18, 0) NULL,
	[SpecialDiscount] [decimal](18, 0) NULL,
	[TCS] [decimal](18, 0) NULL,
	[EduCessPer] [decimal](18, 2) NULL,
	[EduCessAmt] [decimal](18, 0) NULL,
	[NetAmount] [decimal](18, 0) NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_PurchaseMaster] PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PurchaseDetails](
	[PurchaseDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseId] [int] NULL,
	[ProductId] [int] NULL,
	[CaseId] [int] NULL,
	[BatchNo] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[PurchaseCase] [int] NULL,
	[PurchaseBottle] [int] NULL,
	[TotPurchaseBtl] [int] NULL,
	[RebateCase] [int] NULL,
	[RebateBottle] [int] NULL,
	[TotRebateBtl] [int] NULL,
	[MRPBottle] [decimal](18, 0) NULL,
	[RateCase] [decimal](18, 0) NULL,
	[DiscCase] [decimal](18, 0) NULL,
	[TotalBottle] [int] NULL,
	[TotalMRP] [decimal](18, 0) NULL,
	[TotalDiscount] [decimal](18, 0) NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_PurchaseDetails] PRIMARY KEY CLUSTERED 
(
	[PurchaseDetailsId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_GodownStock]
	@pGodownStockId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM GodownStock
	WHERE GodownStockId = @pGodownStockId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Save_GodownStock]
	@pGodownStockId		int OUTPUT,
	@pProductId			int,
	@pSizeOfBottle		int,
	@pQty				int,
	@pBarCode			varchar(50),
	@pPurchaseRate		int,
	@pMRP				int,
	@pTotalAmount		int,
	@pStatus			char(1),
	@pFirstEnteredBy	int,
	@pHotelId int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pGodownStockId = 0
	BEGIN
		INSERT INTO GodownStock
			(
			ProductId,
			SizeOfBottle,
			Qty,
			BarCode,
			PurchaseRate,
			MRP,
			TotalAmount,
			Status,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pProductId,
			@pSizeOfBottle,
			@pQty,
			@pBarCode,
			@pPurchaseRate,
			@pMRP,
			@pTotalAmount,
			@pStatus,
			@pFirstEnteredBy,
			@pHotelId
			)
		--exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@pMRP,@pHotelId
		SET @pGodownStockId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE GodownStock
		SET ProductId = @pProductId,
		SizeOfBottle=@pSizeOfBottle,
		Qty=@pQty,
		BarCode=@pBarCode,
		PurchaseRate=@pPurchaseRate,
		MRP=@pMRP,
		TotalAmount=@pTotalAmount,
		Status=@pStatus,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE GodownStockId = @pGodownStockId
	
		--exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@pMRP,@pHotelId
	END
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_BackupDatabase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_BackupDatabase]   
       @databaseName sysname, @backupType VARCHAR(1)  
AS  
BEGIN  
       SET NOCOUNT ON;  

       DECLARE @sqlCommand NVARCHAR(1000)  
       DECLARE @dateTime NVARCHAR(20)  

       SELECT @dateTime = REPLACE(CONVERT(VARCHAR, GETDATE(),111),''/'','''') +  
       REPLACE(CONVERT(VARCHAR, GETDATE(),108),'':'','''')   

       IF @backupType = ''F''  
               SET @sqlCommand = ''BACKUP DATABASE '' + @databaseName +  
               '' TO DISK = ''''F:\'' + @databaseName + ''_Full_'' + @dateTime + ''.BAK''''''    
         
       EXECUTE sp_executesql @sqlCommand  
END 

-- exec sp_BackupDatabase ''OFFSHOP'',''F''
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetRate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetRate]
	@pProductId	int,
	@pBarcode	varchar(50),
	@pHotelId	int
AS
BEGIN
	SET NOCOUNT ON;
--	SELECT Rate
--	FROM GodownLastQty
--	where ProductId=@pProductId and BarCode=@pBarcode and HotelId=@pHotelId
	SELECT max(MRP) as Rate
	FROM GodownStock
	where ProductId=@pProductId and BarCode=@pBarcode and HotelId=@pHotelId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownBreakage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GodownBreakage](
	[BreakageId] [int] IDENTITY(1,1) NOT NULL,
	[BreakageDate] [datetime] NULL,
	[ProductId] [int] NULL,
	[CaseId] [int] NULL,
	[BarCode] [int] NULL,
	[BreakageQty] [int] NULL,
	[TypeId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_GodownBreakage_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetQty]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetQty]
	@pProductId	int,
	@pBarcode	varchar(50),
	@pRate		decimal,
	@pHotelId	int
AS
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	declare	@pSataus char(1)
BEGIN
	SET NOCOUNT ON;
--	SELECT LastQty
--	FROM GodownLastQty
--	where ProductId=@pProductId and BarCode=@pBarcode and Rate=@pRate and HotelId=@pHotelId
	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = ''O'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = ''P'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = ''R'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = ''B'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
	select @pLastQty as LastQty
END

-- exec usp_GetQty 1,''1'',200,0


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductMaster](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductCode] [varchar](50) NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[CaseId] [int] NULL,
	[Rate] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [ProductMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductMaster] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemSetup](
	[SystemSetupId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyNamePresent] [char](1) NULL,
	[OutletNamePresent] [char](1) NULL,
	[WBSTPresent] [char](1) NULL,
	[WBSTPer] [decimal](10, 3) NULL,
	[VATPresent] [char](1) NULL,
	[VATPer] [decimal](10, 3) NULL CONSTRAINT [DF_SystemSetup_VATPer]  DEFAULT ((0)),
	[STaxPresent] [char](1) NULL,
	[STaxPer] [decimal](10, 3) NULL,
	[Note] [varchar](50) NULL,
	[WaiterPresent] [char](1) NULL CONSTRAINT [DF_SystemSetup_WaiterPresent]  DEFAULT ('N'),
	[TimePresent] [char](1) NULL CONSTRAINT [DF_SystemSetup_TimePresent]  DEFAULT ('N'),
	[SearchField] [varchar](20) NULL,
	[KotPresent] [char](1) NULL CONSTRAINT [DF_SystemSetup_KotPresent]  DEFAULT ('N'),
	[GuestPresent] [char](1) NULL CONSTRAINT [DF_SystemSetup_GuestPresent]  DEFAULT ('N'),
	[BillCopy] [int] NULL,
	[PrinterType] [varchar](50) NULL,
	[PrinterPort] [varchar](5) NULL,
	[DiffFoodBill] [char](1) NULL CONSTRAINT [DF_SystemSetup_DiffFoodBill]  DEFAULT ('N'),
	[BillNoPresent] [char](1) NULL,
	[BillFormat] [varchar](50) NULL,
	[AccFromDt] [datetime] NULL,
	[AccToDt] [datetime] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF__SystemSet__First__06CD04F7]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_SystemSetup] PRIMARY KEY CLUSTERED 
(
	[SystemSetupId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Purchase_Details]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Delete_Purchase_Details]
	@pPurchaseDetailsId int
	as
	begin
		delete from PurchaseDetails where PurchaseDetailsId = @pPurchaseDetailsId
	end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSubCategoryMaster](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](50) NULL,
	[TypeId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductSubCategoryMaster] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_ProductSubCategoryMaster] UNIQUE NONCLUSTERED 
(
	[SubCategoryName] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ledger_Master](
	[Ledger_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ledger_Group_id] [int] NULL,
	[Ledger_Nm] [varchar](50) NOT NULL,
	[Ledger_Op_Bal] [money] NULL,
	[Creditor_Add] [varchar](200) NOT NULL CONSTRAINT [DF_Ledger_Master_Creditor_Add]  DEFAULT (''),
	[Creditor_Add2] [varchar](200) NULL,
	[Creditor_Phno] [varchar](50) NOT NULL CONSTRAINT [DF_Ledger_Master_Creditor_Phno]  DEFAULT (''),
	[Creditor_Remarks] [varchar](50) NOT NULL CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]  DEFAULT (''),
	[HotelId] [int] NULL,
 CONSTRAINT [PK_Ledger_Master] PRIMARY KEY CLUSTERED 
(
	[Ledger_Id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OffshopBreakage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OffshopBreakage](
	[OffshopBreakageId] [int] IDENTITY(1,1) NOT NULL,
	[BreakageDate] [datetime] NULL,
	[ProductId] [int] NULL,
	[CaseId] [int] NULL,
	[BarCode] [int] NULL,
	[BreakageQty] [int] NULL,
	[TypeId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_OffshopBreakage_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionMenuOffshop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PermissionMenuOffshop](
	[MenuId] [int] NULL,
	[MenuName] [varchar](50) NULL,
	[MenuText] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionUserOffshop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PermissionUserOffshop](
	[EmployeeId] [int] NULL,
	[HotelId] [int] NULL,
	[MenuId] [nchar](10) NULL,
	[Visibility] [char](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelRoomTypeMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelRoomTypeMaster](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [varchar](100) NULL,
	[FirstEnteredOn] [datetime] NOT NULL CONSTRAINT [DF_HotelRoomTypeMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_HotelRoomTypeMaster] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Unit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_Unit]
	@pUnitId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM UnitMaster
	WHERE UnitId = @pUnitId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Group_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ledger_Group_Master](
	[Ledger_Group_Id] [int] NULL,
	[Ledger_Group_Nm] [varchar](50) NULL,
	[Ledger_Group_Type] [char](2) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GuestMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GuestMaster](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[GuestName] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[PhoneNo] [varchar](50) NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_GuestMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_GuestMaster] PRIMARY KEY CLUSTERED 
(
	[GuestId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelMaster](
	[HotelId] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](50) NULL,
 CONSTRAINT [PK_HotelMaster] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeMaster](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[LoginName] [varchar](50) NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[Phone] [varchar](30) NULL,
	[PIN] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[RoleId] [int] NULL,
	[Type] [char](1) NULL,
	[Password] [varchar](50) NULL,
	[HotelId] [int] NULL,
	[LoggedOn] [varchar](1) NOT NULL CONSTRAINT [DF_EmployeeMaster_LoggedOn]  DEFAULT ('N'),
 CONSTRAINT [PK_EmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offshop_Stock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Offshop_Stock](
	[Offshop_GodownStockId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeOfBottle] [int] NULL,
	[Qty] [int] NULL,
	[BarCode] [varchar](50) NULL,
	[PurchaseRate] [int] NULL,
	[MRP] [int] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Status] [char](1) NULL,
	[MainId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_Offshop_Stock_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL CONSTRAINT [DF_Offshop_Stock_LastModifiedOn]  DEFAULT (getdate()),
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_Offshop_Stock] PRIMARY KEY CLUSTERED 
(
	[Offshop_GodownStockId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownStock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GodownStock](
	[GodownStockId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeOfBottle] [int] NULL,
	[Qty] [int] NULL,
	[BarCode] [varchar](50) NULL,
	[PurchaseRate] [int] NULL,
	[MRP] [int] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Status] [char](1) NULL,
	[MainId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_GodownStock1_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_GodownStock1] PRIMARY KEY CLUSTERED 
(
	[GodownStockId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownStock_From_Requisition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Save_GodownStock_From_Requisition]
@pCurrentDate datetime
as 
begin
	insert into GodownStock (ProductId,
					SizeOfBottle,
					Qty,
					BarCode,
					PurchaseRate,
					MRP,
					TotalAmount,
					Status,
					MainId,
					
					FirstEnteredBy,
					
					LastModifiedBy,
					HotelId)
			 select 
					ProductId,
					SizeOfBottle,
					Qty,
					BarCode,
					PurchaseRate,
					MRP,
					TotalAmount,
					Status,
					MainId,
					
					FirstEnteredBy,
					
					LastModifiedBy,
					HotelId
	
	 from Offshop_Stock where convert(varchar(10),FirstEnteredOn,101) = @pCurrentDate
end

-- exec usp_Save_GodownStock_From_Requisition''9/11/2013''' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllOffshopStock_By_Date]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAllOffshopStock_By_Date]
as
begin 
	select convert(varchar(10),(FirstEnteredOn),101) as Date,sum(Qty) as ''TotalRequisition'' 
	from Offshop_Stock 
	where FirstEnteredOn <= getdate() and Offshop_Stock.status=''R''
	 group by convert(varchar(10),(FirstEnteredOn),101)
end




-- exec usp_GetAllOffshopStock_By_Date

 

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaveProductDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaveProductDetails](
	[SaveProductDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[SaveProductMasterId] [int] NULL,
	[BillNo] [bigint] NULL,
	[BillDate] [datetime] NULL,
	[ProductId] [int] NULL,
	[BarCode] [varchar](50) NULL,
	[Rate] [decimal](18, 0) NULL,
	[Qty] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_SaveProductDetails] PRIMARY KEY CLUSTERED 
(
	[SaveProductDetailsId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelRoomMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelRoomMaster](
	[RoomId] [int] NULL,
	[RoomTypeId] [int] NULL,
	[RoomNumber] [varchar](50) NULL,
	[RoomDescription] [varchar](100) NULL,
	[Pax] [int] NULL,
	[RoomQuality] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DueDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DueDetails](
	[DueDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[DueId] [int] NULL,
	[PaidCash] [decimal](18, 0) NULL,
	[PaidCard] [decimal](18, 0) NULL,
	[LastPayDate] [datetime] NULL,
 CONSTRAINT [PK_DueDetails] PRIMARY KEY CLUSTERED 
(
	[DueDetailsId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_RoleMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_RoleMaster]
	@pRoleId int OUTPUT,
	@pRoleDescription varchar(50),
	@pFirstEnteredBy int,
	@pHotelId int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pRoleId = 0
	BEGIN
		INSERT INTO RoleMaster
			(
			RoleDescription,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pRoleDescription,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pRoleId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE RoleMaster
		SET RoleDescription = @pRoleDescription,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE RoleId = @pRoleId
	END
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_RoleMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_RoleMaster]
	@pRoleId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM RoleMaster
	WHERE RoleId = @pRoleId and RoleId <> 1
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_RoleMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_RoleMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	RoleId,RoleDescription
	FROM RoleMaster 
	where HotelId=@pHotelId order by RoleDescription
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_RoleMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_RoleMaster]
	@pRoleId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	RoleId,RoleDescription
	FROM RoleMaster
	WHERE RoleId = @pRoleId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Employee_Master_ById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_Employee_Master_ById]
@pEmployeeId int


as 
begin
	select Emp.RoleId,Emp.FirstName,Emp.LastName,Emp.LoginName,Rl.RoleDescription,Emp.Address1,Emp.Address2,
	Emp.Phone,Emp.PIN,Emp.City,Emp.State,Emp.Country,Emp.Password,Emp.Type,Emp.LoggedOn 
	from EmployeeMaster Emp left outer join RoleMaster Rl 
	on Emp.RoleId = Rl.RoleId where Emp.EmployeeId=@pEmployeeId 

	select HotelMaster.HotelId,HotelMaster.HotelName 
	from EmployeeHotelMaster,HotelMaster 
	where EmployeeHotelMaster.EmployeeId = @pEmployeeId
	and EmployeeHotelMaster.HotelId = HotelMaster.HotelId
end



--  exec usp_GetAll_Employee_Master_ById 10,1

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_EmployeeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_EmployeeMaster]

as
begin
	select Emp.EmployeeId,Emp.FirstName,Emp.LastName,Rl.RoleDescription 
	from EmployeeMaster Emp left outer join RoleMaster Rl 
	on Emp.RoleId = Rl.RoleId 
	--and Emp.HotelId = @pHotelId 
	order by Emp.FirstName
end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_DueMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ById_DueMaster]
	@pDueId	int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,GM.PhoneNo,
	(SPM.ReceivableAmt-(isnull(sum(DD.PaidCash)+sum(DD.PaidCard),0))) as DueAmt
	from GuestMaster GM inner join DueMaster DM on DM.GuestId = GM.GuestId
	inner join SaveProductMaster SPM on SPM.SaveProductMasterId=DM.SaveProductMasterId
	left outer join DueDetails DD on DD.DueId = DM.DueId where DM.DueId=@pDueId
	group by SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
			GM.PhoneNo
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_DueDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_DueDetails]
	@pHotelId INT
AS

BEGIN
	SET NOCOUNT ON;
	SELECT DD.DueDetailsId,DD.DueId,SPM.BillNo,GM.GuestName,(DD.PaidCash+DD.PaidCard) PaidAmt
	FROM DueMaster DM, GuestMaster GM, SaveProductMaster SPM, DueDetails DD
	WHERE DM.GuestId=GM.GuestId and DM.SaveProductMasterId=SPM.SaveProductMasterId 
		and SPM.HotelId=@pHotelId and DD.DueId=DM.DueId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_DueDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ById_DueDetails]
	@pDueDetailsId	int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SPM.BillNo,CONVERT(VARCHAR(10),SPM.BillDate,101) AS BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
		GM.PhoneNo,isnull(DD.PaidCash,0) AS PaidCash,isnull(DD.PaidCard,0) as PaidCard
	FROM GuestMaster GM,DueDetails DD,DueMaster DM, SaveProductMaster SPM
	where DM.GuestId = GM.GuestId and DD.DueId = DM.DueId 
		and SPM.SaveProductMasterId=DM.SaveProductMasterId
		and DD.DueDetailsId=@pDueDetailsId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_DateWise_Due_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Get_DateWise_Due_Report]
@pDateFrom datetime,
@pDateTo datetime,
@pHotelId int
as
	begin
		select DueMaster.BillNo,DueMaster.DueAmount,convert(varchar(10),DueMaster.DueDate,103)as DueDate,GuestMaster.GuestName
		from DueMaster,GuestMaster where DueMaster.GuestId=GuestMaster.guestId and GuestMaster.HotelId=@pHotelId
	end




-- exec usp_Get_DateWise_Due_Report ''7/23/2013 12:00:00 AM'',''7/23/2013 12:00:00 AM'',0' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_DueMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_DueMaster]

	---------For GuestMaster----------
	@pGuestId				int OUTPUT,
	@pGuestName				varchar(50),
	@pAddress				varchar(100),
	@pPhoneNo				varchar(50),
	@pFirstEnteredBy		int,
	@pHotelId				int,
	--------for Due Master-----------
	@pSaveProductMasterId	int,
	@pBillNo				bigint,
	@pDueAmount				decimal,
	@pDueDate				datetime,
	@pRemarks				varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	IF @pGuestId = 0
	BEGIN
		INSERT INTO GuestMaster
			(
			GuestName,
			Address,
			PhoneNo,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pGuestName,
			@pAddress,
			@pPhoneNo,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pGuestId = SCOPE_IDENTITY()
		---------------------
		INSERT INTO DueMaster
			(
			GuestId,
			SaveProductMasterId,
			BillNo,
			DueAmount,
			DueDate,
			Remarks
			)
		VALUES
			(
			@pGuestId,
			@pSaveProductMasterId,
			@pBillNo,
			@pDueAmount,
			@pDueDate,
			@pRemarks
			)
		SET @pGuestId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE GuestMaster
		SET GuestName = @pGuestName,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE GuestId = @pGuestId
		---------------------
		INSERT INTO DueMaster
			(
			GuestId,
			SaveProductMasterId,
			BillNo,
			DueAmount,
			DueDate,
			Remarks
			)
		VALUES
			(
			@pGuestId,
			@pSaveProductMasterId,
			@pBillNo,
			@pDueAmount,
			@pDueDate,
			@pRemarks
			)
	END
END








' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_DueMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_DueMaster]
	@pHotelId INT
AS

BEGIN
	SET NOCOUNT ON;
	SELECT	DM.DueId,SPM.BillNo,GM.GuestName,DM.DueAmount 
	FROM DueMaster DM, GuestMaster GM, SaveProductMaster SPM
	WHERE DM.GuestId=GM.GuestId and DM.SaveProductMasterId=SPM.SaveProductMasterId 
		and SPM.HotelId=@pHotelId
END










' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Getall_SaveProductMaster_By_BillNo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Getall_SaveProductMaster_By_BillNo]
@pBillNo bigint,
@pHotelId int
as
begin
	select * from SaveProductMaster where BillNo = @pBillNo and HotelId = @pHotelId
end

-- exec usp_Getall_SaveProductMaster_By_BillNo 2,0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_MaxBill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetAll_MaxBill]
	@pHotelId INT
AS
	Declare @Bill bigint
BEGIN
	SET NOCOUNT ON;
	set @Bill = (SELECT	isnull(max(BillNo),0) + 1 FROM SaveProductMaster
	WHERE HotelId=@pHotelId)
	select @Bill
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PrintBill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PrintBill]
@pBillId int,
@pHotelId int
as
begin
	select BillNo,convert(varchar(10),BillDate,103)as Date,BillAmt,ReceivableAmt from SaveProductMaster where BillNo = @pBillId
	
	select SaveProductDetails.Qty,SaveProductDetails.Rate,SaveProductDetails.Amount,ProductMaster.ProductName from 
	SaveProductMaster,SaveProductDetails,ProductMaster where SaveProductMaster.SaveProductMasterId = SaveProductDetails.SaveProductMasterId
	 and SaveProductDetails.ProductId = ProductMaster.ProductId and SaveProductMaster.BillNo = @pBillId 
	and SaveProductMaster.HotelId = @pHotelId
end

-- exec usp_PrintBill 2,0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OccupiedItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Delete_OccupiedItem]
@pHotelId INT,
@SaveProductMasterId INT
AS
BEGIN
	DELETE FROM SaveProductMaster WHERE SaveProductMasterId = @SaveProductMasterId AND HotelId = @pHotelId
	DELETE FROM SaveProductDetails WHERE SaveProductMasterId = @SaveProductMasterId AND HotelId = @pHotelId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_SaveProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_SaveProductMaster]
	@pSaveProductMasterId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * from SaveProductMaster where SaveProductMasterId = @pSaveProductMasterId
	SELECT	*,ProductMaster.ProductName
		FROM SaveProductDetails, ProductMaster
		WHERE SaveProductDetails.ProductId = ProductMaster.ProductId 
		and SaveProductMasterId = @pSaveProductMasterId
		order by ProductMaster.ProductName
	
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetBill_Today]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetBill_Today]
@pDt datetime,
@pHotelId int
as
begin
	select BillNo,SaveProductMasterId,convert(varchar(10),BillDate,101)as BillDate 
	from SaveProductMaster
	where convert(varchar(10),BillDate,101) = @pDt and HotelId = @pHotelId
end

-- exec usp_GetBill_Today ''9/13/2013'',0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductMaster_OnExitDueDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Update_SaveProductMaster_OnExitDueDetails]
@pBillNo BIGINT,
@pDueAmount decimal
as
declare @cash decimal
begin
	select @cash =  Cash from SaveProductMaster where BillNo = @pBillNo
	set @cash = @cash + @pDueAmount 
	update SaveProductMaster
	set Cash = @cash,
		Due = 0
	where BillNo = @pBillNo
end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductMaster_For_Occupy]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Update_SaveProductMaster_For_Occupy]
	@pSaveProductMasterId	INT
	
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE SaveProductMaster
	SET Occupy=''Y''
	WHERE SaveProductMasterId = @pSaveProductMasterId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaveProductMasterId,BillNo from SaveProductMaster 
	where HotelId = @pHotelId and Occupy=''Y''
	
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ReportBillwiseMOP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ReportBillwiseMOP]
	@from_dt    	datetime,
	@to_dt    		datetime,
	@pHotelId		int
	as
	begin 
		select BillNo,convert(varchar(10),BillDate,101) as billdate,BillAmt as Gross,(DiscAmt+LSDiscAmt) as Disc,ReceivableAmt,Cash,Card,Due 
		from SaveProductMaster where SaveProductMaster.BillDate between @from_dt and @to_dt 
		and SaveProductMaster.HotelId = @pHotelId 
		order by BillDate,BillNo
	end


--exec usp_DateWiseSaleReport ''7/22/2013 12:00:00 AM'',''7/22/2013 12:00:00 AM'',0




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetBillwise_Sale_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetBillwise_Sale_Report]
@pDateFrom DATETIME,
@pDateto DATETIME,
@pHotelId int
as
begin  
	select BillNo,ReceivableAmt from SaveProductMaster where BillDate between @pDateFrom and @pDateto and HotelId = @pHotelId
end

-- exec usp_GetBillwise_Sale_Report ''8/10/2013 12:00:00 AM'',''8/10/2013 12:00:00 AM''' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_EmployeeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Delete_EmployeeMaster]
@EmployeeId int
as
	begin
		delete from EmployeeMaster where EmployeeId = @EmployeeId
		
		delete from EmployeeHotelMaster where EmployeeId = @EmployeeId
	end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PermissionUserOffshop]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_PermissionUserOffshop]
	@pEmployeeId		int,
	@pMenuId			int,
	@pVisibility		char(1)

AS

	declare @HotelId	int

BEGIN
	delete from PermissionUserOffshop 
	where EmployeeId=@pEmployeeId and MenuId=@pMenuId --and HotelId=@pHotelId

	declare CUR cursor for select HotelId from EmployeeHotelMaster where EmployeeId=@pEmployeeId
	open CUR
	fetch next from CUR into @HotelId
	while @@fetch_status=0
	begin

		INSERT INTO PermissionUserOffshop
			(
			EmployeeId,
			HotelId,
			MenuId,
			Visibility
			)
		VALUES
			(
			@pEmployeeId,
			@HotelId,
			@pMenuId,
			@pVisibility
			)
		fetch next from CUR into @HotelId

	end
	close CUR 
	deallocate CUR

END








' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Login]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Login]
@pUid varchar(50),
@pPwd varchar(50),
@pHotelId int
as
begin
	select EmployeeMaster.EmployeeId , EmployeeMaster.Type
	from EmployeeMaster ,EmployeeHotelMaster
	where EmployeeHotelMaster.EmployeeId = EmployeeMaster.EmployeeId
	and LoginName = @pUid and Password = @pPwd 
	and EmployeeHotelMaster.HotelId = @pHotelId
end
-- exec usp_Login ''Abhishek'',''goldenword'',0


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_EmployeeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--exec usp_Save_EmployeeMaster 14,''c'',''c'',''c'',''c'',''c'',''12'',''12'',''c'',''c'',''c'',0,'''',''c'',1,''N''

CREATE PROCEDURE [dbo].[usp_Save_EmployeeMaster]
	@pEmployeeId		int OUTPUT,
	@pFirstName			varchar(50),
	@pLastName			varchar(50),
	@pLoginName			varchar(50),
	@pAddress1			varchar(50),
	@pAddress2			varchar(50),
	@pPhone				varchar(50),
	@pPIN				varchar(6),
	@pCity				varchar(50),
	@pState				varchar(50),
	@pCountry			varchar(50),
	@pRoleId			int,
	@pType				char(1),
	@pPassword			varchar(50),
	@pHotelId			int,
	@pLoggedOn			varchar(10)
AS

	declare @MenuId		int
	declare @HotelId	int

BEGIN
	SET NOCOUNT ON;
	IF @pEmployeeId = 0
	BEGIN
		INSERT INTO EmployeeMaster
			(
			
			FirstName,
			LastName,
			LoginName,
			Address1,
			Address2,
			Phone,
			PIN,
			City,
			State,
			Country,
			RoleId,
			Type,
			Password,
			HotelId,
			LoggedOn
			
			)
		VALUES
			(
			@pFirstName,
			@pLastName,
			@pLoginName,
			@pAddress1,
			@pAddress2,
			@pPhone,
			@pPIN,
			@pCity,
			@pState,
			@pCountry,
			@pRoleId,
			@pType,
			@pPassword,
			@pHotelId,
			@pLoggedOn
			)
		SET @pEmployeeId = SCOPE_IDENTITY()

		declare CUR cursor for select HotelId from HotelMaster
		open CUR
		fetch next from CUR into @HotelId
		while @@fetch_status=0
		BEGIN

			--INSERT INTO EmployeeHotelMaster(EmployeeId,HotelId) values(1,@HotelId)

			declare CUR1 cursor for select MenuId from PermissionMenuOffshop order by MenuId
			open CUR1
			fetch next from CUR1 into @MenuId
			while @@fetch_status=0
			BEGIN
				INSERT INTO PermissionUserOffshop(EmployeeId,HotelId,MenuId,Visibility) 
						values(@pEmployeeId,@HotelId,@MenuId,''N'')
				fetch next from CUR1 into @MenuId
			END
			close CUR1
			deallocate CUR1
		
			fetch next from CUR into @HotelId

		END
		close CUR
		deallocate CUR

	END
	ELSE
	BEGIN
		IF @pRoleId<>0 and @pType<>''''
		BEGIN
			UPDATE EmployeeMaster
			SET FirstName = @pFirstName,
			LastName = @pLastName,
			LoginName = @pLoginName,
			Address1 = @pAddress1,
			Address2 = @pAddress2,
			Phone = @pPhone,
			PIN = @pPIN,
			City = @pCity,
			State = @pState,
			Country = @pCountry,
			RoleId = @pRoleId,
			Type = @pType,
			Password=@pPassword,
			HotelId = @pHotelId,
			LoggedOn = @pLoggedOn
			WHERE EmployeeId = @pEmployeeId
			
			INSERT INTO EmployeeHotelMaster
			(
			EmployeeId,
			HotelId
			)
			VALUES
			(
			@pEmployeeId,
			@pHotelId
			)

		END
		ELSE
		BEGIN

			INSERT INTO EmployeeHotelMaster
			(
			EmployeeId,
			HotelId
			)
			VALUES
			(
			@pEmployeeId,
			@pHotelId
			)

		END
	END
	select @pEmployeeId
END









' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PermissionMenuOffshop]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_PermissionMenuOffshop]


AS
	declare @HotelId	int
	declare @MenuId		int
BEGIN
	if not exists(select * from PermissionMenuOffshop)
	BEGIN
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(1,''ProductCategoryMaster.aspx'',''Product Category Master'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(2,''ProductSubCategoryMaster.aspx'',''Product Sub Category Master'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(3,''NoOfBottlePerCase.aspx'',''No Of Bottle Per Case'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(4,''ProductMaster.aspx'',''Product Master'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(5,''RollMaster.aspx'',''Roll Master'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(6,''EmployeeMaster.aspx'',''Employee Master'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(7,''Ledger.aspx'',''Ledger'')

		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(8,''GodownOpeningStock.aspx'',''Godown Opening Stock Entry'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(9,''DrinksPurchase.aspx'',''Drinks Purchase Entry'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(11,''Requition.aspx'',''Requition Entry'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(12,''Breakage.aspx'',''Breakage Entry'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(13,''OffshopOpeningStock.aspx'',''Offshop Opening Stock'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(14,''BreakageOffshop.aspx'',''Breakage Offshop'')

		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(15,''SaleBill.aspx'',''Bill Entry'')
		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(16,''DueReceived.aspx'',''Due Receive Entry'')

--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(17,''DateWiseSaleReport.aspx'',''Date Wise Sale Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(18,''DateWiseDueReport.aspx'',''Date Wise Due Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(19,''BillwiseMOPReport.aspx'',''Billwise MOP Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(20,''CatagoryWiseSaleReport.aspx'',''Catagory Wise Sale Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(21,''CreditorsWisePurReport.aspx'',''Creditors Wise Purchase Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(22,''PurchaseReport.aspx'',''Datewise Purchase Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(23,''GodownStockReport.aspx'',''Godown Stock Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(24,''OffshopStockReport.aspx'',''Offshop Stock Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(25,''BreakageReport.aspx'',''Breakage Report'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(26,''BreakageReportOffshop.aspx'',''Breakage Report Offshop'')
--		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(27,''ExiseReport.aspx'',''Exise Report'')

		INSERT INTO PermissionMenuOffshop(MenuId,MenuName,MenuText) values(28,''UserPermision.aspx'',''User Permission'')
	END
	if not exists(select * from EmployeeMaster where EmployeeId=1 and LoginName=''admin'')
	BEGIN
		
		delete from PermissionUserOffshop where EmployeeId=1
		------------------------
		INSERT INTO EmployeeMaster
			(FirstName,LastName,LoginName,Address1,Address2,Phone,PIN,City,State,Country,RoleId,Type,Password,LoggedOn)
		VALUES
			(''admin'',''admin'',''admin'','''','''','''',0,'''','''','''',0,''S'',''admin'',''N'')
		------------------------
		declare CUR cursor for select HotelId from HotelMaster
		open CUR
		fetch next from CUR into @HotelId
		while @@fetch_status=0
		BEGIN

			INSERT INTO EmployeeHotelMaster(EmployeeId,HotelId) values(1,@HotelId)

			declare CUR1 cursor for select MenuId from PermissionMenuOffshop order by MenuId
			open CUR1
			fetch next from CUR1 into @MenuId
			while @@fetch_status=0
			BEGIN
				INSERT INTO PermissionUserOffshop(EmployeeId,HotelId,MenuId,Visibility) 
						values(1,@HotelId,@MenuId,''Y'')
				fetch next from CUR1 into @MenuId
			END
			close CUR1
			deallocate CUR1
		
			fetch next from CUR into @HotelId

		END
		close CUR
		deallocate CUR
		-----------------------
	END
END















' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetGodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetGodownStock]

@today datetime,
@HotelId int
as
begin

	select GodownLastQty.ProductId,GodownLastQty.Barcode,GodownLastQty.LastQty,
	ProductMaster.ProductName ,(select isnull(sum(Offshop_Stock.Qty),0) from Offshop_Stock 
		where Offshop_Stock.ProductId = GodownLastQty.ProductId and Offshop_Stock.Status = ''S'' 
		and convert(varchar(10),Offshop_Stock.FirstEnteredOn,101)=@today
		and Offshop_Stock.HotelId= GodownLastQty.HotelId 
		and Offshop_Stock.barcode COLLATE DATABASE_DEFAULT =GodownLastQty.barcode COLLATE DATABASE_DEFAULT) as sale
	from GodownLastQty,ProductMaster where GodownLastQty.ProductId = ProductMaster.ProductId and
		GodownLastQty.HotelId = @HotelId and ProductMaster.HotelId =@HotelId
	group by GodownLastQty.HotelId,GodownLastQty.ProductId,GodownLastQty.Barcode,GodownLastQty.LastQty,ProductMaster.ProductName

	-- and Offshop_Stock.HotelId = @HotelId 
end

-- exec usp_GetGodownStock ''9/5/2013 12:00:00 AM'',0

	

	

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownLastQuantity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Save_GodownLastQuantity]
@pProductId int,
@pBarcode varchar(50),
@pRate		decimal(18,0),
@pHotelId	int
as
begin
	--declare @pBarcode varchar(50)
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	--declare @pDelete int
	declare	@pSataus char(1)

	select @pSumOpng = isnull(sum(Qty),0) from Offshop_Stock where Status = ''O'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumPur = isnull(sum(Qty),0) from Offshop_Stock where Status = ''R'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumSale =isnull(sum(Qty),0) from Offshop_Stock where Status = ''S'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumBrkg = isnull(sum(Qty),0) from Offshop_Stock where Status = ''B'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	--select @pDelete=isnull(sum(Qty),0) from Offshop_Stock where Status = ''D'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg 
	if exists(select * from GodownLastQty where ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId)
	begin
		update GodownLastQty
		set
			LastQty = @pLastQty,Rate = @pRate
			where ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	end
	else
		begin
				insert into GodownLastQty(ProductId,Barcode,LastQty,HotelId,Rate)values(@pProductId,@pBarcode,@pLastQty,@pHotelId,@pRate)
		end
end

-- exec usp_Save_GodownLastQuantity 2,''2222''











' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductRate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetAll_ById_ProductRate]
	@pProductId INT,
	@pBarcode varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	Rate
	FROM GodownLastQty
	WHERE ProductId = @pProductId and Barcode = @pBarcode
END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ByName_SaveProductName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ByName_SaveProductName]
	@ProdName	varchar(50),
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;

--	SELECT	ProductMaster.ProductId,ProductMaster.ProductName
--	FROM ProductMaster, GodownLastQty
--	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
--		and ProductMaster.HotelId=@pHotelId and GodownLastQty.HotelId=@pHotelId 
--		and ProductMaster.ProductName like @ProdName + ''%''
--	group by ProductMaster.ProductId,ProductMaster.ProductName 
--	having sum(GodownLastQty.LastQty)>0
--	order by ProductMaster.ProductName
SELECT	ProductMaster.ProductId,ProductMaster.ProductName
	FROM ProductMaster, GodownLastQty
	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
		and ProductMaster.HotelId=@pHotelId and GodownLastQty.HotelId=@pHotelId 
		and ProductMaster.ProductCode = @ProdName 
	group by ProductMaster.ProductId,ProductMaster.ProductName 
	having sum(GodownLastQty.LastQty)>0
	order by ProductMaster.ProductName
END



-- exec usp_GetAll_ByName_SaveProductName ''BP'',0' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_GodownBreakage]
	@pBreakageId			int OUTPUT,
	@pBreakageDate			datetime,
	@pProductId				int,
	@pCaseId				int,
	@pBarCode				varchar(50),
	@pBreakageQty			int,
	@pTypeId				int,
	@pFirstEnteredBy		int,
	@pHotelId				int
AS
	declare @Rate	as decimal
BEGIN
	SET NOCOUNT ON;
	IF @pBreakageId = 0
	BEGIN
		INSERT INTO GodownBreakage
			(
			BreakageDate,
			ProductId,
			CaseId,
			BarCode,
			BreakageQty,
			TypeId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pBreakageDate,
			@pProductId,
			@pCaseId,
			@pBarCode,
			@pBreakageQty,
			@pTypeId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pBreakageId = SCOPE_IDENTITY()
		set @Rate=(select Rate from GodownLastQty where BarCode=@pBarCode and ProductId=@pProductId and HotelId=@pHotelId)
			insert into GodownStock(ProductId,SizeOfBottle,Qty,Barcode,Status,MainId,FirstEnteredBy,HotelId)select GodownBreakage.ProductId,
			BottlePerCase.SizeOfBottle,GodownBreakage.BreakageQty,GodownBreakage.Barcode,''B'',@pBreakageId,GodownBreakage.FirstEnteredBy,
			GodownBreakage.HotelId  from GodownBreakage,BottlePerCase 
			where GodownBreakage.CaseId = BottlePerCase.CaseId and GodownBreakage.BreakageId = @pBreakageId
			
		--exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@Rate,@pHotelId
			
	END
	ELSE
	BEGIN
		UPDATE GodownBreakage
		SET 
		BreakageDate = @pBreakageDate,
		ProductId = @pProductId,
		CaseId=@pCaseId,
		BarCode=@pBarCode,
		BreakageQty=@pBreakageQty,
		TypeId=@pTypeId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId=@pHotelId
		WHERE BreakageId = @pBreakageId
	
		update GodownStock
		set
		ProductId = @pProductId,
		SizeOfBottle = (select BottlePerCase.SizeOfBottle from GodownBreakage,BottlePerCase 
					where GodownBreakage.CaseId = BottlePerCase.CaseId and GodownBreakage.BreakageId = @pBreakageId),
		Qty = @pBreakageQty,
		Barcode = @pBarCode,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId=@pHotelId
		where MainId = @pBreakageId
	
		--exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@Rate,@pHotelId
	END
END




-- exec usp_Save_GodownBreakage 2,''7/25/2013 3:48:02 PM'',4,3,1111,15,1,0,0








' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductNameBy_Barcode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetAll_SaveProductNameBy_Barcode]
	@pBarcode varchar(50),
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	ProductMaster.ProductId,ProductMaster.ProductName,GodownLastQty.Rate
	FROM ProductMaster, GodownLastQty
	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
	 and ProductMaster.HotelId=@pHotelId and GodownLastQty.Barcode = @pBarcode 
	and GodownLastQty.HotelId=@pHotelId 
	group by ProductMaster.ProductId,ProductMaster.ProductName,GodownLastQty.Rate
	having sum(GodownLastQty.LastQty)>0
	order by ProductMaster.ProductName
END


-- exec usp_GetAll_SaveProductNameBy_Barcode ''1'',0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_SaveProductName]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	ProductMaster.ProductId,ProductMaster.ProductName
	FROM ProductMaster, GodownLastQty
	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
		and ProductMaster.HotelId=@pHotelId and GodownLastQty.HotelId=@pHotelId 
	group by ProductMaster.ProductId,ProductMaster.ProductName 
	having sum(GodownLastQty.LastQty)>0
	order by ProductMaster.ProductName
END


--exec usp_GetAll_SaveProductName 0' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductNameBy_Code]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetAll_SaveProductNameBy_Code]
	@pProductCode varchar(10),
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	ProductMaster.ProductId,ProductMaster.ProductName
	FROM ProductMaster, GodownLastQty
	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
	 and ProductMaster.HotelId=@pHotelId and ProductMaster.ProductCode = @pProductCode and GodownLastQty.HotelId=@pHotelId 
	group by ProductMaster.ProductId,ProductMaster.ProductName 
	having sum(GodownLastQty.LastQty)>0
	order by ProductMaster.ProductName
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_BreakageReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_BreakageReport]
@pDateFrom DATETIME,
@pDateTo DATETIME,
@pHotelId INT
AS
BEGIN
	select convert(varchar(15),GodownBreakage.BreakageDate,101)as Date,GodownBreakage.BreakageQty,ProductMaster.ProductName,BottlePerCase.SizeOfBottle
	from GodownBreakage,ProductMaster,BottlePerCase where GodownBreakage.ProductId = ProductMaster.ProductId 
	and GodownBreakage.CaseId = BottlePerCase.CaseId and
	ProductMaster.CaseId = BottlePerCase.CaseId and GodownBreakage.BreakageDate between @pDateFrom and @pDateTo
	and GodownBreakage.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId
	END

-- exec usp_BreakageReport ''8/23/2013 12:00:00 AM'',''8/26/2013 12:00:00 AM'',0' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BottlePerCase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_BottlePerCase]
	
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CaseId,SizeOfBottle,NoOfBottlePerCase
	FROM BottlePerCase order by SizeOfBottle
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_BottlePerCase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_BottlePerCase]
	@pCaseId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CaseId,Type,SizeOfBottle,NoOfBottlePerCase
	FROM BottlePerCase
	WHERE CaseId = @pCaseId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_PurchaseDetails]
	@pPurchaseId INT
as
begin
	SELECT	*,ProductMaster.ProductName, SizeOfBottle
	FROM PurchaseDetails, ProductMaster, BottlePerCase
	WHERE PurchaseDetails.ProductId = ProductMaster.ProductId 
		and BottlePerCase.CaseId=PurchaseDetails.CaseId and PurchaseId = @pPurchaseId 
	order by ProductMaster.ProductName
end


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_BottlePerCase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_BottlePerCase]
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






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetNoOfBottle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetNoOfBottle]
@pCaseId int
as
begin
	select CaseId,SizeOfBottle,NoOfBottlePerCase from BottlePerCase where CaseId = @pCaseId
end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllSizeOfBottle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_GetAllSizeOfBottle]
as
	begin
		select CaseId,Type,SizeOfBottle from BottlePerCase
	end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SizeOfBottle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_SizeOfBottle]

AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CaseId,SizeOfBottle,Type
	FROM BottlePerCase 
	order by SizeOfBottle
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Report_Breakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Report_Breakage]
	@FromDate datetime,
	@ToDate datetime,
	@HotelId int
AS
BEGIN
	SELECT GodownBreakage.BreakageId,convert(varchar(10),GodownBreakage.BreakageDate,101) as BreakageDate, 
			ProductMaster.ProductName, BottlePerCase.SizeOfBottle, GodownBreakage.BarCode, 
			GodownBreakage.BreakageQty,GodownBreakage.HotelId
	FROM GodownBreakage,ProductMaster,BottlePerCase 
	where GodownBreakage.ProductId = ProductMaster.ProductId
	AND GodownBreakage.CaseId = BottlePerCase.CaseId AND GodownBreakage.BreakageDate>= @FromDate and  GodownBreakage.BreakageDate<=@ToDate
	AND GodownBreakage.HotelId=@HotelId
END



/*
exec usp_BreakageReport ''07/18/2013'',''07/18/2013'',0
convert(datetime,GodownBreakage.BreakageDate,101)
*/
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OffshopBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_OffshopBreakage]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	OffshopBreakageId,BreakageQty,ProductName,SizeOfBottle
	FROM OffshopBreakage,BottlePerCase,ProductMaster
	where OffshopBreakage.ProductId=ProductMaster.ProductId 
		and OffshopBreakage.CaseId=BottlePerCase.CaseId
		and OffshopBreakage.HotelId=@pHotelId and ProductMaster.HotelId=@pHotelId 
	order by ProductName
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_PurchaseMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_PurchaseMaster]
	@pPurchaseId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	* from PurchaseMaster where PurchaseId = @pPurchaseId
	SELECT	*,ProductMaster.ProductName, SizeOfBottle
	FROM PurchaseDetails, ProductMaster, BottlePerCase
	WHERE PurchaseDetails.ProductId = ProductMaster.ProductId 
		and BottlePerCase.CaseId=PurchaseDetails.CaseId and PurchaseId = @pPurchaseId 
	order by ProductMaster.ProductName
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_GodownBreakage]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BreakageId,BreakageQty,ProductName,SizeOfBottle
	FROM GodownBreakage,BottlePerCase,ProductMaster
	where GodownBreakage.ProductId=ProductMaster.ProductId and GodownBreakage.CaseId=BottlePerCase.CaseId
		and GodownBreakage.HotelId=@pHotelId and ProductMaster.HotelId=@pHotelId 
	order by ProductName
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ProductMaster]
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ProductId,ProductName,SizeOfBottle,Rate
	FROM ProductMaster,BottlePerCase
	where HotelId=@pHotelId and BottlePerCase.CaseId=ProductMaster.CaseId
	order by ProductName,SizeOfBottle
END








' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_BreakageReportOffshop]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_BreakageReportOffshop]
@pDateFrom DATETIME,
@pDateTo DATETIME,
@pHotelId INT
AS
BEGIN
	select convert(varchar(15),OffshopBreakage.BreakageDate,101)as Date,OffshopBreakage.BreakageQty,ProductMaster.ProductName,BottlePerCase.SizeOfBottle
	from OffshopBreakage,ProductMaster,BottlePerCase where OffshopBreakage.ProductId = ProductMaster.ProductId 
	and OffshopBreakage.CaseId = BottlePerCase.CaseId and
	ProductMaster.CaseId = BottlePerCase.CaseId and OffshopBreakage.BreakageDate between @pDateFrom and @pDateTo
	and OffshopBreakage.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId
	END

-- exec usp_BreakageReport ''8/23/2013 12:00:00 AM'',''8/26/2013 12:00:00 AM'',0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownLastQty]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_GodownLastQty]
@pHotelId int
as
	declare @LastQty	as int	
	begin
		select GS.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GS.BarCode,
		(select (select isnull(sum(Qty),0) from GodownStock where Status = ''O'' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)+
			(select isnull(sum(Qty),0) from GodownStock where Status = ''P'' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)-
			(select isnull(sum(Qty),0) from GodownStock where Status = ''R'' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)-
			(select isnull(sum(Qty),0) from GodownStock where Status = ''B'' and HotelId=@pHotelId and GS.ProductId=GodownStock.ProductId and GS.BarCode=GodownStock.BarCode)) as LastQty
		from GodownStock GS,ProductMaster,BottlePerCase
		where GS.HotelId=@pHotelId and ProductMaster.ProductId = GS.ProductId and ProductMaster.CaseId = BottlePerCase.CaseId
		and ProductMaster.HotelId = @pHotelId
		group by GS.BarCode,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GS.ProductId
	end 

-- exec usp_GetAll_GodownLastQty 0

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetProductDetails_By_Id_Requisition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetProductDetails_By_Id_Requisition]
@pProductId int,
@pBarcode	varchar(50),
@pHotelId int
as
begin
	select ProductMaster.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GodownStock.BarCode,max(GodownStock.MRP) as Rate
	from ProductMaster,BottlePerCase,GodownStock
	where ProductMaster.ProductId = GodownStock.ProductId
		and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.HotelId = @pHotelId
		and  GodownStock.HotelId = @pHotelId and ProductMaster.ProductId = @pProductId
		and GodownStock.ProductId = @pProductId and GodownStock.BarCode=@pBarcode
	Group by ProductMaster.ProductId,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,GodownStock.BarCode
	
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PurchaseMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Save_PurchaseMaster]
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

				delete from GodownStock where Status=''P'' and MainId=@pPurchaseId
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
							values(@ProductId,@SizeOfBottle,@Qty,@BarCode,@MRP1,''P'',@pPurchaseId,@pFirstEnteredBy,@pHotelId)
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




























' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_CatagoryWise_Sale_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--ALTER procedure [dbo].[usp_Get_CatagoryWise_Sale_Report]
--	@pCategory int,
--	@pSubCatagory int,
--	@pProductId int,
--	@pDateFrm datetime,
--	@pDateto datetime,
--	@pHotelId int
--	as
--	begin 
--	if(@pProductId = 0)
--		begin
--			select sum(SaveProductDetails.Qty)as Quantity,sum(SaveProductDetails.Amount)as Amount,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
--			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
--			from SaveProductDetails,ProductMaster,BottlePerCase,ProductCategoryMaster,ProductSubCategoryMaster
--			where SaveProductDetails.ProductId = ProductMaster.ProductId 
--			and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.CategoryId = ProductCategoryMaster.CategoryId
--			and ProductMaster.SubCategoryId = ProductSubCategoryMaster.SubCategoryId and ProductCategoryMaster.CategoryId = @pCategory
--			and ProductSubCategoryMaster.SubCategoryId = @pSubCatagory
--			--and convert(varchar(10),SaveProductDetails.BillDate,103) between @pDateFrm and @pDateto 
--			and SaveProductDetails.HotelId = @pHotelId 
--			and ProductMaster.HotelId = @pHotelId group by(ProductMaster.ProductName),BottlePerCase.SizeOfBottle,
--			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
--		end
--	else
--		begin
--			select sum(SaveProductDetails.Qty)as Quantity,sum(SaveProductDetails.Amount)as Amount,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
--			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
--			from SaveProductDetails,ProductMaster,BottlePerCase,ProductCategoryMaster,ProductSubCategoryMaster
--			where SaveProductDetails.ProductId = ProductMaster.ProductId 
--			and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.CategoryId = ProductCategoryMaster.CategoryId
--			and ProductMaster.SubCategoryId = ProductSubCategoryMaster.SubCategoryId and ProductCategoryMaster.CategoryId = @pCategory
--			and ProductSubCategoryMaster.SubCategoryId = @pSubCatagory and ProductMaster.ProductId = @pProductId 
--			--and convert(varchar(10),SaveProductDetails.BillDate,103) between @pDateFrm and @pDateto 
--			and SaveProductDetails.HotelId = @pHotelId 
--			and ProductMaster.HotelId = @pHotelId group by(ProductMaster.ProductName),BottlePerCase.SizeOfBottle,
--			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
--		end
--	end



CREATE procedure [dbo].[usp_Get_CatagoryWise_Sale_Report]
	@pCategory int,
	@pSubCatagory int,
	@pProductId int,
	@pDateFrm datetime,
	@pDateto datetime,
	@pHotelId int
	as
	begin 
	if(@pProductId = 0)
		begin
			select sum(SaveProductDetails.Qty)as Quantity,sum(SaveProductDetails.Amount)as Amount,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
			from SaveProductDetails,ProductMaster,BottlePerCase,ProductCategoryMaster,ProductSubCategoryMaster
			where SaveProductDetails.ProductId = ProductMaster.ProductId 
			and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.CategoryId = ProductCategoryMaster.CategoryId
			and ProductMaster.SubCategoryId = ProductSubCategoryMaster.SubCategoryId and ProductCategoryMaster.CategoryId = @pCategory
			and ProductSubCategoryMaster.SubCategoryId = @pSubCatagory
			and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
			and SaveProductDetails.HotelId = @pHotelId 
			and ProductMaster.HotelId = @pHotelId group by(ProductMaster.ProductName),BottlePerCase.SizeOfBottle,
			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
		end
	else
		begin
			select sum(SaveProductDetails.Qty)as Quantity,sum(SaveProductDetails.Amount)as Amount,ProductMaster.ProductName,BottlePerCase.SizeOfBottle,
			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
			from SaveProductDetails,ProductMaster,BottlePerCase,ProductCategoryMaster,ProductSubCategoryMaster
			where SaveProductDetails.ProductId = ProductMaster.ProductId 
			and ProductMaster.CaseId = BottlePerCase.CaseId and ProductMaster.CategoryId = ProductCategoryMaster.CategoryId
			and ProductMaster.SubCategoryId = ProductSubCategoryMaster.SubCategoryId and ProductCategoryMaster.CategoryId = @pCategory
			and ProductSubCategoryMaster.SubCategoryId = @pSubCatagory and ProductMaster.ProductId = @pProductId 
			and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
			and SaveProductDetails.HotelId = @pHotelId 
			and ProductMaster.HotelId = @pHotelId group by(ProductMaster.ProductName),BottlePerCase.SizeOfBottle,
			ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryName
		end
	end

-- exec usp_Get_CatagoryWise_Sale_Report 3,4,88,''09/05/2013'',''09/05/2013'',0


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DateWiseSaleReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_DateWiseSaleReport]
	@pDateFrm datetime,
	@pDateto datetime,
	@pHotelId int
	as
	begin 
		select sum(SaveProductDetails.Qty)as Quantity,sum(SaveProductDetails.Amount)as Amount,ProductMaster.ProductName,BottlePerCase.SizeOfBottle
		from SaveProductDetails,ProductMaster,BottlePerCase where SaveProductDetails.ProductId = ProductMaster.ProductId 
		and ProductMaster.CaseId = BottlePerCase.CaseId
		and SaveProductDetails.BillDate between @pDateFrm and @pDateto and SaveProductDetails.HotelId = @pHotelId 
		and ProductMaster.HotelId = @pHotelId group by(ProductMaster.ProductName),BottlePerCase.SizeOfBottle
	end


--exec usp_DateWiseSaleReport ''7/22/2013 12:00:00 AM'',''7/22/2013 12:00:00 AM'',0

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllSaleReport_By_Subcategory_Measure]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAllSaleReport_By_Subcategory_Measure]
@pHotelId int,
@pDateFrm datetime,
@pDateto datetime
as
begin
	select ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,
	sum(SaveProductDetails.Qty)as Quantity,BottlePerCase.SizeOfBottle,
	sum(SaveProductDetails.Amount)as Amount from ProductSubCategoryMaster,BottlePerCase,ProductMaster,SaveProductDetails where 
	ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and ProductMaster.ProductId = SaveProductDetails.ProductId 
	and ProductMaster.CaseId = BottlePerCase.CaseId
	and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
	and ProductSubCategoryMaster.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId
	group by ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,ProductMaster.ProductName,BottlePerCase.SizeOfBottle
end

-- exec usp_GetAllSaleReport_By_Subcategory_Measure 1,''9/26/2013'',''9/26/2013''' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ExiseReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ExiseReport]

as
begin
	declare @dt1 varchar(10)
	declare @dt2 varchar(10)
	select @dt1 = datepart(month,dateadd(yyyy, -1, getdate()))-- to display only month of previous year.
	select @dt2 = datepart(year,dateadd(yyyy, -1, getdate()))-- to display only year of previous year.
	declare @dt3 varchar(10)
	declare @CategoryId int
	declare @SubCategoryId int
	declare @CategoryName varchar(50)
	declare @SubCategoryName varchar(50)
	declare @CurrentMnthQty decimal(18,2)
	declare @PrevtMnthQty decimal(18,2)
	declare @UpToMnthCurrentYearQty decimal(18,2)
	declare @SaleUpToMnthOfPrevYear decimal(18,2)
	declare @SaleInMnthOfCurrentYear decimal(18,2)
	declare @GrowthRate  decimal(18,2)
	declare @GrowthRate1  decimal(18,2)
	-- set @dt3 = ''0'' + @dt1 + ''/'' + @dt2
	if(@dt1 < 10)
	begin
	set @dt3 = ''0'' + @dt1 + ''/'' + @dt2
	end
	else
	begin 
		set @dt3 =  @dt1 + ''/'' + @dt2
	end

	truncate table exise
	declare CUR cursor for
			select ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
			ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as CurrentMnthQty 
			from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails  where
			ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
			and ProductMaster.ProductId = SaveProductDetails.ProductId and month(BillDate) = month(getdate())
			group by ProductCategoryMaster.CategoryId,ProductCategoryMaster.CategoryName,ProductSubCategoryMaster.SubCategoryId,
			ProductSubCategoryMaster.SubCategoryName
	open CUR
			fetch next from CUR into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@CurrentMnthQty
			while @@fetch_status=0
			begin
			insert into exise(CatagoryId,Catagory,SubCatagoryId,SubCatagory,SaleInMnthOfCurrentYear)
			values(@CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@CurrentMnthQty)
			fetch next from CUR into @CategoryId,@CategoryName,@SubCategoryId,@SubCategoryName,@CurrentMnthQty
							
			END
			close CUR
			deallocate CUR
	declare CUR1 cursor for 
			select CatagoryId ,SubCatagoryId,SaleInMnthOfCurrentYear from exise order by slno
	open CUR1
			fetch next from CUR1 into @CategoryId,@SubCategoryId,@SaleInMnthOfCurrentYear
			while @@fetch_status=0
			begin
				select @PrevtMnthQty=sum(SaveProductDetails.Qty)
				from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails 
				where ProductCategoryMaster.CategoryId = ProductMaster.CategoryId 
				and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
				and ProductMaster.ProductId = SaveProductDetails.ProductId 
				and RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) = @dt3 
				and ProductSubCategoryMaster.SubCategoryId = @SubCategoryId
				and ProductCategoryMaster.CategoryId = @CategoryId
				update exise
				set SaleInMnthOfPrevYea = @PrevtMnthQty where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				--------------
--				set @GrowthRate = ((@SaleInMnthOfCurrentYear - @PrevtMnthQty) / @SaleInMnthOfCurrentYear )*100
				set @GrowthRate = ((@SaleInMnthOfCurrentYear - @PrevtMnthQty))*100
    			update exise
				set GrowthRate = @GrowthRate
					where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				------------------
				select @UpToMnthCurrentYearQty = sum(SaveProductDetails.Qty) 
				from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails  where
				ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
				and ProductMaster.ProductId = SaveProductDetails.ProductId and month(BillDate) <= month(getdate())
				and ProductSubCategoryMaster.SubCategoryId = @SubCategoryId
				and ProductCategoryMaster.CategoryId = @CategoryId
				update exise
				set SaleUpToMnthOfCurrentYear = @UpToMnthCurrentYearQty where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				---------------------
				select @SaleUpToMnthOfPrevYear = sum(SaveProductDetails.Qty)
				from ProductCategoryMaster,ProductSubCategoryMaster,ProductMaster,SaveProductDetails where
				ProductCategoryMaster.CategoryId = ProductMaster.CategoryId and ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId
				and ProductMaster.ProductId = SaveProductDetails.ProductId and 
				RIGHT(CONVERT(VARCHAR(10),DATEADD(m,0,BillDate),103),7) <= @dt3  
				and ProductSubCategoryMaster.SubCategoryId = @SubCategoryId
				and ProductCategoryMaster.CategoryId = @CategoryId
				update exise
				set SaleUpToMnthOfPrevYear = @SaleUpToMnthOfPrevYear where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				----------------------	
--				set @GrowthRate1 = ((@UpToMnthCurrentYearQty - @SaleUpToMnthOfPrevYear) / @UpToMnthCurrentYearQty )*100
				set @GrowthRate1 = ((@UpToMnthCurrentYearQty - @SaleUpToMnthOfPrevYear))*100
				update exise
				set GrowthRate1 = @GrowthRate1
					where CatagoryId = @CategoryId and SubCatagoryId = @SubCategoryId
				-------------------
				fetch next from CUR1 into @CategoryId,@SubCategoryId,@SaleInMnthOfCurrentYear
							
			END
			close CUR1
			deallocate CUR1
	select SlNo,Catagory +''( ''+ SubCatagory +'')'' as Fl,SaleInMnthOfCurrentYear,SaleInMnthOfPrevYea,GrowthRate,SaleUpToMnthOfCurrentYear,SaleUpToMnthOfPrevYear,GrowthRate1 from exise 
	
	

end




-- exec usp_ExiseReport 
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_PurchaseMaster]
	@pLedgerId	int = NULL,
	@pHotelId   INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	PurchaseId,PurchaseDate,InvoiceNo,InvoiceDate,NetAmount,Ledger_Nm
	FROM PurchaseMaster,Ledger_Master
	where Ledger_Master.Ledger_Id = PurchaseMaster.LedgerId 
		and Ledger_Master.HotelId=@pHotelId and PurchaseMaster.HotelId=@pHotelId 
		and Ledger_Master.Ledger_Id=isnull(@pLedgerId,Ledger_Master.Ledger_Id)
	order by Ledger_Nm
END




--exec usp_GetAll_PurchaseMaster null,0


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_Drinks_Purchase_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Get_Drinks_Purchase_Report]
	 @pDtFrm datetime,
	 @pDtTo datetime,
	 @pHotelId int
	as
	begin
		select PurchaseMaster.InvoiceNo,convert(varchar(10),PurchaseMaster.InvoiceDate,103)as InvoiceDate,
		PurchaseDetails.TotalBottle,PurchaseDetails.TotalMRP, 
		ProductMaster.ProductName from PurchaseMaster,PurchaseDetails,ProductMaster where PurchaseMaster.PurchaseId = PurchaseDetails.PurchaseId
		and PurchaseDetails.ProductId = ProductMaster.ProductId and  PurchaseMaster.PurchaseDate between @pDtFrm and @pDtTo 
		and PurchaseMaster.HotelId = @pHotelId
	end


--exec usp_Get_Drinks_Purchase_Report ''7/20/2013 12:00:00 AM'',''7/23/2013 12:00:00 AM'',0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetPurchase_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_GetPurchase_Report]
	 @pDtFrm datetime,
	 @pDtTo datetime
	as
	begin
		select InvoiceNo,InvoiceDate,TotalBottle,TotalMRP,TotalGross from PurchaseMaster where PurchaseDate between @pDtFrm and @pDtTo
	end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_CreditorsWise_Purchase_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Get_CreditorsWise_Purchase_Report]
@pFrmDate datetime,
@pToDate datetime,
@pHotelId int
as
begin
	select ProductMaster.ProductId, ProductMaster.ProductName,sum(PurchaseDetails.TotalBottle)as TotalBtl,sum(PurchaseDetails.TotalMRP)as TotalMRP,
	sum(PurchaseDetails.TotalAmount)as TotalAmount,Ledger_Master.Ledger_Nm 
	from ProductMaster,PurchaseDetails,PurchaseMaster,Ledger_Master 
	where ProductMaster.ProductId = PurchaseDetails.ProductId and PurchaseDetails.PurchaseId=PurchaseMaster.PurchaseId 
	and PurchaseMaster.LedgerId = Ledger_Master.Ledger_Id
	and PurchaseMaster.PurchaseDate between @pFrmDate and @pToDate and ProductMaster.HotelId = @pHotelId and
	PurchaseMaster.HotelId = @pHotelId and PurchaseDetails.HotelId = @pHotelId and Ledger_Master.HotelId = @pHotelId
	group by ProductMaster.ProductId,ProductMaster.ProductName,Ledger_Master.Ledger_Nm
--	group by ProductMaster.ProductName,PurchaseMaster.TotalBottle,PurchaseMaster.TotalMRP,
--	PurchaseMaster.TotalGross,PurchaseMaster.NetAmount,Ledger_Master.Ledger_Nm
	
end


-- exec usp_Get_CreditorsWise_Purchase_Report ''7/20/2013 12:00:00 AM'',''7/23/2013 12:00:00 AM'',0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Temp_PurchaseMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Delete_Temp_PurchaseMaster]
	@pPurchaseId int
	as
	begin
		IF (select isnull(NetAmount,0) from PurchaseMaster where PurchaseId = @pPurchaseId)=0 
		BEGIN
			delete from PurchaseDetails where PurchaseId = @pPurchaseId
			delete from PurchaseMaster where PurchaseId = @pPurchaseId
		END
	end


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_PurchaseMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Delete_PurchaseMaster]
	@pPurchaseId int
	as
	begin
		delete from PurchaseDetails where PurchaseId = @pPurchaseId
		delete from PurchaseMaster where PurchaseId = @pPurchaseId
		delete from GodownStock where Status=''P'' and MainId=@pPurchaseId
	end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_ProductCategoryMaster]
	@pCategoryId		int OUTPUT,
	@pCategoryName		varchar(50),
	@pTypeId			int,
	@pFirstEnteredBy	int,
	@pHotelId			int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pCategoryId = 0
	BEGIN
		INSERT INTO ProductCategoryMaster
			(
			CategoryName,
			TypeId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pCategoryName,
			@pTypeId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pCategoryId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE ProductCategoryMaster
		SET CategoryName = @pCategoryName,
		TypeId=@pTypeId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE CategoryId = @pCategoryId
	END
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_ProductCategoryMaster]
	@pCategoryId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM ProductCategoryMaster
	WHERE CategoryId = @pCategoryId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ProductCategoryMaster]
	@pHotelId	INT,
	@pTypeId Int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CategoryId,CategoryName
	FROM ProductCategoryMaster 
	where HotelId=@pHotelId and TypeId = @pTypeId
	order by CategoryName
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_ProductCategoryMaster]
	@pCategoryId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CategoryId,CategoryName
	FROM ProductCategoryMaster
	WHERE CategoryId = @pCategoryId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SystemSetup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_SystemSetup]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT SystemSetupId,CompanyNamePresent,OutletNamePresent,WBSTPresent,WBSTPer,VATPresent,VATPer,STaxPresent,
	STaxPer,Note,WaiterPresent,TimePresent,SearchField,KotPresent,GuestPresent,BillCopy,PrinterType,PrinterPort,
	DiffFoodBill,BillNoPresent,BillFormat,AccFromDt,AccToDt
	FROM SystemSetup where HotelId=@pHotelId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SystemSetup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_SystemSetup]
	@pSystemSetupId			int OUTPUT,
	@pCompanyNamePresent	char(1),
	@pOutletNamePresent		char(1),
	@pWBSTPresent			char(1),
	@pWBSTPer				decimal(10, 3),
	@pVATPresent			char(1),
	@pVATPer				decimal(10, 3),
	@pSTaxPresent			char(1),
	@pSTaxPer				decimal(10, 3),
	@pNote					varchar(50),
	@pWaiterPresent			char(1),
	@pTimePresent			char(1),
	@pSearchField			varchar(20),
	@pKotPresent			char(1),
	@pGuestPresent			char(1),
	@pBillCopy				int,
	@pPrinterType			varchar(50),
	@pPrinterPort			varchar(5),
	@pDiffFoodBill			char(1),
	@pBillNoPresent			char(1),
	@pBillFormat			varchar(50),
	@pAccFromDt				datetime,
	@pAccToDt				datetime,
	@pFirstEnteredBy		int,
	@pHotelId				int
	
AS
BEGIN
	SET NOCOUNT ON;
	IF @pSystemSetupId = 0
	BEGIN
		INSERT INTO SystemSetup
			(
			CompanyNamePresent,
			OutletNamePresent,
			WBSTPresent,
			WBSTPer,
			VATPresent,
			VATPer,
			STaxPresent,
			STaxPer,
			Note,
			WaiterPresent,
			TimePresent,
			SearchField,
			KotPresent,
			GuestPresent,
			BillCopy,
			PrinterType,
			PrinterPort,
			DiffFoodBill,
			BillNoPresent,
			BillFormat,
			AccFromDt,
			AccToDt,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pCompanyNamePresent,
			@pOutletNamePresent,
			@pWBSTPresent,
			@pWBSTPer,
			@pVATPresent,
			@pVATPer,
			@pSTaxPresent,
			@pSTaxPer,
			@pNote,
			@pWaiterPresent,
			@pTimePresent,
			@pSearchField,
			@pKotPresent,
			@pGuestPresent,
			@pBillCopy,
			@pPrinterType,
			@pPrinterPort,
			@pDiffFoodBill,
			@pBillNoPresent,
			@pBillFormat,
			@pAccFromDt,
			@pAccToDt,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pSystemSetupId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE SystemSetup
		SET CompanyNamePresent = @pCompanyNamePresent,OutletNamePresent = @pOutletNamePresent,
		WBSTPresent=@pWBSTPresent,WBSTPer=@pWBSTPer,VATPresent=@pVATPresent,VATPer=@pVATPer,
		STaxPresent=@pSTaxPresent,STaxPer=@pSTaxPer,Note=@pNote,WaiterPresent=@pWaiterPresent,
		TimePresent=@pTimePresent,SearchField=@pSearchField,KotPresent=@pKotPresent,GuestPresent=@pGuestPresent,
		BillCopy=@pBillCopy,PrinterType=@pPrinterType,PrinterPort=@pPrinterPort,DiffFoodBill=@pDiffFoodBill,
		BillNoPresent=@pBillNoPresent,BillFormat=@pBillFormat,AccFromDt=@pAccFromDt,AccToDt=@pAccToDt,
		LastModifiedOn = getdate(),LastModifiedBy = @pFirstEnteredBy
		where SystemSetupId=@pSystemSetupId
	END
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_get_All_PurchaseDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_get_All_PurchaseDetails]
as
begin
	select * from PurchaseDetails
end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_GodownBreakage]
	@pBreakageId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BreakageId,BreakageDate,ProductId,CaseId,BarCode,BreakageQty
	FROM GodownBreakage
	WHERE BreakageId = @pBreakageId
END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_GodownBreakage]
	@pBreakageId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM GodownBreakage
	WHERE BreakageId = @pBreakageId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ProductName]
	@pCategoryId INT=NULL,
	@pSubCategoryId INT=NULL,
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	ProductId,ProductName
	FROM ProductMaster
	WHERE CategoryId = isnull(@pCategoryId,CategoryId) 
		and SubCategoryId= isnull(@pSubCategoryId,SubCategoryId) 
		and HotelId=@pHotelId
	order by ProductName
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Offshop_Stock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_Offshop_Stock]
@pToday datetime,
@pHotelId int
as
begin
	select ProductMaster.ProductId,ProductMaster.ProductName,Offshop_Stock.Offshop_GodownStockId,Offshop_Stock.Barcode,Offshop_Stock.Qty
	from ProductMaster,Offshop_Stock 
	where ProductMaster.ProductId = Offshop_Stock.ProductId
	and ProductMaster.HotelId = @pHotelId and Offshop_Stock.HotelId = @pHotelId and 
	convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) = @pToday and Offshop_Stock.status=''R''
end

-- exec usp_GetAll_Offshop_Stock ''9/12/2013'',0

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OffshopStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_OffshopStock]
	@pCategoryId INT,
	@pSubCategoryId INT,
	@pHotelId	int

AS
BEGIN
	SET NOCOUNT ON;
	if @pCategoryId<>0 and @pSubCategoryId<>0
	BEGIN
		SELECT Offshop_GodownStockId,ProductName,SizeOfBottle,BarCode,Qty
		FROM Offshop_Stock, ProductMaster
		where Offshop_Stock.ProductId=ProductMaster.ProductId and Offshop_Stock.HotelId=@pHotelId 
		and ProductMaster.HotelId=@pHotelId and ProductMaster.CategoryId=@pCategoryId 
		and Offshop_Stock.Status=''O'' and ProductMaster.SubCategoryId=@pSubCategoryId 
		order by ProductName,SizeOfBottle
	END
END










' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_OffshopStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_OffshopStock]
	@pOffshopStockId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	Offshop_GodownStockId,ProductMaster.ProductId,SizeOfBottle,Qty,BarCode,PurchaseRate,MRP,TotalAmount,
			ProductMaster.CategoryId,ProductMaster.SubCategoryId
	FROM Offshop_Stock,ProductMaster
	WHERE Offshop_Stock.ProductId=ProductMaster.ProductId and Offshop_GodownStockId = @pOffshopStockId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Offshop_Stock_Drink]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- exec usp_Godown_Stock_Drink ''08/29/2013'',''08/30/2013'',0

CREATE procedure [dbo].[usp_Offshop_Stock_Drink]

	@from_dt    	datetime,
	@to_dt    		datetime,
	@pHotelId		int
as

declare @PurId		as int
declare @Btlsize	as int
declare @Opqty		as int
declare @RcvQty		as int
declare @Issueqty	as int
declare @DmgQty		as int
declare @ProdName	as varchar(50)


BEGIN

create table #opening_stock
(
	pur_product_id		int,
	size_of_bottle		int,
	Prod_Name		varchar(50)
)
create table #Total_stock
(
	productname		varchar(50),
	SizeOfBottle	int,
	OpQty			int,
	RcvQty			int,
	SaleQty			int,
	DmgQty			int,
	ClsQty			int
)

insert into #opening_stock
	SELECT distinct ProductMaster.productid,gd.SizeOfBottle,ProductMaster.productName
		FROM Offshop_Stock gd inner join ProductMaster on ProductMaster.ProductId = gd.ProductId

--select * from #opening_stock

declare CUR cursor for select pur_product_id,size_of_bottle,Prod_Name from #opening_stock where size_of_bottle is not null
open CUR
fetch next from CUR into @PurId,@Btlsize,@ProdName
while @@fetch_status=0
	begin
		set @Opqty= (SELECT distinct ((select isnull(sum(Qty),0) from Offshop_Stock,ProductMaster
				Where Offshop_Stock.ProductId = ProductMaster.ProductId and Offshop_Stock.Status =''O'' 
				and ProductMaster.ProductId=@PurId and Offshop_Stock.HotelId=@pHotelId)+
			(select isnull(sum(Qty),0) from Offshop_Stock,ProductMaster
				Where Offshop_Stock.ProductId = ProductMaster.ProductId and Offshop_Stock.FirstEnteredOn <@from_dt and Offshop_Stock.Status =''R''  
				and ProductMaster.ProductId=@PurId and Offshop_Stock.HotelId=@pHotelId))- 
			((select isnull(sum(Qty),0)from Offshop_Stock,ProductMaster
				where Offshop_Stock.ProductId = ProductMaster.ProductId 
				and ProductMaster.ProductId=@PurId and Offshop_Stock.FirstEnteredOn <@from_dt and Offshop_Stock.Status =''S'' and Offshop_Stock.HotelId=@pHotelId)+ 
			(select isnull(sum(Qty),0) from Offshop_Stock,ProductMaster
				where Offshop_Stock.ProductId=ProductMaster.ProductId 
				and ProductMaster.ProductId=@PurId and Offshop_Stock.FirstEnteredOn <@from_dt and Offshop_Stock.Status =''B'' and Offshop_Stock.HotelId=@pHotelId))
			FROM Offshop_Stock gd inner join ProductMaster  on ProductMaster.ProductId = gd.ProductId 
				and ProductMaster.ProductId=@PurId and gd.HotelId=@pHotelId)

		--select @Opqty

		IF @Opqty=0
		begin
		set @Opqty=(select isnull(sum(Qty),0) from Offshop_Stock,ProductMaster
			Where Offshop_Stock.ProductId = ProductMaster.ProductId and Offshop_Stock.Status =''O'' 
			and convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and Offshop_Stock.ProductId = @PurId and Offshop_Stock.HotelId=@pHotelId)
		end
		set @RcvQty=(select isnull(sum(Qty),0) from Offshop_Stock,ProductMaster
				Where Offshop_Stock.ProductId = ProductMaster.ProductId and Offshop_Stock.Status =''R'' 
				and convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and Offshop_Stock.ProductId = @PurId and Offshop_Stock.HotelId=@pHotelId)
		set @Issueqty=(select isnull(sum(Qty),0)from Offshop_Stock,ProductMaster
				where Offshop_Stock.ProductId = ProductMaster.ProductId and Offshop_Stock.Status =''S''
				and convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and Offshop_Stock.ProductId=@PurId and Offshop_Stock.HotelId=@pHotelId)
		set @DmgQty=(select isnull(sum(Qty),0) from Offshop_Stock,ProductMaster
				where Offshop_Stock.ProductId=ProductMaster.ProductId and Offshop_Stock.Status =''B''
				and convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and Offshop_Stock.ProductId=@PurId and Offshop_Stock.HotelId=@pHotelId)

		insert into #Total_stock values(
			@ProdName,
			@Btlsize,
			@Opqty,
			@RcvQty,
			@Issueqty,
			@DmgQty,
			(@Opqty+@RcvQty-@Issueqty-@DmgQty))

		fetch next from CUR into @PurId,@Btlsize,@ProdName                                                                                                                                                                                                             
	end
close CUR
deallocate CUR

	select * from #Total_stock order by productname

--truncate table Godown_Closing_Stock
--insert into Godown_Closing_Stock select * from #Total_stock

drop table #opening_stock
drop table #Total_stock

END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Offshop_Stock_DateWise]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_Offshop_Stock_DateWise]
@pDate datetime,
@pHotelId int
as
begin
	select ProductMaster.ProductId,ProductMaster.ProductName,Offshop_Stock.Offshop_GodownStockId,Offshop_Stock.Barcode,Offshop_Stock.Qty
	from ProductMaster,Offshop_Stock where ProductMaster.ProductId = Offshop_Stock.ProductId 
	and ProductMaster.HotelId = @pHotelId and Offshop_Stock.HotelId = @pHotelId and 
	convert(varchar(10),Offshop_Stock.FirstEnteredOn,101) = @pDate and Offshop_Stock.status=''R''
end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_ProductMaster]
	@pProductId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ProductId,ProductName,ProductCode,CategoryId,SubCategoryId,CaseId,Rate
	FROM ProductMaster
	WHERE ProductId = @pProductId
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_ProductMaster]
	@pProductId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM ProductMaster
	WHERE ProductId = @pProductId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_GodownStock]
	@pCategoryId INT,
	@pSubCategoryId INT,
	@pHotelId	int

AS
BEGIN
	SET NOCOUNT ON;
	if @pCategoryId<>0 and @pSubCategoryId<>0
	BEGIN
		SELECT GodownStockId,ProductName,SizeOfBottle,BarCode,Qty
		FROM GodownStock, ProductMaster
		where GodownStock.ProductId=ProductMaster.ProductId and GodownStock.HotelId=@pHotelId 
		and ProductMaster.HotelId=@pHotelId and ProductMaster.CategoryId=@pCategoryId 
		and GodownStock.Status=''O'' and ProductMaster.SubCategoryId=@pSubCategoryId 
		order by ProductName,SizeOfBottle
	END
END









' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_ProductMaster]
	@pProductId			int OUTPUT,
	@pProductName		varchar(50),
	@pCategoryId		int,
	@pSubCategoryId		int,
	@pCaseId			int,
	@pRate				int,
	@pFirstEnteredBy	int,
	@pHotelId			int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pProductId = 0
	BEGIN
		INSERT INTO ProductMaster
			(
			ProductName,
			CategoryId,
			SubCategoryId,
			CaseId,
			Rate,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pProductName,
			@pCategoryId,
			@pSubCategoryId,
			@pCaseId,
			@pRate,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pProductId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE ProductMaster
		SET ProductName = @pProductName,CategoryId=@pCategoryId,
		SubCategoryId=@pSubCategoryId,CaseId=@pCaseId,Rate=@pRate,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE ProductId = @pProductId
	END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_GodownStock]
	@pGodownStockId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	GodownStockId,ProductMaster.ProductId,SizeOfBottle,Qty,BarCode,PurchaseRate,MRP,TotalAmount,
			ProductMaster.CategoryId,ProductMaster.SubCategoryId
	FROM GodownStock,ProductMaster
	WHERE GodownStock.ProductId=ProductMaster.ProductId and GodownStockId = @pGodownStockId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Godown_Stock_Drink]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- exec usp_Godown_Stock_Drink ''08/29/2013'',''08/30/2013'',0

CREATE procedure [dbo].[usp_Godown_Stock_Drink]

	@from_dt    	datetime,
	@to_dt    		datetime,
	@pHotelId		int
as

declare @PurId		as int
declare @Btlsize	as int
declare @Opqty		as int
declare @RcvQty		as int
declare @Issueqty	as int
declare @DmgQty		as int
declare @ProdName	as varchar(50)


BEGIN

create table #opening_stock
(
	pur_product_id		int,
	size_of_bottle		int,
	Prod_Name		varchar(50)
)
create table #Total_stock
(
	productname		varchar(50),
	SizeOfBottle	int,
	OpQty			int,
	RcvQty			int,
	SaleQty			int,
	DmgQty			int,
	ClsQty			int
)

insert into #opening_stock
	SELECT distinct ProductMaster.productid,gd.SizeOfBottle,ProductMaster.productName
		FROM GodownStock gd inner join ProductMaster on ProductMaster.ProductId = gd.ProductId

--select * from #opening_stock

declare CUR cursor for select pur_product_id,size_of_bottle,Prod_Name from #opening_stock where size_of_bottle is not null
open CUR
fetch next from CUR into @PurId,@Btlsize,@ProdName
while @@fetch_status=0
	begin
		set @Opqty= (SELECT distinct ((select isnull(sum(Qty),0) from GodownStock,ProductMaster
				Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status =''O'' 
				and ProductMaster.ProductId=@PurId and GodownStock.HotelId=@pHotelId)+
			(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.FirstEnteredOn <@from_dt and GodownStock.Status =''P''  
				and ProductMaster.ProductId=@PurId and GodownStock.HotelId=@pHotelId))- 
			((select isnull(sum(Qty),0)from GodownStock,ProductMaster
				where GodownStock.ProductId = ProductMaster.ProductId 
				and ProductMaster.ProductId=@PurId and GodownStock.FirstEnteredOn <@from_dt and GodownStock.Status =''R'' and GodownStock.HotelId=@pHotelId)+ 
			(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				where GodownStock.ProductId=ProductMaster.ProductId 
				and ProductMaster.ProductId=@PurId and GodownStock.FirstEnteredOn <@from_dt and GodownStock.Status =''B'' and GodownStock.HotelId=@pHotelId))
			FROM GodownStock gd inner join ProductMaster  on ProductMaster.ProductId = gd.ProductId 
				and ProductMaster.ProductId=@PurId and gd.HotelId=@pHotelId)

		--select @Opqty

		IF @Opqty=0
		begin
		set @Opqty=(select isnull(sum(Qty),0) from GodownStock,ProductMaster
			Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status =''O'' 
			and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId = @PurId and GodownStock.HotelId=@pHotelId)
		end
		set @RcvQty=(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				Where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status =''P'' 
				and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId = @PurId and GodownStock.HotelId=@pHotelId)
		set @Issueqty=(select isnull(sum(Qty),0)from GodownStock,ProductMaster
				where GodownStock.ProductId = ProductMaster.ProductId and GodownStock.Status =''R''
				and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId=@PurId and GodownStock.HotelId=@pHotelId)
		set @DmgQty=(select isnull(sum(Qty),0) from GodownStock,ProductMaster
				where GodownStock.ProductId=ProductMaster.ProductId and GodownStock.Status =''B''
				and convert(varchar(10),GodownStock.FirstEnteredOn,101) BETWEEN @from_dt and @to_dt and GodownStock.ProductId=@PurId and GodownStock.HotelId=@pHotelId)

		insert into #Total_stock values(
			@ProdName,
			@Btlsize,
			@Opqty,
			@RcvQty,
			@Issueqty,
			@DmgQty,
			(@Opqty+@RcvQty-@Issueqty-@DmgQty))

		fetch next from CUR into @PurId,@Btlsize,@ProdName                                                                                                                                                                                                             
	end
close CUR
deallocate CUR

	select * from #Total_stock order by productname

--truncate table Godown_Closing_Stock
--insert into Godown_Closing_Stock select * from #Total_stock

drop table #opening_stock
drop table #Total_stock

END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllSaleReport_By_Subcategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAllSaleReport_By_Subcategory]
@pHotelId int,
@pDateFrm datetime,
@pDateto datetime
as
begin
	select ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName,sum(SaveProductDetails.Qty)as Quantity,
	sum(SaveProductDetails.Amount)as Amount from ProductSubCategoryMaster,ProductMaster,SaveProductDetails where 
	ProductSubCategoryMaster.SubCategoryId = ProductMaster.SubCategoryId and ProductMaster.ProductId = SaveProductDetails.ProductId 
	and SaveProductDetails.BillDate between @pDateFrm and @pDateto 
	and ProductSubCategoryMaster.HotelId = @pHotelId and ProductMaster.HotelId = @pHotelId and SaveProductDetails.HotelId = @pHotelId
	group by ProductSubCategoryMaster.SubCategoryId,ProductSubCategoryMaster.SubCategoryName
end

-- exec usp_GetAllSaleReport_By_Subcategory 1' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_SaveProductDetails]
	@pSaveProductMasterId INT
as
begin
	SELECT	SaveProductDetails.*,ProductMaster.ProductName
	FROM SaveProductDetails, ProductMaster
	WHERE SaveProductDetails.ProductId = ProductMaster.ProductId 
		and SaveProductMasterId = @pSaveProductMasterId
	--order by ProductMaster.ProductName
end





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Ledger_Group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create  procedure [dbo].[usp_Ledger_Group]
as
begin
	delete from Ledger_Group_Master
	insert into Ledger_Group_Master values(1,''Cash'',''Dr'')
	insert into Ledger_Group_Master values(2,''Bank Account'',''Dr'')
	insert into Ledger_Group_Master values(3,''Bank OD'',''Cr'')
	insert into Ledger_Group_Master values(4,''Sales Account'',''Cr'')
	insert into Ledger_Group_Master values(5,''Purchases Account'',''Dr'')
	insert into Ledger_Group_Master values(6,''Indirect Expenses'',''Dr'')
	insert into Ledger_Group_Master values(7,''Indirect Income'',''Cr'')
	insert into Ledger_Group_Master values(8,''Direct Income'',''Cr'')
	insert into Ledger_Group_Master values(9,''Direct Expenses'',''Dr'')
	insert into Ledger_Group_Master values(10,''Capital Account'',''Cr'')
	insert into Ledger_Group_Master values(11,''Sundry Creditors'',''Cr'')
	insert into Ledger_Group_Master values(12,''Sundry Debtors'',''Dr'')
	insert into Ledger_Group_Master values(13,''Fixed Assets'',''Dr'')
	insert into Ledger_Group_Master values(14,''Current Liabilities'',''Cr'')
	insert into Ledger_Group_Master values(15,''Current Assets'',''Dr'')
	insert into Ledger_Group_Master values(16,''Accrued Interest'',''Dr'')
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LadgerMaster_ById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_LadgerMaster_ById]
@pLedger_Id int
as
begin
	select LGM.Ledger_Group_Nm,LM.Ledger_Nm,LM.Ledger_Op_Bal,LM.Creditor_Add,LM.Creditor_Add2,LM.Creditor_Phno,LM.Creditor_Remarks
	from Ledger_Master LM,Ledger_Group_Master LGM where LM.Ledger_Group_id = LGM.Ledger_Group_id and LM.Ledger_Id = @pLedger_Id
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE  [dbo].[usp_GetAll_LedgerMaster]
	
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	LM.Ledger_Id,
		LM.Ledger_Nm,LGM.Ledger_Group_Nm
	FROM Ledger_Master LM,Ledger_Group_Master LGM where LM.Ledger_Group_Id=LGM.Ledger_Group_Id  order by LM.Ledger_Nm
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerGroupMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetAll_LedgerGroupMaster]
	
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	Ledger_Group_Id,
		Ledger_Group_Nm
	FROM Ledger_Group_Master 
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GuestName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ById_GuestName]
	@pGuestId	int,
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	GuestId,GuestName,Address,PhoneNo
	FROM GuestMaster 
	where HotelId=@pHotelId and GuestId = @pGuestId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GuestName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE  [dbo].[usp_GetAll_GuestName]
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	GuestId,GuestName
	FROM GuestMaster 
	where HotelId=@pHotelId
	ORDER by GuestName
END








' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_ProductSubCategoryMaster]
	@pSubCategoryId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM ProductSubCategoryMaster
	WHERE SubCategoryId = @pSubCategoryId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ProductSubCategoryMaster]
	@pHotelId	INT,
	@pTypeId Int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SubCategoryId,SubCategoryName
	FROM ProductSubCategoryMaster 
	where HotelId=@pHotelId and TypeId = @pTypeId
	order by SubCategoryName
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE  [dbo].[usp_GetAll_ProductSubCategoryName]
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SubCategoryId,SubCategoryName
	FROM ProductSubCategoryMaster 
	where HotelId=@pHotelId 
	order by SubCategoryName
END









' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]
	@pSubCategoryId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT SubCategoryId,SubCategoryName
	FROM ProductSubCategoryMaster
	WHERE SubCategoryId = @pSubCategoryId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_ProductSubCategoryMaster]
	@pSubCategoryId		int OUTPUT,
	@pSubCategoryName	varchar(50),
	@pTypeId			int,
	@pFirstEnteredBy	int,
	@pHotelId			int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pSubCategoryId = 0
	BEGIN
		INSERT INTO ProductSubCategoryMaster
			(
			SubCategoryName,
			TypeId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pSubCategoryName,
			@pTypeId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pSubCategoryId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE ProductSubCategoryMaster
		SET SubCategoryName = @pSubCategoryName,TypeId=@pTypeId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE SubCategoryId = @pSubCategoryId
	END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_LedgerMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Delete_LedgerMaster]
	@pLedger_Id int
	as
	begin
		delete from Ledger_Master where Ledger_Id = @pLedger_Id
	end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_LedgerMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Save_LedgerMaster]
	@pLedger_Id int OUTPUT,
	@pLedger_Group_id int,
	@pLedger_Nm varchar(50),
	@pLedger_Op_Bal money,
	@pCreditor_Add varchar(200),
	@pCreditor_Add2 varchar(200),
	@pCreditor_Phno varchar(50),
	@pCreditor_Remarks varchar(50),
	@pHotelId		int	
AS
BEGIN
	SET NOCOUNT ON;
	IF @pLedger_Id = 0
	BEGIN
		INSERT INTO Ledger_Master
			(
			Ledger_Nm,
			Ledger_Group_id,
			Ledger_Op_Bal,
			Creditor_Add,
			Creditor_Add2,
			Creditor_Phno,
			Creditor_Remarks,
			HotelId
			)
		VALUES
			(
			
			@pLedger_Nm,
			@pLedger_Group_id,
			@pLedger_Op_Bal,
			@pCreditor_Add,
			@pCreditor_Add2,
			@pCreditor_Phno,
			@pCreditor_Remarks,
			@pHotelId
			)
		SET @pLedger_Id = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Ledger_Master
		SET Ledger_Nm = @pLedger_Nm,
		Ledger_Group_id = @pLedger_Group_id,
		Creditor_Add = @pCreditor_Add,
		Creditor_Add2 = @pCreditor_Add2,
		Creditor_Phno = @pCreditor_Phno,
		Creditor_Remarks = @pCreditor_Remarks
		WHERE Ledger_Id = @pLedger_Id
	END
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OffshopBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_OffshopBreakage]
	@pOffshopBreakageId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM OffshopBreakage
	WHERE OffshopBreakageId = @pOffshopBreakageId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_OffshopBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_OffshopBreakage]
	@pOffshopBreakageId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	OffshopBreakageId,BreakageDate,ProductId,CaseId,BarCode,BreakageQty
	FROM OffshopBreakage
	WHERE OffshopBreakageId = @pOffshopBreakageId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_PermissionUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_PermissionUser]
	@pEmployeeId INT,
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	PermissionMenuOffshop.MenuId,MenuText,Visibility
	FROM PermissionMenuOffshop left outer join PermissionUserOffshop
	on PermissionUserOffshop.MenuId=PermissionMenuOffshop.MenuId 
	WHERE PermissionUserOffshop.EmployeeId=@pEmployeeId
		and PermissionUserOffshop.HotelId=@pHotelId
	order by PermissionMenuOffshop.MenuId
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetPermission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetPermission]
	@pHotelId		INT,
	@pUserId	INT,
	@pPageName		varchar(100)
	
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	visibility 
	from PermissionUserOffshop,PermissionMenuOffshop
	where PermissionUserOffshop.MenuId = PermissionMenuOffshop.MenuId
		and EmployeeId=@pUserId 
		and PermissionUserOffshop.HotelId=@pHotelId
		and PermissionMenuOffshop.MenuName=@pPageName
END








' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_HotelRoomTypeMaster]
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	RoomTypeId,RoomTypeName
	FROM HotelRoomTypeMaster 
	where HotelId=@pHotelId 
	order by RoomTypeName
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_HotelRoomTypeMaster]
	@pRoomTypeId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	RoomTypeId,RoomTypeName
	FROM HotelRoomTypeMaster
	WHERE RoomTypeId = @pRoomTypeId
END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_HotelRoomTypeMaster]
	@pRoomTypeId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM HotelRoomTypeMaster
	WHERE RoomTypeId = @pRoomTypeId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_HotelRoomTypeMaster]
	@pRoomTypeId		int OUTPUT,
	@pRoomTypeName		varchar(100),
	@pFirstEnteredBy	int,
	@pHotelId			int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pRoomTypeId = 0
	BEGIN
		INSERT INTO HotelRoomTypeMaster
			(
			RoomTypeName,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pRoomTypeName,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pRoomTypeId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE HotelRoomTypeMaster
		SET RoomTypeName = @pRoomTypeName,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE RoomTypeId = @pRoomTypeId
	END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_HotelForLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_HotelForLogin]

as
begin
	select HotelMaster.HotelId,HotelMaster.HotelName 
	from HotelMaster
	order by HotelMaster.HotelName 
end
-- exec usp_Login ''Abhishek'',''goldenword'',0




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LoginName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_LoginName]
as
begin
	select EmployeeId,LoginName 
	from EmployeeMaster 
	order by LoginName
end
-- exec usp_Login ''Abhishek'',''goldenword'',0



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetUserId]
@pTxtId		varchar(50),
@pTxtPwd	varchar(50)
as
begin
	select EmployeeId from EmployeeMaster where LoginName = @pTxtId and Password = @pTxtPwd 
end
-- exec usp_Login ''Abhishek'',''goldenword'',0


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OffshopStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_OffshopStock]
	@pOffshopStockId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Offshop_Stock
	WHERE Offshop_GodownStockId = @pOffshopStockId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetQty_Offshop]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetQty_Offshop]
	@pProductId	int,
	@pBarcode	varchar(50),
	@pRate		decimal,
	@pHotelId	int
AS
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	declare	@pSataus char(1)
BEGIN
	SET NOCOUNT ON;
--	SELECT LastQty
--	FROM GodownLastQty
--	where ProductId=@pProductId and BarCode=@pBarcode and Rate=@pRate and HotelId=@pHotelId
	select @pSumOpng = isnull(sum(Qty),0) from Offshop_Stock where Status = ''O'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumPur = isnull(sum(Qty),0) from Offshop_Stock where Status = ''R'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumSale =isnull(sum(Qty),0) from Offshop_Stock where Status = ''S'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	select @pSumBrkg = isnull(sum(Qty),0) from Offshop_Stock where Status = ''B'' and ProductId = @pProductId and Barcode = @pBarcode and HotelId=@pHotelId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
	select @pLastQty as LastQty
END

-- exec usp_GetQty 1,''1'',200,0



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Update_SaveProductDetails]
	@pSaveProductDetailsId INT,
	@pQty				int,
	@pAmount			decimal(18,0)
	
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE SaveProductDetails 
	SET Qty = @pQty,Amount = @pAmount
	WHERE SaveProductDetailsId = @pSaveProductDetailsId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_SaveProductDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_SaveProductDetails]
	@pSaveProductDetailsId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM SaveProductDetails
	WHERE SaveProductDetailsId = @pSaveProductDetailsId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_HotelRoomMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_HotelRoomMaster]
	@pRoomId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM HotelRoomMaster
	WHERE RoomId = @pRoomId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_DueDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[usp_Save_DueDetails]

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










' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_DueDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Delete_DueDetails]
	@pDueDetailsId int
	as
	begin
		delete from DueDetails where DueDetailsId = @pDueDetailsId
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SaveProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Save_SaveProductMaster]
	-----For Master Entry-------
	@pSaveProductMasterId	int OUTPUT,
	@pBillNo				bigint,
	@pBillDate				datetime,
	@pBillAmt				decimal(18,0),
    @pDiscPer				decimal(18,2),
	@pDiscAmt				decimal(18,0),
	@pLSDiscAmt				decimal(18,0),
	@pDiscRemarks			varchar(100),
	@pComplemantry_Remarks	varchar(100),
	@pReceivableAmt			decimal(18,0),
	@pOccupy				char(1),
	@pCash					decimal(18,0),
	@pCard					decimal(18,0),
	@pExtraChargeOnCard		decimal(18,2),
	@pDue					decimal(18,0),
	@pFirstEnteredBy		int,
	@pHotelId				int,

	-----For Details Entry------
	@pProductId			int,
	@pBarCode			varchar(50),
	@pRate				decimal(18,0),
	@pQty				int,
	@pAmount			decimal(18,0)

AS
BEGIN
	SET NOCOUNT ON;
	IF @pSaveProductMasterId = 0
		BEGIN
			INSERT INTO SaveProductMaster
				(
				BillNo,
				BillDate,
				BillAmt,
				DiscPer,
				DiscAmt,
				LSDiscAmt,
				DiscRemarks,
				Complemantry_Remarks,
				ReceivableAmt,
				Occupy,
				Cash,
				Card,
				ExtraChargeOnCard,
				Due,
				FirstEnteredBy,
				HotelId
				)
			VALUES
				(
				@pBillNo,
				@pBillDate,
				@pBillAmt,
				@pDiscPer,
				@pDiscAmt,
				@pLSDiscAmt,
				@pDiscRemarks,
				@pComplemantry_Remarks,
				@pReceivableAmt,
				@pOccupy,
				@pCash,
				@pCard,
				@pExtraChargeOnCard,
				@pDue,
				@pFirstEnteredBy,
				@pHotelId
				)
			SET @pSaveProductMasterId = SCOPE_IDENTITY()
			-------------------
			INSERT INTO SaveProductDetails
				(
				SaveProductMasterId,
				BillNo,
				BillDate,
				ProductId,
				BarCode,
				Rate,
				Qty,
				Amount,
				FirstEnteredBy,
				HotelId
				)
			VALUES
				(
				@pSaveProductMasterId,
				@pBillNo,
				@pBillDate,
				@pProductId,
				@pBarCode,
				@pRate,
				@pQty,
				@pAmount,
				@pFirstEnteredBy,
				@pHotelId
				)
		END
	ELSE
		BEGIN
			UPDATE SaveProductMaster
			SET 
			BillAmt = @pBillAmt,
			DiscPer = @pDiscPer,
			DiscAmt = @pDiscAmt,
			LSDiscAmt = @pLSDiscAmt,
			DiscRemarks = @pDiscRemarks,
			Complemantry_Remarks = @pComplemantry_Remarks,
			ReceivableAmt = @pReceivableAmt,
			Occupy = @pOccupy,
			Cash = @pCash,
			Card = @pCard,
			ExtraChargeOnCard = @pExtraChargeOnCard,
			Due = @pDue,
			LastModifiedOn = getdate(),
			LastModifiedBy = @pFirstEnteredBy
			WHERE SaveProductMasterId = @pSaveProductMasterId and HotelId = @pHotelId
			-------------------
			IF @pReceivableAmt=0 and @pComplemantry_Remarks=''''
			BEGIN
				INSERT INTO SaveProductDetails
					(
					SaveProductMasterId,
					BillNo,
					BillDate,
					ProductId,
					BarCode,
					Rate,
					Qty,
					Amount,
					FirstEnteredBy,
					HotelId
					)
				VALUES
					(
					@pSaveProductMasterId,
					@pBillNo,
					@pBillDate,
					@pProductId,
					@pBarCode,
					@pRate,
					@pQty,
					@pAmount,
					@pFirstEnteredBy,
					@pHotelId
					)
			END
		else
--			delete from GodownStock where Status=''S'' and MainId=@pSaveProductMasterId
			delete from Offshop_Stock where Status=''S'' and MainId=@pSaveProductMasterId
				----------For Godown stock entry------------
			begin
					declare @ProductId		int
					--declare @SizeOfBottle	int
					declare @Qty			int
					declare @Amount			decimal
					declare @BarCode		varchar(50)
					declare @ItemRate		decimal
					declare CUR cursor for 
						select ProductId,Qty,BarCode,Amount,Rate
						from SaveProductDetails
						where SaveProductMasterId=@pSaveProductMasterId
					open CUR
					fetch next from CUR into @ProductId,@Qty,@BarCode,@Amount,@ItemRate
					while @@fetch_status=0
					BEGIN
						insert into Offshop_Stock(ProductId,Qty,BarCode,Status,MainId,TotalAmount,FirstEnteredBy,HotelId)
							values(@ProductId,@Qty,@BarCode,''S'',@pSaveProductMasterId,@Amount,@pFirstEnteredBy,@pHotelId)
							exec usp_Save_GodownLastQuantity @ProductId,@BarCode,@ItemRate,@pHotelId
						fetch next from CUR into @ProductId,@Qty,@BarCode,@Amount,@ItemRate
					END
					close CUR
					deallocate CUR
			end

		END
	select @pSaveProductMasterId
END 





















' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OffshopBreakage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_OffshopBreakage]
	@pOffshopBreakageId		int OUTPUT,
	@pBreakageDate			datetime,
	@pProductId				int,
	@pCaseId				int,
	@pBarCode				varchar(50),
	@pBreakageQty			int,
	@pTypeId				int,
	@pFirstEnteredBy		int,
	@pHotelId				int
AS
	declare @Rate	as decimal
BEGIN
	SET NOCOUNT ON;
	IF @pOffshopBreakageId = 0
	BEGIN
		INSERT INTO OffshopBreakage
			(
			BreakageDate,
			ProductId,
			CaseId,
			BarCode,
			BreakageQty,
			TypeId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pBreakageDate,
			@pProductId,
			@pCaseId,
			@pBarCode,
			@pBreakageQty,
			@pTypeId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pOffshopBreakageId = SCOPE_IDENTITY()
		set @Rate=(select Rate from GodownLastQty where BarCode=@pBarCode and ProductId=@pProductId and HotelId=@pHotelId)
			insert into Offshop_Stock(ProductId,SizeOfBottle,Qty,Barcode,Status,MainId,FirstEnteredBy,HotelId)select OffshopBreakage.ProductId,
			BottlePerCase.SizeOfBottle,OffshopBreakage.BreakageQty,OffshopBreakage.Barcode,''B'',@pOffshopBreakageId,OffshopBreakage.FirstEnteredBy,
			OffshopBreakage.HotelId  from OffshopBreakage,BottlePerCase 
			where OffshopBreakage.CaseId = BottlePerCase.CaseId and OffshopBreakage.OffshopBreakageId = @pOffshopBreakageId
			
		exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@Rate,@pHotelId
			
	END
	ELSE
	BEGIN
		UPDATE OffshopBreakage
		SET 
		BreakageDate = @pBreakageDate,
		ProductId = @pProductId,
		CaseId=@pCaseId,
		BarCode=@pBarCode,
		BreakageQty=@pBreakageQty,
		TypeId=@pTypeId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId=@pHotelId
		WHERE OffshopBreakageId = @pOffshopBreakageId
	
		update Offshop_Stock
		set
		ProductId = @pProductId,
		SizeOfBottle = (select BottlePerCase.SizeOfBottle from OffshopBreakage,BottlePerCase 
					where OffshopBreakage.CaseId = BottlePerCase.CaseId and OffshopBreakage.OffshopBreakageId = @pOffshopBreakageId),
		Qty = @pBreakageQty,
		Barcode = @pBarCode,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy,
		HotelId=@pHotelId
		where MainId = @pOffshopBreakageId
	
		exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@Rate,@pHotelId
	END
END




-- exec usp_Save_OffshopBreakage 2,''7/25/2013 3:48:02 PM'',4,3,1111,15,1,0,0










' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OffshopStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Save_OffshopStock]
	@pOffshop_GodownStockId		int OUTPUT,
	@pProductId			int,
	@pSizeOfBottle		int,
	@pQty				int,
	@pBarCode			varchar(50),
	@pPurchaseRate		int,
	@pMRP				int,
	@pTotalAmount		int,
	@pStatus			char(1),
	@pFirstEnteredBy	int,
	@pHotelId int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pOffshop_GodownStockId = 0
	BEGIN
		INSERT INTO Offshop_Stock
			(
			ProductId,
			SizeOfBottle,
			Qty,
			BarCode,
			PurchaseRate,
			MRP,
			TotalAmount,
			Status,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pProductId,
			@pSizeOfBottle,
			@pQty,
			@pBarCode,
			@pPurchaseRate,
			@pMRP,
			@pTotalAmount,
			@pStatus,
			@pFirstEnteredBy,
			@pHotelId
			)
		exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@pMRP,@pHotelId
		SET @pOffshop_GodownStockId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Offshop_Stock
		SET ProductId = @pProductId,
		SizeOfBottle=@pSizeOfBottle,
		Qty=@pQty,
		BarCode=@pBarCode,
		PurchaseRate=@pPurchaseRate,
		MRP=@pMRP,
		TotalAmount=@pTotalAmount,
		Status=@pStatus,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE Offshop_GodownStockId = @pOffshop_GodownStockId
	
		exec usp_Save_GodownLastQuantity @pProductId,@pBarCode,@pMRP,@pHotelId
	END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OffshopStock_GodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Delete_OffshopStock_GodownStock]
@pOffshop_GodownStockId int,
@pHotetlId int
as
	declare @ProductId	int
	declare @pBarCode	varchar(50)
	declare @pMRP		int
begin

	set @ProductId=(select ProductId from Offshop_Stock where Offshop_GodownStockId=@pOffshop_GodownStockId)
	set @pBarCode=(select BarCode from Offshop_Stock where Offshop_GodownStockId=@pOffshop_GodownStockId)
	set @pMRP=(select max(MRP) from Offshop_Stock where Offshop_GodownStockId=@pOffshop_GodownStockId)

	delete from GodownStock where Status = ''R'' and MainId = @pOffshop_GodownStockId
	and HotelId = @pHotetlId
	
	delete from Offshop_Stock where Offshop_GodownStockId = @pOffshop_GodownStockId

	exec usp_Save_GodownLastQuantity @ProductId,@pBarCode,@pMRP,@pHotetlId
end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Requisition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Requisition]
@pGodownStockId int,
@ProductId int,
@pSizeOfBottle int,
@pQty int,
@pBarCode varchar(50),
@pPurchaseRate int,
@pMRP int,
@pTotalAmount decimal(18,0),
@Status char(1),
@pMainId int,
@pFirstEnteredBy int,
@pLastModifiedBy int,
@pHotelId int
as
	declare @pOffshop_GodownStockId int
	begin		
		if(@pGodownStockId = 0)		
		begin		
			insert into Offshop_Stock
				(
					ProductId,
					SizeOfBottle,
					Qty,
					BarCode,
					PurchaseRate,
					MRP,
					TotalAmount,
					Status,
					MainId,
					FirstEnteredBy,
					LastModifiedBy,
					HotelId
				)
				values
				(
					@ProductId,
					@pSizeOfBottle,
					@pQty,
					@pBarCode,
					@pPurchaseRate,
					@pMRP,
					@pTotalAmount,
					@Status,
					@pMainId,
					@pFirstEnteredBy,
					@pLastModifiedBy,
					@pHotelId
				)	
				exec usp_Save_GodownLastQuantity @ProductId,@pBarCode,@pMRP,@pHotelId
				set @pGodownStockId = scope_identity()
	------------------------------------------------------------------------------------
				insert into GodownStock
				(
					ProductId,
					SizeOfBottle,
					Qty,
					BarCode,
					PurchaseRate,
					MRP,
					TotalAmount,
					Status,
					MainId,
					FirstEnteredBy,
					LastModifiedBy,
					HotelId
				)
				values
				(
					@ProductId,
					@pSizeOfBottle,
					@pQty,
					@pBarCode,
					@pPurchaseRate,
					@pMRP,
					@pTotalAmount,
					@Status,
					@pGodownStockId,
					@pFirstEnteredBy,
					@pLastModifiedBy,
					@pHotelId
				)
		end
	end


' 
END
