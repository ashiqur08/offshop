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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](50) NULL,
	[FirstEnteredOn] [datetime] NULL DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CocktailDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CocktailDetails](
	[CocktailDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[CocktailId] [int] NULL,
	[ProductId] [int] NULL,
	[Qty] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_CocktailDetails_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_CocktailDetails] PRIMARY KEY CLUSTERED 
(
	[CocktailDetailsId] ASC
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
	[EmployeeId] [int] IDENTITY(1001,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[AddressLine1] [varchar](50) NULL,
	[AddressLine2] [varchar](50) NULL,
	[Phone] [varchar](30) NULL,
	[PIN] [char](6) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[OfficeId] [int] NULL,
	[LoggedOn] [char](10) NULL
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
	[HotelId] [int] NULL,
	[HotelName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutletRateMasterOccation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OutletRateMasterOccation](
	[OccationId] [int] IDENTITY(1,1) NOT NULL,
	[OutletId] [int] NULL,
	[SaleProductId] [int] NULL,
	[FromDate] [datetime] NULL,
	[Todate] [datetime] NULL,
	[FromTime] [datetime] NULL,
	[ToTime] [datetime] NULL,
	[OccationalRate] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_OutletRateMasterOccation_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_OutletRateMasterOccation] PRIMARY KEY CLUSTERED 
(
	[OccationId] ASC
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Unit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_Unit]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	UnitId,
		UnitName
	FROM UnitMaster where HotelId=@pHotelId order by UnitName
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_UnitMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_UnitMaster]
	@pUnitId int OUTPUT,
	@pUnitName varchar(50),
	@pFirstEnteredBy int,
	@pHotelId int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pUnitId = 0
	BEGIN
		INSERT INTO UnitMaster
			(
			UnitName,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pUnitName,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pUnitId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE UnitMaster
		SET UnitName = @pUnitName,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE UnitId = @pUnitId
	END
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PromotionMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PromotionMaster](
	[PromotionId] [int] IDENTITY(1,1) NOT NULL,
	[OutletId] [int] NULL,
	[SaleProductId] [int] NULL,
	[FromDate] [datetime] NULL,
	[Todate] [datetime] NULL,
	[FromTime] [datetime] NULL,
	[ToTime] [datetime] NULL,
	[RatioSale] [int] NULL,
	[RatioFree] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_Promotion_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_SaleProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_SaleProductMaster]
	@pSaleProductId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM SaleProductMaster
	WHERE SaleProductId = @pSaleProductId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnitMaster](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](100) NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_UnitMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_UnitMaster] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_UnitMaster] UNIQUE NONCLUSTERED 
