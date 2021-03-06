/****** Object:  Default [DF_BottlePerCase_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BottlePerCase_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[BottlePerCase]'))
Begin
ALTER TABLE [dbo].[BottlePerCase] DROP CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_EmployeeMaster_LoggedOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_EmployeeMaster_LoggedOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]'))
Begin
ALTER TABLE [dbo].[EmployeeMaster] DROP CONSTRAINT [DF_EmployeeMaster_LoggedOn]

End
GO
/****** Object:  Default [DF_GodownBreakage_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownBreakage_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownBreakage]'))
Begin
ALTER TABLE [dbo].[GodownBreakage] DROP CONSTRAINT [DF_GodownBreakage_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownStock1_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownStock1_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownStock]'))
Begin
ALTER TABLE [dbo].[GodownStock] DROP CONSTRAINT [DF_GodownStock1_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GuestMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GuestMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GuestMaster]'))
Begin
ALTER TABLE [dbo].[GuestMaster] DROP CONSTRAINT [DF_GuestMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_HotelRoomTypeMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_HotelRoomTypeMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[HotelRoomTypeMaster]'))
Begin
ALTER TABLE [dbo].[HotelRoomTypeMaster] DROP CONSTRAINT [DF_HotelRoomTypeMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Add]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Add]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Add]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Phno]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Phno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Phno]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Remarks]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Remarks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]

End
GO
/****** Object:  Default [DF_Offshop_Stock_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Offshop_Stock_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offshop_Stock]'))
Begin
ALTER TABLE [dbo].[Offshop_Stock] DROP CONSTRAINT [DF_Offshop_Stock_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Offshop_Stock_LastModifiedOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Offshop_Stock_LastModifiedOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offshop_Stock]'))
Begin
ALTER TABLE [dbo].[Offshop_Stock] DROP CONSTRAINT [DF_Offshop_Stock_LastModifiedOn]

End
GO
/****** Object:  Default [DF_OffshopBreakage_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_OffshopBreakage_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[OffshopBreakage]'))
Begin
ALTER TABLE [dbo].[OffshopBreakage] DROP CONSTRAINT [DF_OffshopBreakage_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_ProductCategory_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductCategory_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductCategoryMaster] DROP CONSTRAINT [DF_ProductCategory_FirstEnteredOn]

End
GO
/****** Object:  Default [ProductMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductMaster]'))
Begin
ALTER TABLE [dbo].[ProductMaster] DROP CONSTRAINT [ProductMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [ProductSubCategoryMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductSubCategoryMaster] DROP CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [DF__RoleMaste__First__3B75D760]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__RoleMaste__First__3B75D760]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleMaster]'))
Begin
ALTER TABLE [dbo].[RoleMaster] DROP CONSTRAINT [DF__RoleMaste__First__3B75D760]

End
GO
/****** Object:  Default [DF_SaveProductMaster_Occupy]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SaveProductMaster_Occupy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]'))
Begin
ALTER TABLE [dbo].[SaveProductMaster] DROP CONSTRAINT [DF_SaveProductMaster_Occupy]

End
GO
/****** Object:  Default [DF_SystemSetup_VATPer]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_VATPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_VATPer]

End
GO
/****** Object:  Default [DF_SystemSetup_WaiterPresent]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_WaiterPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_WaiterPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_TimePresent]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_TimePresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_TimePresent]

End
GO
/****** Object:  Default [DF_SystemSetup_KotPresent]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_KotPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_KotPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_GuestPresent]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_GuestPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_GuestPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_DiffFoodBill]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_DiffFoodBill]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_DiffFoodBill]

End
GO
/****** Object:  Default [DF__SystemSet__First__06CD04F7]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SystemSet__First__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF__SystemSet__First__06CD04F7]

End
GO
/****** Object:  StoredProcedure [dbo].[usp_Requisition]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Requisition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Requisition]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_OffshopStock_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OffshopStock_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_OffshopStock_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OffshopStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_OffshopStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_OffshopBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_OffshopBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SaveProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_SaveProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_HotelRoomMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_HotelRoomMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_HotelRoomMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_SaveProductDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Update_SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetQty_Offshop]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetQty_Offshop]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetQty_Offshop]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OffshopStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_OffshopStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserId]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetUserId]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LoginName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LoginName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LoginName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_HotelForLogin]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_HotelForLogin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_HotelForLogin]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_HotelRoomTypeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_HotelRoomTypeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_HotelRoomTypeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_HotelRoomTypeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_HotelRoomTypeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetPermission]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetPermission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetPermission]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_PermissionUser]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_PermissionUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_PermissionUser]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_OffshopBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_OffshopBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OffshopBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_OffshopBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_LedgerMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_LedgerMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductSubCategoryName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GuestName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GuestName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GuestName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GuestName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GuestName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GuestName]
GO
/****** Object:  StoredProcedure [dbo].[usp_Ledger_Group]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Ledger_Group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Ledger_Group]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerGroupMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerGroupMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LedgerGroupMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LadgerMaster_ById]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LadgerMaster_ById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LadgerMaster_ById]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Offshop_Stock_DateWise]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Offshop_Stock_DateWise]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_Offshop_Stock_DateWise]
GO
/****** Object:  StoredProcedure [dbo].[usp_Offshop_Stock_Drink]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Offshop_Stock_Drink]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Offshop_Stock_Drink]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_OffshopStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_OffshopStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OffshopStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_OffshopStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Offshop_Stock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Offshop_Stock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_Offshop_Stock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Godown_Stock_Drink]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Godown_Stock_Drink]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Godown_Stock_Drink]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_All_PurchaseDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_get_All_PurchaseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_get_All_PurchaseDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_SystemSetup]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SystemSetup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_SystemSetup]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SystemSetup]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SystemSetup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SystemSetup]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Temp_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Temp_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Temp_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_CreditorsWise_Purchase_Report]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_CreditorsWise_Purchase_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_CreditorsWise_Purchase_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetPurchase_Report]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetPurchase_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetPurchase_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Drinks_Purchase_Report]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_Drinks_Purchase_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_Drinks_Purchase_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_ExiseReport]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ExiseReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ExiseReport]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_CatagoryWise_Sale_Report]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_CatagoryWise_Sale_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_CatagoryWise_Sale_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_DateWiseSaleReport]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DateWiseSaleReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DateWiseSaleReport]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProductDetails_By_Id_Requisition]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetProductDetails_By_Id_Requisition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetProductDetails_By_Id_Requisition]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownLastQty]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownLastQty]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GodownLastQty]
GO
/****** Object:  StoredProcedure [dbo].[usp_BreakageReportOffshop]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_BreakageReportOffshop]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_BreakageReportOffshop]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_OffshopBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_OffshopBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Report_Breakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Report_Breakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Report_Breakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SizeOfBottle]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SizeOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SizeOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllSizeOfBottle]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllSizeOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAllSizeOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetNoOfBottle]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetNoOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetNoOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_PurchaseDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_BreakageReport]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_BreakageReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_BreakageReport]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Code]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductNameBy_Code]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductNameBy_Code]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Barcode]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductNameBy_Barcode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductNameBy_Barcode]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ByName_SaveProductName]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ByName_SaveProductName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ByName_SaveProductName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductRate]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductRate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductRate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownLastQuantity]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownLastQuantity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownLastQuantity]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetGodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetGodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetGodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_PermissionMenuOffshop]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PermissionMenuOffshop]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_PermissionMenuOffshop]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Login]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Login]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_PermissionUserOffshop]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PermissionUserOffshop]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_PermissionUserOffshop]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetBillwise_Sale_Report]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetBillwise_Sale_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetBillwise_Sale_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_SaveProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_SaveProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_OccupiedItem]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_OccupiedItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_OccupiedItem]
GO
/****** Object:  StoredProcedure [dbo].[usp_PrintBill]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PrintBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PrintBill]
GO
/****** Object:  StoredProcedure [dbo].[usp_ReportBillwiseMOP]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ReportBillwiseMOP]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ReportBillwiseMOP]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductMaster_For_Occupy]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductMaster_For_Occupy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Update_SaveProductMaster_For_Occupy]
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductMaster_OnExitDueDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductMaster_OnExitDueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Update_SaveProductMaster_OnExitDueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetBill_Today]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetBill_Today]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetBill_Today]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_MaxBill]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_MaxBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_MaxBill]
GO
/****** Object:  StoredProcedure [dbo].[usp_Getall_SaveProductMaster_By_BillNo]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Getall_SaveProductMaster_By_BillNo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Getall_SaveProductMaster_By_BillNo]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_DueMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_DueMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_DueMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_DueMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_DateWise_Due_Report]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_DateWise_Due_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_DateWise_Due_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_DueMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_DueMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Employee_Master_ById]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Employee_Master_ById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_Employee_Master_ById]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_RoleMaster]
GO
/****** Object:  Table [dbo].[DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DueDetails]') AND type in (N'U'))
DROP TABLE [dbo].[DueDetails]
GO
/****** Object:  Table [dbo].[HotelRoomMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelRoomMaster]') AND type in (N'U'))
DROP TABLE [dbo].[HotelRoomMaster]
GO
/****** Object:  Table [dbo].[SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaveProductDetails]') AND type in (N'U'))
DROP TABLE [dbo].[SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllOffshopStock_By_Date]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllOffshopStock_By_Date]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAllOffshopStock_By_Date]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock_From_Requisition]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownStock_From_Requisition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownStock_From_Requisition]
GO
/****** Object:  Table [dbo].[GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownStock]') AND type in (N'U'))
DROP TABLE [dbo].[GodownStock]
GO
/****** Object:  Table [dbo].[Offshop_Stock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offshop_Stock]') AND type in (N'U'))
DROP TABLE [dbo].[Offshop_Stock]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeMaster]
GO
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelMaster]') AND type in (N'U'))
DROP TABLE [dbo].[HotelMaster]
GO
/****** Object:  Table [dbo].[GuestMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GuestMaster]') AND type in (N'U'))
DROP TABLE [dbo].[GuestMaster]
GO
/****** Object:  Table [dbo].[Ledger_Group_Master]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Group_Master]') AND type in (N'U'))
DROP TABLE [dbo].[Ledger_Group_Master]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Unit]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Unit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Unit]
GO
/****** Object:  Table [dbo].[HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelRoomTypeMaster]') AND type in (N'U'))
DROP TABLE [dbo].[HotelRoomTypeMaster]
GO
/****** Object:  Table [dbo].[PermissionUserOffshop]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionUserOffshop]') AND type in (N'U'))
DROP TABLE [dbo].[PermissionUserOffshop]
GO
/****** Object:  Table [dbo].[PermissionMenuOffshop]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionMenuOffshop]') AND type in (N'U'))
DROP TABLE [dbo].[PermissionMenuOffshop]
GO
/****** Object:  Table [dbo].[OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OffshopBreakage]') AND type in (N'U'))
DROP TABLE [dbo].[OffshopBreakage]
GO
/****** Object:  Table [dbo].[Ledger_Master]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Master]') AND type in (N'U'))
DROP TABLE [dbo].[Ledger_Master]
GO
/****** Object:  Table [dbo].[ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Purchase_Details]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Purchase_Details]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Purchase_Details]
GO
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetup]') AND type in (N'U'))
DROP TABLE [dbo].[SystemSetup]
GO
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetQty]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetQty]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetQty]
GO
/****** Object:  Table [dbo].[GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownBreakage]') AND type in (N'U'))
DROP TABLE [dbo].[GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetRate]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetRate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetRate]
GO
/****** Object:  StoredProcedure [dbo].[sp_BackupDatabase]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_BackupDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_BackupDatabase]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_GodownStock]
GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseDetails]') AND type in (N'U'))
DROP TABLE [dbo].[PurchaseDetails]
GO
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseMaster]') AND type in (N'U'))
DROP TABLE [dbo].[PurchaseMaster]
GO
/****** Object:  Table [dbo].[ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategoryMaster]
GO
/****** Object:  Table [dbo].[exise]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[exise]') AND type in (N'U'))
DROP TABLE [dbo].[exise]
GO
/****** Object:  Table [dbo].[BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BottlePerCase]') AND type in (N'U'))
DROP TABLE [dbo].[BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_BottlePerCase]
GO
/****** Object:  Table [dbo].[GodownLastQty]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownLastQty]') AND type in (N'U'))
DROP TABLE [dbo].[GodownLastQty]
GO
/****** Object:  Table [dbo].[EmployeeHotelMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeHotelMaster]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeHotelMaster]
GO
/****** Object:  Table [dbo].[SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]') AND type in (N'U'))
DROP TABLE [dbo].[SaveProductMaster]
GO
/****** Object:  Table [dbo].[DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DueMaster]') AND type in (N'U'))
DROP TABLE [dbo].[DueMaster]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
DROP TABLE [dbo].[RoleMaster]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF),
 CONSTRAINT [unique_RoleMaster] UNIQUE NONCLUSTERED 
(
	[RoleDescription] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] ON
INSERT [dbo].[RoleMaster] ([RoleId], [RoleDescription], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'Waiter', CAST(0x0000A22400C3DE99 AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
/****** Object:  Table [dbo].[DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
	[Remarks] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_DueMaster] PRIMARY KEY CLUSTERED 
(
	[DueId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[DueMaster] ON
INSERT [dbo].[DueMaster] ([DueId], [GuestId], [SaveProductMasterId], [BillNo], [DueAmount], [DueDate], [Remarks]) VALUES (1, 1, 1, 1, CAST(100 AS Decimal(18, 0)), CAST(0x0000A24000000000 AS DateTime), N'hgh       ')
SET IDENTITY_INSERT [dbo].[DueMaster] OFF
/****** Object:  Table [dbo].[SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
	[DiscRemarks] [varchar](100) COLLATE Latin1_General_CI_AI NULL,
	[Complemantry_Remarks] [varchar](100) COLLATE Latin1_General_CI_AI NULL,
	[ReceivableAmt] [decimal](18, 0) NULL,
	[Occupy] [char](1) COLLATE Latin1_General_CI_AI NULL,
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
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[SaveProductMaster] ON
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 1, CAST(0x0000A24000000000 AS DateTime), CAST(200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(200 AS Decimal(18, 0)), N'N', CAST(100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(100 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A24000D5F5A8 AS DateTime), 0, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 2, CAST(0x0000A24000000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, 3, CAST(0x0000A24000000000 AS DateTime), CAST(200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(200 AS Decimal(18, 0)), N'N', CAST(100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(100 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A24000DB2B81 AS DateTime), 0, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, 4, CAST(0x0000A24100000000 AS DateTime), CAST(200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(200 AS Decimal(18, 0)), N'N', CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A24100F08461 AS DateTime), 0, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, 5, CAST(0x0000A24300000000 AS DateTime), CAST(600 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(600 AS Decimal(18, 0)), N'N', CAST(600 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A24301318BC3 AS DateTime), 0, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, 6, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A2430101D12C AS DateTime), 1, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, 0, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, 7, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A243011770BE AS DateTime), 1, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, 8, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, 9, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (14, 10, CAST(0x0000A24300000000 AS DateTime), CAST(200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(200 AS Decimal(18, 0)), N'N', CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A243011BCA76 AS DateTime), 0, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (15, 11, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (16, 12, CAST(0x0000A24300000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [ExtraChargeOnCard], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (17, 13, CAST(0x0000A24300000000 AS DateTime), CAST(200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'', N'', CAST(200 AS Decimal(18, 0)), N'N', CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), NULL, 1, CAST(0x0000A243013164D5 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[SaveProductMaster] OFF
/****** Object:  Table [dbo].[EmployeeHotelMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeHotelMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeHotelMaster](
	[EmployeeId] [int] NULL,
	[HotelId] [int] NULL
)
END
GO
INSERT [dbo].[EmployeeHotelMaster] ([EmployeeId], [HotelId]) VALUES (1, 1)
INSERT [dbo].[EmployeeHotelMaster] ([EmployeeId], [HotelId]) VALUES (1, 2)
/****** Object:  Table [dbo].[GodownLastQty]    Script Date: 09/26/2013 11:23:01 ******/
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
	[BarCode] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[LastQty] [int] NULL,
	[HotelId] [int] NULL,
	[Rate] [decimal](18, 0) NULL,
 CONSTRAINT [PK_GodownLastQty] PRIMARY KEY CLUSTERED 
