USE [offshop_modification]
GO
/****** Object:  Table [dbo].[SaveProductMaster]    Script Date: 09/10/2013 15:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaveProductMaster](
	[SaveProductMasterId] [int] IDENTITY(1,1) NOT NULL,
	[BillNo] [bigint] NULL,
	[BillDate] [datetime] NULL,
	[BillAmt] [decimal](18, 0) NULL,
	[DiscPer] [decimal](18, 2) NULL,
	[DiscAmt] [decimal](18, 0) NULL,
	[LSDiscAmt] [decimal](18, 0) NULL,
	[DiscRemarks] [varchar](100) COLLATE Latin1_General_CI_AI NULL,
	[Complemantry_Remarks] [varchar](100) COLLATE Latin1_General_CI_AI NULL,
	[ReceivableAmt] [decimal](18, 0) NULL,
	[Occupy] [char](1) COLLATE Latin1_General_CI_AI NULL CONSTRAINT [DF_SaveProductMaster_Occupy]  DEFAULT ('N'),
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

GO
SET ANSI_PADDING OFF