(
	[UnitName] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarCounterWithOutletMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BarCounterWithOutletMaster](
	[BarCounterWithOutletId] [int] IDENTITY(1,1) NOT NULL,
	[BarCounterId] [int] NULL,
	[OutletId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_BarCounterWithOutletMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_BarCounterWithOutletMaster] PRIMARY KEY CLUSTERED 
(
	[BarCounterWithOutletId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_BarCounterWithOutletMaster] UNIQUE NONCLUSTERED 
(
	[BarCounterId] ASC,
	[OutletId] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutletRateMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OutletRateMaster](
	[OutletRateId] [int] IDENTITY(1,1) NOT NULL,
	[OutletId] [int] NULL,
	[SaleProductId] [int] NULL,
	[Rate] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_OutletRateMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_OutletRateMaster] PRIMARY KEY CLUSTERED 
(
	[OutletRateId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SaleProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_SaleProductMaster]
	@pSaleProductId			int OUTPUT,
	@pSaleProductName		varchar(50),
	@pProductId				int,
	@pSaleUnitOfMeasureId	int,
	@pCategoryId			int,
	@pSubCategoryId			int,
	@pTypeId				int,
	@pUnitId				int,
	@pCocktailSetup			char(1),
	@pSaleProductCode		varchar(50),
	@pVatPresent			char(1),
	@pFirstEnteredBy		int,
	@pHotelId				int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pSaleProductId = 0
	BEGIN
		INSERT INTO SaleProductMaster
			(
			SaleProductName,
			ProductId,
			SaleUnitOfMeasureId,
			CategoryId,
			SubCategoryId,
			TypeId,
			UnitId,
			CocktailSetup,
			SaleProductCode,
			VatPresent,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pSaleProductName,
			@pProductId,
			@pSaleUnitOfMeasureId,
			@pCategoryId,
			@pSubCategoryId,
			@pTypeId,
			@pUnitId,
			@pCocktailSetup,
			@pSaleProductCode,
			@pVatPresent,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pSaleProductId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE SaleProductMaster
		SET SaleProductName = @pSaleProductName,ProductId=@pProductId,
		SaleUnitOfMeasureId=@pSaleUnitOfMeasureId,CategoryId=@pCategoryId,
		SubCategoryId=@pSubCategoryId,TypeId=@pTypeId,UnitId=@pUnitId,
		CocktailSetup=@pCocktailSetup,SaleProductCode=@pSaleProductCode,
		VatPresent=@pVatPresent,LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE SaleProductId = @pSaleProductId
	END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_SaleProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_SaleProductMaster]
	@pSaleProductId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaleProductId,SaleProductName,ProductId,SaleUnitOfMeasureId,CategoryId,
		SubCategoryId,UnitId,TypeId,CocktailSetup,SaleProductCode,VatPresent
	FROM SaleProductMaster
	WHERE SaleProductId = @pSaleProductId
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleProductMaster](
	[SaleProductId] [int] IDENTITY(1,1) NOT NULL,
	[SaleProductName] [varchar](50) NULL,
	[ProductId] [int] NULL,
	[SaleUnitOfMeasureId] [int] NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[TypeId] [int] NULL,
	[UnitId] [int] NULL,
	[CocktailSetup] [char](1) NULL,
	[SaleProductCode] [varchar](50) NULL,
	[VatPresent] [char](1) NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF__SaleProdu__First__7C4F7684]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [unique_SaleProductMaster] UNIQUE NONCLUSTERED 
(
	[SaleProductName] ASC,
	[SaleProductCode] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TableMaster](
	[TableId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NULL,
	[OutletId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_TableMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_TableName] PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_TableMaster] UNIQUE NONCLUSTERED 
(
	[OutletId] ASC,
	[TableName] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutletMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OutletMaster](
	[OutletId] [int] IDENTITY(1,1) NOT NULL,
	[OutletName] [varchar](25) NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_OutletMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_OutletMaster] PRIMARY KEY CLUSTERED 
(
	[OutletId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_OutletMaster] UNIQUE NONCLUSTERED 
(
	[OutletName] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
	[SizeOfBottle] [int] NULL,
	[NoOfBottlePerCase] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
 CONSTRAINT [PK_BottlePerCase] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_BottlePerCase] UNIQUE NONCLUSTERED 
(
	[SizeOfBottle] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CocktailMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CocktailMaster](
	[CocktailId] [int] IDENTITY(1,1) NOT NULL,
	[SaleProductId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_CocktailMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_CocktailMaster] PRIMARY KEY CLUSTERED 
(
	[CocktailId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductTypeMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductTypeMaster](
	[TypeId] [int] NULL,
	[TypeName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleUnitOfMeasureMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleUnitOfMeasureMaster](
	[SaleUnitOfMeasureId] [int] IDENTITY(1,1) NOT NULL,
	[SaleUnitOfMeasureName] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [SaleUnitOfMeasureMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_SaleUnitOfMeasureMaster] PRIMARY KEY CLUSTERED 
(
	[SaleUnitOfMeasureId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_SaleUnitOfMeasureMaster] UNIQUE NONCLUSTERED 
(
	[SaleUnitOfMeasureName] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarCounterMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BarCounterMaster](
	[BarCounterId] [int] IDENTITY(1,1) NOT NULL,
	[BarCounterName] [varchar](50) NULL,
	[HotelId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [DF_BarCounterMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
 CONSTRAINT [PK_BarCounterMaster] PRIMARY KEY CLUSTERED 
(
	[BarCounterId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_BarCounterMaster] UNIQUE NONCLUSTERED 
(
	[BarCounterName] ASC,
	[HotelId] ASC
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductMaster](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[TypeId] [int] NULL,
	[UnitId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL CONSTRAINT [ProductMaster_FirstEnteredOn]  DEFAULT (getdate()),
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductMaster] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_ProductMaster] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC,
	[CategoryId] ASC,
	[SubCategoryId] ASC,
	[TypeId] ASC,
	[UnitId] ASC,
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductTypeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_ProductTypeMaster]
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO ProductTypeMaster(TypeId,TypeName) VALUES(1,''Food'')
	INSERT INTO ProductTypeMaster(TypeId,TypeName) VALUES(2,''Drinks'')
	INSERT INTO ProductTypeMaster(TypeId,TypeName) VALUES(3,''Beverage'')
	INSERT INTO ProductTypeMaster(TypeId,TypeName) VALUES(4,''Misc.'')

	IF (select count(*) from RoleMaster) = 0
		BEGIN
			truncate table RoleMaster
			INSERT INTO RoleMaster(RoleDescription) VALUES(''Waiter'')
		END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_CocktailMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_CocktailMaster]
	@pCocktailId		int OUTPUT,
	@pSaleProductId		int,
	@pProductId			int,
	@pQty				int,
	@pFirstEnteredBy	int,
	@pHotelId			int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pCocktailId = 0
	BEGIN
		INSERT INTO CocktailMaster
			(
			SaleProductId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pSaleProductId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pCocktailId = SCOPE_IDENTITY()
		INSERT INTO CocktailDetails
		(
		CocktailId,
		ProductId,
		Qty,
		FirstEnteredBy,
		HotelId
		)
		VALUES
		(
		@pCocktailId,
		@pProductId,
		@pQty,
		@pFirstEnteredBy,
		@pHotelId
		)
	END
	ELSE
	BEGIN
		UPDATE CocktailMaster
		SET SaleProductId = @pSaleProductId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE CocktailId = @pCocktailId
		
		INSERT INTO CocktailDetails
		(
		CocktailId,
		ProductId,
		Qty,
		FirstEnteredBy,
		HotelId
		)
		VALUES
		(
		@pCocktailId,
		@pProductId,
		@pQty,
		@pFirstEnteredBy,
		@pHotelId
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_CocktailMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_CocktailMaster]
	@pCocktailId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CM.CocktailId,SPM.SaleProductName
	FROM CocktailMaster CM,SaleProductMaster SPM
	where CM.SaleProductId=SPM.SaleProductId and CM.CocktailId=@pCocktailId

	SELECT	CM.CocktailId,PM.ProductName,CD.Qty
	FROM CocktailMaster CM,ProductMaster PM,CocktailDetails CD
	where CD.ProductId=PM.ProductId and CM.CocktailId=CD.CocktailId and CM.CocktailId=@pCocktailId
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_CocktailDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_CocktailDetails]
	@pCocktailDetailsId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM CocktailDetails
	WHERE CocktailDetailsId = @pCocktailDetailsId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_CocktailDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_CocktailDetails]
	@pCocktailDetailsId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CD.CocktailDetailsId,PM.ProductName,CD.Qty
	FROM CocktailMaster CM,ProductMaster PM, CocktailDetails CD
	where CM.CocktailId=CD.CocktailId and CD.ProductId=PM.ProductId
	and CD.CocktailDetailsId = @pCocktailDetailsId
	order by PM.ProductName
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp__GetItemByTypeOccational]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp__GetItemByTypeOccational]	
	 @pOutletId int,
	 @pTypeId int,
	 @pHotelId int
as
begin

		select s.SaleProductId as SaleProductId,s.SaleProductName as SaleProductName 
		from SaleProductMaster s where s.SaleProductId not in (select SaleProductId from OutletRateMasterOccation where OutletId=@pOutletId)
	
		and s.TypeId=@pTypeId order by SaleProductName
end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OutletRateMasterOccational]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE  [dbo].[usp_GetAll_OutletRateMasterOccational]
	@pOutletId INT = NULL,
	@pHotelId  INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ORMo.OccationId,OM.OutletName,SPM.SaleProductName,ORMo.OccationalRate
	FROM OutletRateMasterOccation ORMo, OutletMaster OM, SaleProductMaster SPM
	where SPM.SaleProductId=ORMo.SaleProductId and ORMo.OutletId=OM.OutletId and ORMo.HotelId=@pHotelId 
	and OM.HotelId=@pHotelId and OM.OutletId=isnull(@pOutletId,OM.OutletId) 
	order by OM.OutletName,SPM.SaleProductName,ORMo.OccationalRate
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OutletRateMasterOccation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_OutletRateMasterOccation]
	@pOutletId INT = NULL,
	@pHotelId  INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ORM.OccationId,OM.OutletName,SPM.SaleProductName,ORM.OccationalRate
	FROM OutletRateMasterOccation ORM, OutletMaster OM, SaleProductMaster SPM
	where SPM.SaleProductId=ORM.SaleProductId and ORM.OutletId=OM.OutletId and ORM.HotelId=@pHotelId 
	and OM.HotelId=@pHotelId and OM.OutletId=isnull(@pOutletId,OM.OutletId) 
	order by OM.OutletName,SPM.SaleProductName,ORM.OccationalRate
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OutletRateMasterOccation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_OutletRateMasterOccation]
	@pOccationId  INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM OutletRateMasterOccation
	WHERE OccationId = @pOccationId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OutletRateMasterOccation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_OutletRateMasterOccation]
	@pOccationId		int OUTPUT,
	@pOutletId			int,
	@pSaleProductId		int,
	@pFromDate			datetime,
	@pTodate			datetime,
	@pFromTime			datetime,
	@pToTime			datetime,
	@pOccationalRate	int,
	@pFirstEnteredBy	int,
	@pHotelId int
	
AS
BEGIN
	SET NOCOUNT ON;
	IF @pOccationId = 0
	BEGIN
		INSERT INTO OutletRateMasterOccation
			(
			OutletId,
			SaleProductId,
			FromDate,
			Todate,
			FromTime,
			ToTime,
			OccationalRate,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pOutletId,
			@pSaleProductId,
			@pFromDate,
			@pTodate,
			@pFromTime,
			@pToTime,
			@pOccationalRate,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pOccationId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE OutletRateMasterOccation
		SET OutletId = @pOutletId, SaleProductId=@pSaleProductId, FromDate=@pFromDate, Todate=@pTodate, 
		FromTime=@pFromTime, ToTime=@pToTime, OccationalRate=@pOccationalRate, LastModifiedOn = getdate(),LastModifiedBy = @pFirstEnteredBy
		where OccationId=@pOccationId
	END
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_OutletRateMasterOccation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_OutletRateMasterOccation]
	@pOccationId  INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ORM.OccationId,OM.OutletName,SPM.SaleProductName,ORM.FromDate,ORM.Todate,ORM.FromTime,ORM.ToTime,ORM.OccationalRate
	FROM OutletRateMasterOccation ORM, OutletMaster OM,SaleProductMaster SPM
	where SPM.SaleProductId=ORM.SaleProductId and ORM.OutletId=OM.OutletId and OccationId=@pOccationId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_PromotionMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_PromotionMaster]
	@pPromotionId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM PromotionMaster
	WHERE PromotionId = @pPromotionId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_PromotionMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_PromotionMaster]
	@pPromotionId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	PromotionId,OutletId,SaleProductId,FromDate,Todate,convert(varchar(10),FromTime,8)as FromTime,convert(varchar(10),ToTime,8)as ToTime,
	RatioSale,RatioFree
	FROM PromotionMaster
	WHERE PromotionId = @pPromotionId
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PromotionMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_PromotionMaster]
	@pPromotionId		int OUTPUT,
	@pOutletId			varchar(50),
	@pSaleProductId		int,
	@pFromDate			datetime,
	@pTodate			datetime,
	@pFromTime			datetime,
	@pToTime			datetime,
	@pRatioSale			int,
	@pRatioFree			int,
	@pFirstEnteredBy	int,
	@pHotelId			int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pPromotionId = 0
	BEGIN
		INSERT INTO PromotionMaster
			(
			OutletId,
			SaleProductId,
			FromDate,
			Todate,
			FromTime,
			ToTime,
			RatioSale,
			RatioFree,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pOutletId,
			@pSaleProductId,
			@pFromDate,
			@pTodate,
			@pFromTime,
			@pToTime,
			@pRatioSale,
			@pRatioFree,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pPromotionId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE PromotionMaster
		SET OutletId = @pOutletId,SaleProductId=@pSaleProductId,FromDate=@pFromDate,Todate=@pTodate,
		FromTime=@pFromTime,ToTime=@pToTime,RatioSale=@pRatioSale,RatioFree=@pRatioFree,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE PromotionId = @pPromotionId
	END
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PromotionMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_PromotionMaster]
	@pOutletId	INT=NULL,
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	PM.PromotionId,OM.OutletId,OM.OutletName,SPM.SaleProductName,PM.RatioSale,PM.RatioFree
	FROM PromotionMaster PM, SaleProductMaster SPM, OutletMaster OM
	where PM.OutletId=OM.OutletId and PM.SaleProductId=SPM.SaleProductId 
	and PM.HotelId=@pHotelId and SPM.HotelId=@pHotelId and OM.OutletId=ISNULL(@pOutletId,OM.OutletId) 
	order by OM.OutletName,SPM.SaleProductName
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_Unit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_Unit]
	@pUnitId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	UnitId,UnitName
	FROM UnitMaster
	WHERE UnitId = @pUnitId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_BarCounterWithOutletMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_BarCounterWithOutletMaster]
	@pBarCounterWithOutletId	int OUTPUT,
	@pBarCounterId					int,
	@pOutletId						int,
	@pFirstEnteredBy				int,
	@pHotelId						int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pBarCounterWithOutletId = 0
	BEGIN
		INSERT INTO BarCounterWithOutletMaster
			(
			BarCounterId,
			OutletId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pBarCounterId,
			@pOutletId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pBarCounterWithOutletId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE BarCounterWithOutletMaster
		SET BarCounterId = @pBarCounterId,
		OutletId=@pOutletId,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE BarCounterWithOutletId = @pBarCounterWithOutletId
	END
END









' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_BarCounterWithOutletMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_BarCounterWithOutletMaster]
	@pBarCounterWithOutletId	INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM BarCounterWithOutletMaster
	WHERE BarCounterWithOutletId=@pBarCounterWithOutletId
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_BarCounterWithOutletMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_BarCounterWithOutletMaster]
	@pBarCounterWithOutletId  INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BCM.BarCounterName,OM.OutletName
	FROM BarCounterWithOutletMaster BCWM ,BarCounterMaster BCM ,OutletMaster OM 
	where BCWM.BarCounterId=BCM.BarCounterId and BCWM.OutletId=OM.OutletId and BCWM.BarCounterWithOutletId=@pBarCounterWithOutletId
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BarCounterWithOutletMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_BarCounterWithOutletMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BCWM.BarCounterWithOutletId,BCM.BarCounterName,OM.OutletName
	FROM BarCounterWithOutletMaster BCWM ,BarCounterMaster BCM ,OutletMaster OM 
	where BCWM.HotelId=@pHotelId and BCM.HotelId=@pHotelId and OM.HotelId=@pHotelId 
		and BCWM.BarCounterId=BCM.BarCounterId and BCWM.OutletId=OM.OutletId
	order by OM.OutletName,BCM.BarCounterName
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
	@pTypeId	int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SubCategoryId,SubCategoryName
	FROM ProductSubCategoryMaster 
	where HotelId=@pHotelId and TypeId=@pTypeId 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OutletRateMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_OutletRateMaster]
	@pOutletRateId  INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM OutletRateMaster
	WHERE OutletRateId = @pOutletRateId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OutletRateMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_OutletRateMaster]
	@pOutletRateId		int OUTPUT,
	@pOutletId			int,
	@pSaleProductId		int,
	@pRate				int,
	@pFirstEnteredBy	int,
	@pHotelId int
	
