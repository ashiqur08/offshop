USE [offshop_requisition]
GO
/****** Object:  Table [dbo].[Offshop_Stock]    Script Date: 09/12/2013 17:52:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Offshop_Stock](
	[Offshop_GodownStockId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeOfBottle] [int] NULL,
	[Qty] [int] NULL,
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PurchaseRate] [int] NULL,
	[MRP] [int] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Status] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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

GO
SET ANSI_PADDING OFF