(
	[GodownQtyId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[GodownLastQty] ON
INSERT [dbo].[GodownLastQty] ([GodownQtyId], [ProductId], [SizeOfBottle], [BarCode], [LastQty], [HotelId], [Rate]) VALUES (1, 2, NULL, N'1', 38, 1, CAST(200 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[GodownLastQty] OFF
/****** Object:  StoredProcedure [dbo].[usp_Delete_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  Table [dbo].[BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BottlePerCase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BottlePerCase](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[SizeOfBottle] [int] NULL,
	[NoOfBottlePerCase] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
 CONSTRAINT [PK_BottlePerCase] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[BottlePerCase] ON
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (1, N'Bottle', 650, 12, CAST(0x0000A22400C3634B AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (2, N'Bottle', 330, 24, CAST(0x0000A22400C36DF8 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (3, N'Bottle', 500, 24, CAST(0x0000A22400DEAB09 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (4, N'Bottle', 750, 12, CAST(0x0000A22400DEB748 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (5, N'Bottle', 1000, 9, CAST(0x0000A22400DEC50D AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (6, N'Bottle', 2000, 6, CAST(0x0000A22400DED096 AS DateTime), 0, CAST(0x0000A22400DF5E8F AS DateTime), 0)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (7, N'Bottle', 375, 24, CAST(0x0000A22400DF9773 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (8, N'Bottle', 180, 48, CAST(0x0000A22400DFAD92 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (9, N'Bottle', 275, 24, CAST(0x0000A22401381721 AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BottlePerCase] OFF
/****** Object:  Table [dbo].[exise]    Script Date: 09/26/2013 11:23:01 ******/
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
	[Catagory] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubCatagory] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[exise] ON
INSERT [dbo].[exise] ([SlNo], [CatagoryId], [SubCatagoryId], [Catagory], [SubCatagory], [SaleInMnthOfCurrentYear], [SaleInMnthOfPrevYea], [GrowthRate], [SaleUpToMnthOfCurrentYear], [SaleUpToMnthOfPrevYear], [GrowthRate1], [HotelId]) VALUES (1, 3, 1, N'IMFL', N'BEER', 5, NULL, NULL, 5, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[exise] OFF
/****** Object:  Table [dbo].[ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductCategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[TypeId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductCategoryMaster] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (IGNORE_DUP_KEY = OFF),
 CONSTRAINT [unique_ProductCategoryMaster] UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC,
	[HotelId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[ProductCategoryMaster] ON
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'OS', 2, CAST(0x0000A22400C3488C AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, N'OSBI', 2, CAST(0x0000A22400DE244D AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, N'IMFL', 2, CAST(0x0000A22400DE2AF0 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'LAB', 2, CAST(0x0000A22400DE2EA6 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, N'50 UP', 2, CAST(0x0000A233010F96C2 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, N'OS', 2, CAST(0x0000A23E00CBE26E AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, N'OSBI', 2, CAST(0x0000A23E00CC10DE AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, N'IMFL', 2, CAST(0x0000A23E012AEDA2 AS DateTime), 1, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[ProductCategoryMaster] OFF
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
	[InvoiceNo] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[InvoiceDate] [datetime] NULL,
	[ExcisePassNo] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
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
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
	[BatchNo] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[BarCode] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
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
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BackupDatabase]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetRate]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  Table [dbo].[GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetQty]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductMaster](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[ProductCode] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[CaseId] [int] NULL,
	[Rate] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductMaster] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[ProductMaster] ON
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'KINGFISHER(650)', NULL, 3, 1, 1, 0, CAST(0x0000A22400C3A45F AS DateTime), 0, CAST(0x0000A22400E110EC AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, N'KINGFISHER(330)', NULL, 3, 1, 2, 0, CAST(0x0000A22400C3B700 AS DateTime), 0, CAST(0x0000A22400E10989 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, N'J.W.BLACK LABEL(750)', NULL, 1, 3, 4, 0, CAST(0x0000A22400E0E49C AS DateTime), 0, CAST(0x0000A22400E0F6B5 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'J.W.RED LABEL(750)', NULL, 1, 3, 4, 0, CAST(0x0000A22400E12A1D AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, N'CHIVAS REGAL(750)', NULL, 1, 3, 4, 0, CAST(0x0000A22400E139D1 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, N'JACK DANIELS', NULL, 1, 3, 4, 0, CAST(0x0000A22400E17BEC AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, N'TEACHERS (750)', NULL, 2, 3, 4, 0, CAST(0x0000A22400E1A69C AS DateTime), 0, CAST(0x0000A22400E2B531 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, N'TEACHERS (1000)', NULL, 2, 3, 5, 0, CAST(0x0000A22400E1E08B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, N'TEACHERS (375)', NULL, 2, 3, 7, 0, CAST(0x0000A22400E1FB66 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, N'TEACHERS(180)', NULL, 2, 3, 8, 0, CAST(0x0000A22400E213FC AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (11, N'BLACK DOG (1000)', NULL, 2, 3, 5, 0, CAST(0x0000A22400E2343C AS DateTime), 0, CAST(0x0000A22400E24DB8 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (12, N'BLACK DOG (750)', NULL, 2, 3, 4, 0, CAST(0x0000A22400E2D879 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (13, N'BLACK DOG (375)', NULL, 2, 3, 7, 0, CAST(0x0000A22400E2F743 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (14, N'BLACK DOG (180)', NULL, 2, 3, 8, 0, CAST(0x0000A22400E3103C AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (15, N'100 PIPERS (180)', NULL, 2, 3, 8, 0, CAST(0x0000A22400E333EF AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (16, N'100 PIPERS (375)', NULL, 2, 3, 7, 0, CAST(0x0000A22400E35F51 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (17, N'100 PIPERS (750)', NULL, 2, 3, 4, 0, CAST(0x0000A22400E389FC AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (18, N'100 PIPERS (1000)', NULL, 2, 3, 5, 0, CAST(0x0000A22400E3B23E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (19, N'VAT 69 (1000)', NULL, 2, 3, 5, 0, CAST(0x0000A22400E3CE6E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (20, N'VAT 69 (750)', NULL, 2, 3, 4, 0, CAST(0x0000A22400E3F3BA AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (21, N'VAT 69 (375)', NULL, 2, 3, 7, 0, CAST(0x0000A22400E410D4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (22, N'VAT 69 (180)', NULL, 2, 3, 8, 0, CAST(0x0000A22400E4287C AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (23, N'ANTIQUTY BLUE (180)', NULL, 3, 3, 8, 0, CAST(0x0000A22400E50300 AS DateTime), 0, CAST(0x0000A22400E5D870 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (24, N'ANTIQUTY BLUE (375)', NULL, 3, 3, 7, 0, CAST(0x0000A22400E525CF AS DateTime), 0, CAST(0x0000A22400E5F0B2 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (25, N'ANTIQUTY BLUE (750)', NULL, 3, 3, 4, 0, CAST(0x0000A22400E54F74 AS DateTime), 0, CAST(0x0000A22400E61CF9 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (26, N'ANTIQUTY BLUE (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A22400E56C02 AS DateTime), 0, CAST(0x0000A22400E5C263 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (27, N'ANTIQUTY BLUE (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A22400E5AB5B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (28, N'BLENDERS PRIED (750)', NULL, 3, 3, 4, 0, CAST(0x0000A22400E6DF69 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (29, N'BLENDERS PRIED (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A22400E71F99 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (30, N'BLENDERS PRIED (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A22400E7364E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (31, N'BLENDERS PRIED (375)', NULL, 3, 3, 7, 0, CAST(0x0000A22400E7557E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (32, N'BLENDERS PRIED (180)', NULL, 3, 3, 8, 0, CAST(0x0000A22400E79284 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (33, N'SIGNATURE PRE (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A22400E7D95B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (34, N'SIGNATURE PRE (375)', NULL, 3, 3, 7, 0, CAST(0x0000A22400E7F83B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (35, N'SIGNATURE PRE (180)', NULL, 3, 3, 8, 0, CAST(0x0000A22400E815CF AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (36, N'ROYAL CHALLANGE (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A22400E85872 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (37, N'ROYAL CHALLANGE (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A22400E87214 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (38, N'ROYAL CHALLANGE (750)', NULL, 3, 3, 4, 0, CAST(0x0000A22400E88840 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (39, N'ROYAL CHALLANGE (375)', NULL, 3, 3, 7, 0, CAST(0x0000A22400E89FE3 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (40, N'ROYAL CHALLANGE (180)', NULL, 3, 3, 8, 0, CAST(0x0000A22400E8B2C1 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (41, N'SIGNATURE REAR (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A22400E90896 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (42, N'SIGNATURE REAR (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A22400E94202 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (43, N'SIGNATURE REAR (750)', NULL, 3, 3, 4, 0, CAST(0x0000A22400E974CF AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (44, N'MCD NO1 PLATINUM (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A224012D099E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (45, N'MCD NO1 PLATINUM (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224012D41F2 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (46, N'MCD NO1 PLATINUM (750)', NULL, 3, 3, 4, 0, CAST(0x0000A224012D56C4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (47, N'MCD NO1 PLATINUM (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224012D72FE AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (48, N'MCD NO1 PLATINUM (180)', NULL, 3, 3, 8, 0, CAST(0x0000A224012D8901 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (49, N'MCD NO1 DIETMET (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224012DC41B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (50, N'MCD NO1 DIETMET (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224012DDB6A AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (51, N'MCD NO1 DIETMET (180)', NULL, 3, 3, 8, 0, CAST(0x0000A224012DFC0C AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (52, N'MCD NO1 WHISKY (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A224012E1C42 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (53, N'MCD NO1 WHISKY (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224012E506A AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (54, N'MCD NO1 WHISKY (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224012E60CC AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (55, N'MCD NO1 WHISKY (180)', NULL, 3, 3, 8, 0, CAST(0x0000A224012E70FE AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (56, N'ROYAL STAG (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A224012E9F43 AS DateTime), 0, CAST(0x0000A224012EC574 AS DateTime), 1001, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (57, N'ROYAL STAG (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224012EDC65 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (58, N'ROYAL STAG (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224012EEDCD AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (59, N'ROYAL STAG (180)', NULL, 3, 3, 8, 0, CAST(0x0000A224012F046A AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (60, N'IMPERIAL BLUE (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A224012F23C9 AS DateTime), 0, CAST(0x0000A224012F5181 AS DateTime), 1001, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (61, N'IMPERIAL BLUE (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224012F64A1 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (62, N'IMPERIAL BLUE (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224012F7455 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (63, N'IMPERIAL BLUE (180)', NULL, 3, 3, 8, 0, CAST(0x0000A224012F8685 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (64, N'D.S.P BLACK (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A224012FAF9A AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (65, N'D.S.P BLACK (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224012FC03C AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (66, N'D.S.P BLACK (500)', NULL, 3, 3, 3, 0, CAST(0x0000A224012FCFB9 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (67, N'D.S.P BLACK (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224012FDFD4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (68, N'D.S.P BLACK (180)', NULL, 3, 3, 8, 0, CAST(0x0000A224012FF480 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (69, N'OFICER CHOCE WHISKY (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A22401304FC8 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (70, N'OFICER CHOCE WHISKY (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A22401306DE4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (71, N'OFICER CHOCE WHISKY (500)', NULL, 3, 3, 3, 0, CAST(0x0000A22401308590 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (72, N'OFICER CHOCE WHISKY (375)', NULL, 3, 3, 7, 0, CAST(0x0000A2240130971D AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (73, N'OFICER CHOCE WHISKY (180)', NULL, 3, 3, 8, 0, CAST(0x0000A2240130A5D0 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (74, N'OFICER CHOCE BLUE (2000)', NULL, 3, 3, 6, 0, CAST(0x0000A2240130D9AD AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (75, N'OFICER CHOCE BLUE (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A2240130F2A1 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (76, N'OFICER CHOCE BLUE (375)', NULL, 3, 3, 7, 0, CAST(0x0000A224013104A8 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (77, N'OFICER CHOCE BLUE (180)', NULL, 3, 3, 8, 0, CAST(0x0000A2240131135F AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (78, N'BLENDERS PRIED (R / C ) (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A224013155A4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (79, N'BLENDERS PRIED (R / C ) (375)', NULL, 3, 3, 7, 0, CAST(0x0000A22401316991 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (80, N'ROYAL STAG (B/S) (1000)', NULL, 3, 3, 5, 0, CAST(0x0000A2240131AA08 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (81, N'KING POWER (375)', NULL, 3, 3, 7, 0, CAST(0x0000A2240131E514 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (82, N'KING POWER (180)', NULL, 3, 3, 8, 0, CAST(0x0000A2240131F6E2 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (83, N'BLUE LAGON (750)', NULL, 3, 6, 4, 0, CAST(0x0000A2240132261F AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (84, N'BLUE LAGON (375)', NULL, 3, 6, 7, 0, CAST(0x0000A224013243D9 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (85, N'BLUE LAGON (180)', NULL, 3, 6, 8, 0, CAST(0x0000A22401325650 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (86, N'BLUE RIBAND TANGO (375)', NULL, 3, 6, 7, 0, CAST(0x0000A22401327E18 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (87, N'BLUE RIBAND TANGO (180)', NULL, 3, 6, 8, 0, CAST(0x0000A2240132957E AS DateTime), 0, CAST(0x0000A2240132C501 AS DateTime), 1001, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (88, N'BACARDI (1000)', NULL, 3, 4, 5, 0, CAST(0x0000A2240132F02B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (89, N'BACARDI (375)', NULL, 3, 4, 7, 0, CAST(0x0000A224013309AB AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (90, N'BACARDI (180)', NULL, 3, 4, 8, 0, CAST(0x0000A224013317AC AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (91, N'MCD CELEBRATION (2000)', NULL, 3, 4, 6, 0, CAST(0x0000A22401333A3E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (92, N'MCD CELEBRATION (1000)', NULL, 3, 4, 5, 0, CAST(0x0000A22401336E04 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (93, N'MCD CELEBRATION (500)', NULL, 3, 4, 3, 0, CAST(0x0000A22401338001 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (94, N'MCD CELEBRATION (375)', NULL, 3, 4, 7, 0, CAST(0x0000A22401338DF9 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (95, N'MCD CELEBRATION (180)', NULL, 3, 4, 8, 0, CAST(0x0000A22401339BC6 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (96, N'OLD MONK (1000)', NULL, 3, 4, 5, 0, CAST(0x0000A2240133C5A3 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (97, N'OLD MONK (500)', NULL, 3, 4, 3, 0, CAST(0x0000A2240133D5FB AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (98, N'OLD MONK (375)', NULL, 3, 4, 7, 0, CAST(0x0000A2240133E38C AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (99, N'OLD MONK (180)', NULL, 3, 4, 8, 0, CAST(0x0000A2240133F191 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (100, N'OLD MONK GOLD RESERV (750)', NULL, 3, 4, 4, 0, CAST(0x0000A22401341A80 AS DateTime), 0, NULL, NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (101, N'OLD MONK GOLD RESERV (375)', NULL, 3, 4, 7, 0, CAST(0x0000A22401342A01 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (102, N'OLD MONK GOLD RESERV (180)', NULL, 3, 4, 8, 0, CAST(0x0000A22401343937 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (103, N'JOLLY ROGER (375)', NULL, 3, 4, 7, 0, CAST(0x0000A2240134630A AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (104, N'JOLLY ROGER (180)', NULL, 3, 4, 8, 0, CAST(0x0000A22401347119 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (105, N'SMIRNOFF (1000)', NULL, 3, 5, 5, 0, CAST(0x0000A22401349B38 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (106, N'SMIRNOFF (375)', NULL, 3, 5, 7, 0, CAST(0x0000A2240134C771 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (107, N'SMIRNOFF (180)', NULL, 3, 5, 8, 0, CAST(0x0000A2240134EC3E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (108, N'MAGIC MOMENT (1000)', NULL, 3, 5, 5, 0, CAST(0x0000A2240135045B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (109, N'MAGIC MOMENT (375)', NULL, 3, 5, 7, 0, CAST(0x0000A22401352025 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (110, N'MAGIC MOMENT (180)', NULL, 3, 5, 8, 0, CAST(0x0000A22401352D2D AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (111, N'WHITE MISCHIEF (1000)', NULL, 3, 5, 5, 0, CAST(0x0000A22401354B81 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (112, N'WHITE MISCHIEF (375)', NULL, 3, 5, 7, 0, CAST(0x0000A224013559DB AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (113, N'WHITE MISCHIEF (180)', NULL, 3, 5, 8, 0, CAST(0x0000A22401356E63 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (114, N'MAGIC MOMENT ORANGE (1000)', NULL, 3, 5, 5, 0, CAST(0x0000A2240135C4D7 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (115, N'MAGIC MOMENT ORANGE (750)', NULL, 3, 5, 4, 0, CAST(0x0000A2240135D689 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (116, N'MAGIC MOMENT ORANGE (375)', NULL, 3, 5, 7, 0, CAST(0x0000A2240135E46E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (117, N'MAGIC MOMENT ORANGE (180)', NULL, 3, 5, 8, 0, CAST(0x0000A2240135F7C0 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (118, N'TUBORG (STORNG) 650', NULL, 3, 5, 1, 0, CAST(0x0000A2240136435D AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (119, N'TUBORG (STORNG) 500', NULL, 3, 5, 3, 0, CAST(0x0000A2240136544B AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (120, N'THUNDER BOLT 500', NULL, 3, 5, 3, 0, CAST(0x0000A2240136713B AS DateTime), 0, CAST(0x0000A2240136D5C8 AS DateTime), 1001, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (121, N'THUNDER BOLT 650', NULL, 3, 5, 1, 0, CAST(0x0000A22401367F3C AS DateTime), 0, CAST(0x0000A2240136EA79 AS DateTime), 1001, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (122, N'BUDWISER (ST) 650', NULL, 3, 5, 1, 0, CAST(0x0000A2240136B04E AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (123, N'BUDWISER (ST) 500', NULL, 3, 5, 3, 0, CAST(0x0000A2240137023D AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (124, N'BUDWISER (PRE) 500', NULL, 3, 5, 3, 0, CAST(0x0000A22401371642 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (125, N'BUDWISER (PRE) 650', NULL, 3, 5, 1, 0, CAST(0x0000A224013729B1 AS DateTime), 0, CAST(0x0000A224013744E9 AS DateTime), 1001, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (126, N'TENNES CAN 500', NULL, 3, 5, 3, 0, CAST(0x0000A22401375F95 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (127, N'CARLESBERG 650', NULL, 3, 5, 1, 0, CAST(0x0000A224013776C4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (128, N'CARLESBERG  ELEPHANT 650', NULL, 3, 5, 1, 0, CAST(0x0000A224013793FF AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (129, N'CARLESBERG  ELEPHANT 500', NULL, 3, 1, 3, 0, CAST(0x0000A2240137A4CC AS DateTime), 0, CAST(0x0000A224013842E4 AS DateTime), 0, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (130, N'BACARDI BREEZER (275)', NULL, 4, 8, 9, 0, CAST(0x0000A233010E1706 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (131, N'BACARDI BREEZER (330)', NULL, 4, 8, 2, 0, CAST(0x0000A233010E2950 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (132, N'King Fisher(330)', NULL, 10, 10, 2, 0, CAST(0x0000A23E0131010A AS DateTime), 1, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[ProductMaster] OFF
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemSetup](
	[SystemSetupId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyNamePresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[OutletNamePresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[WBSTPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[WBSTPer] [decimal](10, 3) NULL,
	[VATPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[VATPer] [decimal](10, 3) NULL,
	[STaxPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[STaxPer] [decimal](10, 3) NULL,
	[Note] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[WaiterPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[TimePresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[SearchField] [varchar](20) COLLATE Latin1_General_CI_AI NULL,
	[KotPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[GuestPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[BillCopy] [int] NULL,
	[PrinterType] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[PrinterPort] [varchar](5) COLLATE Latin1_General_CI_AI NULL,
	[DiffFoodBill] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[BillNoPresent] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[BillFormat] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[AccFromDt] [datetime] NULL,
	[AccToDt] [datetime] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_SystemSetup] PRIMARY KEY CLUSTERED 
(
	[SystemSetupId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Purchase_Details]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  Table [dbo].[ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSubCategoryMaster](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[TypeId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_ProductSubCategoryMaster] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (IGNORE_DUP_KEY = OFF),
 CONSTRAINT [unique_ProductSubCategoryMaster] UNIQUE NONCLUSTERED 
(
	[SubCategoryName] ASC,
	[HotelId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[ProductSubCategoryMaster] ON
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'BEER', 2, CAST(0x0000A22400C35415 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, N'WHISKY', 2, CAST(0x0000A22400DE5615 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'RUM', 2, CAST(0x0000A22400DE5BD2 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, N'VODKA', 2, CAST(0x0000A22400DE61E4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, N'GIN', 2, CAST(0x0000A22400DE675C AS DateTime), 0, CAST(0x0000A22400DE6FE5 AS DateTime), 0, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, N'BRANDY', 2, CAST(0x0000A22400DE77DE AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, N'LAB', 2, CAST(0x0000A22400DE8C1A AS DateTime), 0, CAST(0x0000A233010DAFEF AS DateTime), 0, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, N'Wine', 2, CAST(0x0000A23500F406F4 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, N'Beer', 2, CAST(0x0000A23E0130DC41 AS DateTime), 1, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[ProductSubCategoryMaster] OFF
/****** Object:  Table [dbo].[Ledger_Master]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ledger_Master](
	[Ledger_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ledger_Group_id] [int] NULL,
	[Ledger_Nm] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Ledger_Op_Bal] [money] NULL,
	[Creditor_Add] [varchar](200) COLLATE Latin1_General_CI_AI NOT NULL,
	[Creditor_Add2] [varchar](200) COLLATE Latin1_General_CI_AI NULL,
	[Creditor_Phno] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Creditor_Remarks] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_Ledger_Master] PRIMARY KEY CLUSTERED 
(
	[Ledger_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Ledger_Master] ON
INSERT [dbo].[Ledger_Master] ([Ledger_Id], [Ledger_Group_id], [Ledger_Nm], [Ledger_Op_Bal], [Creditor_Add], [Creditor_Add2], [Creditor_Phno], [Creditor_Remarks], [HotelId]) VALUES (1, 11, N'aaa', 2000.0000, N'aa', N'aa', N'11', N'', NULL)
SET IDENTITY_INSERT [dbo].[Ledger_Master] OFF
/****** Object:  Table [dbo].[OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL
)
END
GO
/****** Object:  Table [dbo].[PermissionMenuOffshop]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionMenuOffshop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PermissionMenuOffshop](
	[MenuId] [int] NULL,
	[MenuName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MenuText] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (1, N'ProductCategoryMaster.aspx', N'Product Category Master')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (2, N'ProductSubCategoryMaster.aspx', N'Product Sub Category Master')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (3, N'NoOfBottlePerCase.aspx', N'No Of Bottle Per Case')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (4, N'ProductMaster.aspx', N'Product Master')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (5, N'RollMaster.aspx', N'Roll Master')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (6, N'EmployeeMaster.aspx', N'Employee Master')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (7, N'Ledger.aspx', N'Ledger')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (8, N'GodownOpeningStock.aspx', N'Godown Opening Stock Entry')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (9, N'DrinksPurchase.aspx', N'Drinks Purchase Entry')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (11, N'Requition.aspx', N'Requition Entry')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (12, N'Breakage.aspx', N'Breakage Entry')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (13, N'OffshopOpeningStock.aspx', N'Offshop Opening Stock')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (14, N'BreakageOffshop.aspx', N'Breakage Offshop')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (15, N'SaleBill.aspx', N'Bill Entry')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (16, N'DueReceived.aspx', N'Due Receive Entry')
INSERT [dbo].[PermissionMenuOffshop] ([MenuId], [MenuName], [MenuText]) VALUES (28, N'UserPermision.aspx', N'User Permission')
/****** Object:  Table [dbo].[PermissionUserOffshop]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionUserOffshop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PermissionUserOffshop](
	[EmployeeId] [int] NULL,
	[HotelId] [int] NULL,
	[MenuId] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Visibility] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'1         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'2         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'3         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'4         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'5         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'6         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'7         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'8         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'9         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'11        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'12        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'13        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'14        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'15        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'16        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 1, N'28        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'1         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'2         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'3         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'4         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'5         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'6         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'7         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'8         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'9         ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'11        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'12        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'13        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'14        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'15        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'16        ', N'Y')
INSERT [dbo].[PermissionUserOffshop] ([EmployeeId], [HotelId], [MenuId], [Visibility]) VALUES (1, 2, N'28        ', N'Y')
/****** Object:  Table [dbo].[HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelRoomTypeMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelRoomTypeMaster](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstEnteredOn] [datetime] NOT NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_HotelRoomTypeMaster] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Unit]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  Table [dbo].[Ledger_Group_Master]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Group_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ledger_Group_Master](
	[Ledger_Group_Id] [int] NULL,
	[Ledger_Group_Nm] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Ledger_Group_Type] [char](2) COLLATE Latin1_General_CI_AI NULL
)
END
GO
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (1, N'Cash', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (2, N'Bank Account', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (3, N'Bank OD', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (4, N'Sales Account', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (5, N'Purchases Account', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (6, N'Indirect Expenses', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (7, N'Indirect Income', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (8, N'Direct Income', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (9, N'Direct Expenses', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (10, N'Capital Account', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (11, N'Sundry Creditors', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (12, N'Sundry Debtors', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (13, N'Fixed Assets', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (14, N'Current Liabilities', N'Cr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (15, N'Current Assets', N'Dr')
INSERT [dbo].[Ledger_Group_Master] ([Ledger_Group_Id], [Ledger_Group_Nm], [Ledger_Group_Type]) VALUES (16, N'Accrued Interest', N'Dr')
/****** Object:  Table [dbo].[GuestMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GuestMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GuestMaster](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[GuestName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Address] [varchar](100) COLLATE Latin1_General_CI_AI NULL,
	[PhoneNo] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_GuestMaster] PRIMARY KEY CLUSTERED 
(
	[GuestId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[GuestMaster] ON
INSERT [dbo].[GuestMaster] ([GuestId], [GuestName], [Address], [PhoneNo], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'jjj', N'ty', N'76', CAST(0x0000A24000D600E1 AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[GuestMaster] OFF
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelMaster](
	[HotelId] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_HotelMaster] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[HotelMaster] ON
INSERT [dbo].[HotelMaster] ([HotelId], [HotelName]) VALUES (1, N'California')
INSERT [dbo].[HotelMaster] ([HotelId], [HotelName]) VALUES (2, N'O2')
SET IDENTITY_INSERT [dbo].[HotelMaster] OFF
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeMaster](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[LastName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[LoginName] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Address1] [varchar](200) COLLATE Latin1_General_CI_AI NULL,
	[Address2] [varchar](200) COLLATE Latin1_General_CI_AI NULL,
	[Phone] [varchar](30) COLLATE Latin1_General_CI_AI NULL,
	[PIN] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[City] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[State] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Country] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[RoleId] [int] NULL,
	[Type] [char](1) COLLATE Latin1_General_CI_AI NULL,
	[Password] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[HotelId] [int] NULL,
	[LoggedOn] [varchar](1) COLLATE Latin1_General_CI_AI NOT NULL,
 CONSTRAINT [PK_EmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[EmployeeMaster] ON
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [FirstName], [LastName], [LoginName], [Address1], [Address2], [Phone], [PIN], [City], [State], [Country], [RoleId], [Type], [Password], [HotelId], [LoggedOn]) VALUES (1, N'admin', N'admin', N'admin', N'', N'', N'', N'0', N'', N'', N'', 0, N'S', N'admin', NULL, N'N')
SET IDENTITY_INSERT [dbo].[EmployeeMaster] OFF
/****** Object:  Table [dbo].[Offshop_Stock]    Script Date: 09/26/2013 11:23:01 ******/
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
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PurchaseRate] [int] NULL,
	[MRP] [int] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Status] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MainId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_Offshop_Stock] PRIMARY KEY CLUSTERED 
(
	[Offshop_GodownStockId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Offshop_Stock] ON
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 2, 330, 50, N'1', 0, 200, CAST(0 AS Decimal(18, 0)), N'R', 0, CAST(0x0000A24000D5E053 AS DateTime), 1, CAST(0x0000A24000D5E053 AS DateTime), 0, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 1, CAST(0x0000A24000D5F5A8 AS DateTime), 0, CAST(0x0000A24000D5F5A8 AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 3, CAST(0x0000A24000DB2B81 AS DateTime), 0, CAST(0x0000A24000DB2B81 AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 4, CAST(0x0000A24100F08474 AS DateTime), 0, CAST(0x0000A24100F08474 AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 6, CAST(0x0000A2430101CF2D AS DateTime), 1, CAST(0x0000A2430101CF2D AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 6, CAST(0x0000A2430101D12C AS DateTime), 1, CAST(0x0000A2430101D12C AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 6, CAST(0x0000A2430101D12C AS DateTime), 1, CAST(0x0000A2430101D12C AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 8, CAST(0x0000A243011770BE AS DateTime), 1, CAST(0x0000A243011770BE AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (15, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 14, CAST(0x0000A243011BCA76 AS DateTime), 0, CAST(0x0000A243011BCA76 AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (19, 2, NULL, 1, N'1', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'S', 17, CAST(0x0000A243013164D5 AS DateTime), 0, CAST(0x0000A243013164D5 AS DateTime), NULL, 1)
INSERT [dbo].[Offshop_Stock] ([Offshop_GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (21, 2, NULL, 3, N'1', NULL, NULL, CAST(600 AS Decimal(18, 0)), N'S', 5, CAST(0x0000A24301318BC3 AS DateTime), 0, CAST(0x0000A24301318BC3 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Offshop_Stock] OFF
/****** Object:  Table [dbo].[GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PurchaseRate] [int] NULL,
	[MRP] [int] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Status] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MainId] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_GodownStock1] PRIMARY KEY CLUSTERED 
(
	[GodownStockId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[GodownStock] ON
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 2, 330, 100, N'1', 100, 200, CAST(20000 AS Decimal(18, 0)), N'O', NULL, CAST(0x0000A24000D5D10D AS DateTime), 1, NULL, NULL, 1)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 2, 330, 50, N'1', 0, 200, CAST(0 AS Decimal(18, 0)), N'R', 1, CAST(0x0000A24000D5E05C AS DateTime), 1, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[GodownStock] OFF
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock_From_Requisition]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAllOffshopStock_By_Date]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  Table [dbo].[SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
	[BarCode] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
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
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[SaveProductDetails] ON
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 1, 1, CAST(0x0000A24000000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 1, CAST(200 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 2, 2, CAST(0x0000A24000000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 1, CAST(200 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, 3, 3, CAST(0x0000A24000000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 1, CAST(200 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, 4, 4, CAST(0x0000A24100000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 1, CAST(200 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, 7, 0, CAST(0x0000A24300000000 AS DateTime), 0, N'', CAST(0 AS Decimal(18, 0)), 0, CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (23, 14, 10, CAST(0x0000A24300000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 1, CAST(200 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (28, 17, 17, CAST(0x0000A24300000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 1, CAST(200 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (29, 5, 5, CAST(0x0000A24300000000 AS DateTime), 2, N'1', CAST(200 AS Decimal(18, 0)), 3, CAST(600 AS Decimal(18, 0)), NULL, 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[SaveProductDetails] OFF
/****** Object:  Table [dbo].[HotelRoomMaster]    Script Date: 09/26/2013 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelRoomMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelRoomMaster](
	[RoomId] [int] NULL,
	[RoomTypeId] [int] NULL,
	[RoomNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RoomDescription] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pax] [int] NULL,
	[RoomQuality] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_RoleMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Employee_Master_ById]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_DateWise_Due_Report]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Getall_SaveProductMaster_By_BillNo]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_MaxBill]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetBill_Today]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductMaster_OnExitDueDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductMaster_For_Occupy]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_ReportBillwiseMOP]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_PrintBill]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_OccupiedItem]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetBillwise_Sale_Report]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_PermissionUserOffshop]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_EmployeeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_PermissionMenuOffshop]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetGodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownLastQuantity]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductRate]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ByName_SaveProductName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Barcode]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Code]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_BreakageReport]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_BottlePerCase]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetNoOfBottle]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAllSizeOfBottle]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SizeOfBottle]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Report_Breakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_BreakageReportOffshop]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownLastQty]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetProductDetails_By_Id_Requisition]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_DateWiseSaleReport]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_CatagoryWise_Sale_Report]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_ExiseReport]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_Drinks_Purchase_Report]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetPurchase_Report]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_CreditorsWise_Purchase_Report]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_Temp_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_PurchaseMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SystemSetup]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_SystemSetup]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_get_All_PurchaseDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Godown_Stock_Drink]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Offshop_Stock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Offshop_Stock_Drink]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Offshop_Stock_DateWise]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LadgerMaster_ById]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerGroupMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ledger_Group]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GuestName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GuestName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductSubCategoryMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_LedgerMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_LedgerMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_PermissionUser]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetPermission]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_HotelRoomTypeMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_HotelForLogin]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LoginName]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetUserId]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetQty_Offshop]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_SaveProductDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_HotelRoomMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_DueDetails]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_SaveProductMaster]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_OffshopBreakage]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_OffshopStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_OffshopStock_GodownStock]    Script Date: 09/26/2013 11:23:01 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Requisition]    Script Date: 09/26/2013 11:23:01 ******/
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
GO
/****** Object:  Default [DF_BottlePerCase_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BottlePerCase_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[BottlePerCase]'))
Begin
ALTER TABLE [dbo].[BottlePerCase] ADD  CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_EmployeeMaster_LoggedOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_EmployeeMaster_LoggedOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]'))
Begin
ALTER TABLE [dbo].[EmployeeMaster] ADD  CONSTRAINT [DF_EmployeeMaster_LoggedOn]  DEFAULT ('N') FOR [LoggedOn]

End
GO
/****** Object:  Default [DF_GodownBreakage_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownBreakage_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownBreakage]'))
Begin
ALTER TABLE [dbo].[GodownBreakage] ADD  CONSTRAINT [DF_GodownBreakage_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownStock1_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownStock1_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownStock]'))
Begin
ALTER TABLE [dbo].[GodownStock] ADD  CONSTRAINT [DF_GodownStock1_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GuestMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GuestMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GuestMaster]'))
Begin
ALTER TABLE [dbo].[GuestMaster] ADD  CONSTRAINT [DF_GuestMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_HotelRoomTypeMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_HotelRoomTypeMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[HotelRoomTypeMaster]'))
Begin
ALTER TABLE [dbo].[HotelRoomTypeMaster] ADD  CONSTRAINT [DF_HotelRoomTypeMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Add]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Add]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Add]  DEFAULT ('') FOR [Creditor_Add]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Phno]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Phno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Phno]  DEFAULT ('') FOR [Creditor_Phno]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Remarks]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Remarks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]  DEFAULT ('') FOR [Creditor_Remarks]

End
GO
/****** Object:  Default [DF_Offshop_Stock_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Offshop_Stock_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offshop_Stock]'))
Begin
ALTER TABLE [dbo].[Offshop_Stock] ADD  CONSTRAINT [DF_Offshop_Stock_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Offshop_Stock_LastModifiedOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Offshop_Stock_LastModifiedOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offshop_Stock]'))
Begin
ALTER TABLE [dbo].[Offshop_Stock] ADD  CONSTRAINT [DF_Offshop_Stock_LastModifiedOn]  DEFAULT (getdate()) FOR [LastModifiedOn]

End
GO
/****** Object:  Default [DF_OffshopBreakage_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_OffshopBreakage_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[OffshopBreakage]'))
Begin
ALTER TABLE [dbo].[OffshopBreakage] ADD  CONSTRAINT [DF_OffshopBreakage_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_ProductCategory_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductCategory_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductCategoryMaster] ADD  CONSTRAINT [DF_ProductCategory_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [ProductMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductMaster]'))
Begin
ALTER TABLE [dbo].[ProductMaster] ADD  CONSTRAINT [ProductMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [ProductSubCategoryMaster_FirstEnteredOn]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductSubCategoryMaster] ADD  CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF__RoleMaste__First__3B75D760]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__RoleMaste__First__3B75D760]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleMaster]'))
Begin
ALTER TABLE [dbo].[RoleMaster] ADD  CONSTRAINT [DF__RoleMaste__First__3B75D760]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_SaveProductMaster_Occupy]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SaveProductMaster_Occupy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]'))
Begin
ALTER TABLE [dbo].[SaveProductMaster] ADD  CONSTRAINT [DF_SaveProductMaster_Occupy]  DEFAULT ('N') FOR [Occupy]

End
GO
/****** Object:  Default [DF_SystemSetup_VATPer]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_VATPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_VATPer]  DEFAULT ((0)) FOR [VATPer]

End
GO
/****** Object:  Default [DF_SystemSetup_WaiterPresent]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_WaiterPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_WaiterPresent]  DEFAULT ('N') FOR [WaiterPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_TimePresent]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_TimePresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_TimePresent]  DEFAULT ('N') FOR [TimePresent]

End
GO
/****** Object:  Default [DF_SystemSetup_KotPresent]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_KotPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_KotPresent]  DEFAULT ('N') FOR [KotPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_GuestPresent]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_GuestPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_GuestPresent]  DEFAULT ('N') FOR [GuestPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_DiffFoodBill]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_DiffFoodBill]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_DiffFoodBill]  DEFAULT ('N') FOR [DiffFoodBill]

End
GO
/****** Object:  Default [DF__SystemSet__First__06CD04F7]    Script Date: 09/26/2013 11:23:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SystemSet__First__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF__SystemSet__First__06CD04F7]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