AS
BEGIN
	SET NOCOUNT ON;
	IF @pOutletRateId = 0
	BEGIN
		INSERT INTO OutletRateMaster
			(
			OutletId,
			SaleProductId,
			Rate,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pOutletId,
			@pSaleProductId,
			@pRate,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pOutletRateId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE OutletRateMaster
		SET OutletId = @pOutletId, SaleProductId=@pSaleProductId, Rate=@pRate, LastModifiedOn = getdate(),LastModifiedBy = @pFirstEnteredBy
		where OutletRateId=@pOutletRateId
	END
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OutletRateMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_OutletRateMaster]
	@pOutletId INT = NULL,
	@pHotelId  INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ORM.OutletRateId,OM.OutletName,SPM.SaleProductName,ORM.Rate
	FROM OutletRateMaster ORM, OutletMaster OM, SaleProductMaster SPM
	where SPM.SaleProductId=ORM.SaleProductId and ORM.OutletId=OM.OutletId and ORM.HotelId=@pHotelId 
	and OM.HotelId=@pHotelId and OM.OutletId=isnull(@pOutletId,OM.OutletId) 
	order by OM.OutletName,SPM.SaleProductName,ORM.Rate
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetRate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetRate]
@SaleProductId int,
@OutletId int
as
	begin
	select Rate from OutletRateMaster where OutletId=@OutletId and SaleProductId=@SaleProductId
	end
	' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_OutletRateMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_OutletRateMaster]
	@pOutletRateId  INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ORM.OutletRateId,ORM.OutletId,ORM.SaleProductId,OM.OutletName,SPM.SaleProductName,ORM.Rate
	FROM OutletRateMaster ORM, OutletMaster OM,SaleProductMaster SPM
	where SPM.SaleProductId=ORM.SaleProductId and ORM.OutletId=OM.OutletId and OutletRateId=@pOutletRateId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp__GetItemByType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp__GetItemByType]	
	 @pOutletId int,
	 @pTypeId int,
	 @pHotelId int
as
begin

		select s.SaleProductId as SaleProductId,s.SaleProductName as SaleProductName 
		from SaleProductMaster s where s.SaleProductId not in (select SaleProductId from OutletRateMaster where OutletId=@pOutletId)
	
		and s.TypeId=@pTypeId order by SaleProductName
end
--exec usp__GetItemByType 1,1,0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_RateTransfer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Save_RateTransfer]	
	@pFromOutletId int,
	@pToOutletId int,
	@pTypeId int,
	@pFirstEnteredBy int,
	@pHotelId int
as
begin
	delete from OutletRateMaster where OutletId=@pToOutletId 
		and SaleProductId in(select SaleProductId from SaleProductMaster where TypeId=@pTypeId)
	
	insert into OutletRateMaster
		(
			OutletId,
			SaleProductId,
			Rate,
			FirstEnteredBy,
			HotelId
		)
	select @pToOutletId,SaleProductId,Rate,@pFirstEnteredBy,@pHotelId 
		from OutletRateMaster 
		where OutletId = @pFromOutletId 
		and SaleProductId in(select SaleProductId from SaleProductMaster where TypeId=@pTypeId)
end


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Cocktails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_Cocktails]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaleProductId,SaleProductName
	FROM SaleProductMaster
	WHERE TypeId = 2 and CocktailSetup=''Y'' 
	and SaleProductId not in(select SaleProductId from CocktailMaster)
	ORDER BY SaleProductName
END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_CocktailMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_CocktailMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CM.CocktailId,SPM.SaleProductName
	FROM CocktailMaster CM,SaleProductMaster SPM
	where CM.SaleProductId=SPM.SaleProductId and CM.HotelId=@pHotelId and SPM.HotelId=@pHotelId 
	order by SPM.SaleProductName
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaleProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_SaleProductMaster]
	@pHotelId	INT,
	@pTypeId	int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaleProductId,SaleProductName,SaleProductCode
	FROM SaleProductMaster 
	WHERE HotelId=@pHotelId and TypeId=@pTypeId
	order by SaleProductName
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_TableMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_TableMaster]
	@pTableId int OUTPUT,
	@pOutletId int,
	@pTableName varchar(50),
	@pFirstEnteredBy int,
	@pHotelId int
	
AS
BEGIN
	SET NOCOUNT ON;
	IF @pTableId = 0
	BEGIN
		INSERT INTO TableMaster
			(
			TableName,
			OutletId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pTableName,
			@pOutletId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pTableId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE TableMaster
		SET TableName = @pTableName,OutletId = @pOutletId,LastModifiedOn = getdate(),LastModifiedBy = @pFirstEnteredBy
		where TableId=@pTableId
	END
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Table]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_Table]
	@pTableId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM TableMaster
	WHERE TableId = @pTableId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Table]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_Table]
	@pOutletId INT = NULL,
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	TableId,TableName
	FROM TableMaster 
	where HotelId=@pHotelId and OutletId=isnull(@pOutletId,TableMaster.OutletId) 
	order by TableId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_Table]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_Table]
	@pTableId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	TableId,OutletId,TableName
	FROM TableMaster
	WHERE TableId = @pTableId
END

drop procedure [usp_GetAll_Table_ById]



--select * from tablemaster
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_Outlet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_Outlet]
	@pOutletId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	OutletId,OutletName
	FROM OutletMaster
	WHERE OutletId = @pOutletId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OutletMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_OutletMaster]
	@pOutletId int OUTPUT,
	@pOutletName varchar(50),
	@pFirstEnteredBy int,
	@pHotelId int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pOutletId = 0
	BEGIN
		INSERT INTO OutletMaster
			(
			OutletName,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pOutletName,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pOutletId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE OutletMaster
		SET OutletName = @pOutletName,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE OutletId = @pOutletId
	END
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Outlet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_Outlet]
	@pOutletId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM OutletMaster
	WHERE OutletId = @pOutletId
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Outlet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_Outlet]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	OutletId,
		OutletName
	FROM OutletMaster where HotelId=@pHotelId order by OutletName
END


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
			SizeOfBottle,
			NoOfBottlePerCase,
			FirstEnteredBy
			)
		VALUES
			(
			@pSizeOfBottle,
			@pNoOfBottlePerCase,
			@pFirstEnteredBy
			)
		SET @pCaseId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE BottlePerCase
		SET SizeOfBottle = @pSizeOfBottle,
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
	SELECT	CaseId,SizeOfBottle,NoOfBottlePerCase
	FROM BottlePerCase
	WHERE CaseId = @pCaseId
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_CocktailMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_CocktailMaster]
	@pCocktailId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM CocktailMaster
	WHERE CocktailId = @pCocktailId

	DELETE FROM CocktailDetails
	WHERE CocktailId = @pCocktailId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductTypeMaster_ByFood]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ProductTypeMaster_ByFood]

AS
BEGIN
	SET NOCOUNT ON;
	SELECT	TypeId,TypeName
	FROM ProductTypeMaster
	WHERE TypeId in(1,3,4) 
	order by TypeId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductTypeMaster_ByDrinks]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ProductTypeMaster_ByDrinks]

AS
BEGIN
	SET NOCOUNT ON;
	SELECT	TypeId,TypeName
	FROM ProductTypeMaster
	WHERE TypeId = 2
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_SaleUnitOfMeasureMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_SaleUnitOfMeasureMaster]
	@pSaleUnitOfMeasureId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM SaleUnitOfMeasureMaster
	WHERE SaleUnitOfMeasureId = @pSaleUnitOfMeasureId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaleUnitOfMeasureMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_SaleUnitOfMeasureMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaleUnitOfMeasureId,SaleUnitOfMeasureName
	FROM SaleUnitOfMeasureMaster where HotelId=@pHotelId order by SaleUnitOfMeasureName
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SaleUnitOfMeasureMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_SaleUnitOfMeasureMaster]
	@pSaleUnitOfMeasureId	int OUTPUT,
	@pSaleUnitOfMeasureName int,
	@pFirstEnteredBy		int,
	@pHotelId				int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pSaleUnitOfMeasureId = 0
	BEGIN
		INSERT INTO SaleUnitOfMeasureMaster
			(
			SaleUnitOfMeasureName,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pSaleUnitOfMeasureName,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pSaleUnitOfMeasureId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE SaleUnitOfMeasureMaster
		SET SaleUnitOfMeasureName = @pSaleUnitOfMeasureName,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE SaleUnitOfMeasureId = @pSaleUnitOfMeasureId
	END
END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_SaleUnitOfMeasureMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_SaleUnitOfMeasureMaster]
	@pSaleUnitOfMeasureId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SaleUnitOfMeasureId,SaleUnitOfMeasureName
	FROM SaleUnitOfMeasureMaster
	WHERE SaleUnitOfMeasureId = @pSaleUnitOfMeasureId
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_BarCounterMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_BarCounterMaster]
	@pBarCounterId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BarCounterId,BarCounterName
	FROM BarCounterMaster
	WHERE BarCounterId = @pBarCounterId
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_BarCounterMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_BarCounterMaster]
	@pBarCounterId int OUTPUT,
	@pBarCounterName varchar(50),
	@pFirstEnteredBy int,
	@pHotelId int
AS
BEGIN
	SET NOCOUNT ON;
	IF @pBarCounterId = 0
	BEGIN
		INSERT INTO BarCounterMaster
			(
			BarCounterName,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pBarCounterName,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pBarCounterId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE BarCounterMaster
		SET BarCounterName = @pBarCounterName,
		LastModifiedOn = getdate(),
		LastModifiedBy = @pFirstEnteredBy
		WHERE BarCounterId = @pBarCounterId
	END
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_BarCounterMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Delete_BarCounterMaster]
	@pBarCounterId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM BarCounterMaster
	WHERE BarCounterId = @pBarCounterId
END



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BarCounterMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_BarCounterMaster]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	BarCounterId,
		BarCounterName
	FROM BarCounterMaster where HotelId=@pHotelId order by BarCounterName
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
	@pTypeId		int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CategoryId,CategoryName,TypeId
	FROM ProductCategoryMaster 
	where HotelId=@pHotelId and TypeId=@pTypeId order by CategoryName
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_ProductMaster]
	@pTypeId	int,
	@pHotelId	INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ProductId,ProductName
	FROM ProductMaster 
	where HotelId=@pHotelId and TypeId=@pTypeId 
	order by ProductName
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_ProductMaster]
	@pProductId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ProductId,ProductName,CategoryId,SubCategoryId,UnitId
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_Save_ProductMaster]
	@pProductId			int OUTPUT,
	@pProductName		varchar(50),
	@pCategoryId		int,
	@pSubCategoryId		int,
	@pTypeId			int,
	@pUnitId			int,
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
			TypeId,
			UnitId,
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pProductName,
			@pCategoryId,
			@pSubCategoryId,
			@pTypeId,
			@pUnitId,
			@pFirstEnteredBy,
			@pHotelId
			)
		SET @pProductId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE ProductMaster
		SET ProductName = @pProductName,CategoryId=@pCategoryId,
		SubCategoryId=@pSubCategoryId,TypeId=@pTypeId,UnitId=@pUnitId,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseProductForCocktails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_PurchaseProductForCocktails]
	@pHotelId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	ProductId,ProductName
	FROM ProductMaster
	WHERE TypeId in(2,3)
	ORDER by ProductName
END
' 
END
