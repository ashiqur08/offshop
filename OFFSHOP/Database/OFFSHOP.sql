/****** Object:  Default [DF_BottlePerCase_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BottlePerCase_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[BottlePerCase]'))
Begin
ALTER TABLE [dbo].[BottlePerCase] DROP CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownStock1_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownStock1_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownStock]'))
Begin
ALTER TABLE [dbo].[GodownStock] DROP CONSTRAINT [DF_GodownStock1_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Add]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Add]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Add]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Phno]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Phno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Phno]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Remarks]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Remarks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]

End
GO
/****** Object:  Default [DF_ProductCategory_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductCategory_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductCategoryMaster] DROP CONSTRAINT [DF_ProductCategory_FirstEnteredOn]

End
GO
/****** Object:  Default [ProductMaster_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductMaster]'))
Begin
ALTER TABLE [dbo].[ProductMaster] DROP CONSTRAINT [ProductMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [ProductSubCategoryMaster_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductSubCategoryMaster] DROP CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [DF__RoleMaste__First__267ABA7A]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__RoleMaste__First__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleMaster]'))
Begin
ALTER TABLE [dbo].[RoleMaster] DROP CONSTRAINT [DF__RoleMaste__First__267ABA7A]

End
GO
/****** Object:  Default [DF_SystemSetup_VATPer]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_VATPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_VATPer]

End
GO
/****** Object:  Default [DF_SystemSetup_WaiterPresent]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_WaiterPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_WaiterPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_TimePresent]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_TimePresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_TimePresent]

End
GO
/****** Object:  Default [DF_SystemSetup_KotPresent]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_KotPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_KotPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_GuestPresent]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_GuestPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_GuestPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_DiffFoodBill]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_DiffFoodBill]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_DiffFoodBill]

End
GO
/****** Object:  Default [DF__SystemSet__First__06CD04F7]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SystemSet__First__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF__SystemSet__First__06CD04F7]

End
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerGroupMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerGroupMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LedgerGroupMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Ledger_Group]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Ledger_Group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Ledger_Group]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllSizeOfBottle]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllSizeOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAllSizeOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SizeOfBottle]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SizeOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SizeOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_SystemSetup]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SystemSetup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_SystemSetup]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SystemSetup]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SystemSetup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SystemSetup]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_All_PurchaseDetails]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_get_All_PurchaseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_get_All_PurchaseDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LadgerMaster_ById]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LadgerMaster_ById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LadgerMaster_ById]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_LedgerMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Employee_Master_ById]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Employee_Master_ById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_Employee_Master_ById]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_EmployeeMaster]
GO
/****** Object:  Table [dbo].[BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BottlePerCase]') AND type in (N'U'))
DROP TABLE [dbo].[BottlePerCase]
GO
/****** Object:  Table [dbo].[ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_LedgerMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_LedgerMaster]
GO
/****** Object:  Table [dbo].[Ledger_Group_Master]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Group_Master]') AND type in (N'U'))
DROP TABLE [dbo].[Ledger_Group_Master]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Unit]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Unit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Unit]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_BottlePerCase]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
DROP TABLE [dbo].[RoleMaster]
GO
/****** Object:  Table [dbo].[GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownStock]') AND type in (N'U'))
DROP TABLE [dbo].[GodownStock]
GO
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetup]') AND type in (N'U'))
DROP TABLE [dbo].[SystemSetup]
GO
/****** Object:  Table [dbo].[ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategoryMaster]
GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseDetails]') AND type in (N'U'))
DROP TABLE [dbo].[PurchaseDetails]
GO
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseMaster]') AND type in (N'U'))
DROP TABLE [dbo].[PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GodownStock]
GO
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductMaster]
GO
/****** Object:  Table [dbo].[Ledger_Master]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Master]') AND type in (N'U'))
DROP TABLE [dbo].[Ledger_Master]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_EmployeeMaster]
GO
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 07/08/2013 11:09:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelMaster]') AND type in (N'U'))
DROP TABLE [dbo].[HotelMaster]
GO
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HotelMaster](
	[HotelId] [int] NULL,
	[HotelName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_EmployeeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Delete_EmployeeMaster]
@EmployeeId int
as
	begin
		delete from EmployeeMaster where EmployeeId = @EmployeeId
	end' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeMaster](
	[EmployeeId] [int] IDENTITY(1001,1) NOT NULL,
	[FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RoleId] [int] NULL,
	[Address1] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PIN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HotelId] [int] NULL,
	[LoggedOn] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[Ledger_Master]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ledger_Master](
	[Ledger_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ledger_Group_id] [int] NULL,
	[Ledger_Nm] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Ledger_Op_Bal] [money] NULL,
	[Creditor_Add] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Creditor_Add2] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Creditor_Phno] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Creditor_Remarks] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Ledger_Master] PRIMARY KEY CLUSTERED 
(
	[Ledger_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Ledger_Master] ON
INSERT [dbo].[Ledger_Master] ([Ledger_Id], [Ledger_Group_id], [Ledger_Nm], [Ledger_Op_Bal], [Creditor_Add], [Creditor_Add2], [Creditor_Phno], [Creditor_Remarks]) VALUES (2, 1, N'bbb', 33.0000, N'kol', N'kol', N'1234567890', N'')
SET IDENTITY_INSERT [dbo].[Ledger_Master] OFF
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductMaster](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
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
	SELECT	GodownStockId,ProductId,SizeOfBottle,Qty,BarCode,PurchaseRate,MRP,TotalAmount
	FROM GodownStock
	WHERE GodownStockId = @pGodownStockId
END
' 
END
GO
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PurchaseMaster](
	[PurchaseId] [int] NULL,
	[PurchaseDate] [datetime] NULL,
	[LedgerId] [int] NULL,
	[InvoiceNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InvoiceDate] [datetime] NULL,
	[ExcisePassNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[HotelId] [int] NULL
)
END
GO
INSERT [dbo].[PurchaseMaster] ([PurchaseId], [PurchaseDate], [LedgerId], [InvoiceNo], [InvoiceDate], [ExcisePassNo], [TotalBottle], [TotalMRP], [TotalGross], [TotalDiscount], [STaxOnTotalMRPPer], [STaxOnTotalMRPAmt], [SpecialDiscount], [TCS], [EduCessPer], [EduCessAmt], [NetAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, NULL, 1, N'1', NULL, N'1', 1, CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(1.00 AS Decimal(18, 2)), CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(1.00 AS Decimal(18, 2)), CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), NULL, 0, NULL, 0, 0)
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PurchaseDetails](
	[PurchaseId] [int] NULL,
	[ProductId] [int] NULL,
	[BatchNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PurchaseCase] [int] NULL,
	[PurchaseBottle] [int] NULL,
	[RebateCase] [int] NULL,
	[RebateBottle] [int] NULL,
	[MRPBottle] [int] NULL,
	[RateCase] [int] NULL,
	[DiscCase] [int] NULL,
	[TotalBottle] [int] NULL,
	[TotalMRP] [int] NULL,
	[TotalDiscount] [int] NULL,
	[TotalAmount] [int] NULL,
	[FirstEnteredOn] [datetime] NULL,
	[FirstEnteredBy] [int] NULL,
	[LastModifiedOn] [int] NULL,
	[LastModifiedBy] [int] NULL,
	[HotelId] [int] NULL
)
END
GO
INSERT [dbo].[PurchaseDetails] ([PurchaseId], [ProductId], [BatchNo], [BarCode], [PurchaseCase], [PurchaseBottle], [RebateCase], [RebateBottle], [MRPBottle], [RateCase], [DiscCase], [TotalBottle], [TotalMRP], [TotalDiscount], [TotalAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 1, N'1', N'101', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, 0, 0)
INSERT [dbo].[PurchaseDetails] ([PurchaseId], [ProductId], [BatchNo], [BarCode], [PurchaseCase], [PurchaseBottle], [RebateCase], [RebateBottle], [MRPBottle], [RateCase], [DiscCase], [TotalBottle], [TotalMRP], [TotalDiscount], [TotalAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, NULL, N'2', N'2', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, NULL, 0, NULL, 0, 0)
INSERT [dbo].[PurchaseDetails] ([PurchaseId], [ProductId], [BatchNo], [BarCode], [PurchaseCase], [PurchaseBottle], [RebateCase], [RebateBottle], [MRPBottle], [RateCase], [DiscCase], [TotalBottle], [TotalMRP], [TotalDiscount], [TotalAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, 3, N'3', N'3', 3, 3, 3, 3, 3, 33, 3, 3, 3, 3, 3, NULL, 0, NULL, 0, 0)
INSERT [dbo].[PurchaseDetails] ([PurchaseId], [ProductId], [BatchNo], [BarCode], [PurchaseCase], [PurchaseBottle], [RebateCase], [RebateBottle], [MRPBottle], [RateCase], [DiscCase], [TotalBottle], [TotalMRP], [TotalDiscount], [TotalAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, 4, N'4', N'4', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, NULL, 0, NULL, 0, 0)
/****** Object:  Table [dbo].[ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductCategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, N'os', 2, CAST(0x0000A1F300CEF23B AS DateTime), 0, CAST(0x0000A1F300CF9846 AS DateTime), 0, 0)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'Indian', 2, CAST(0x0000A1F300CFA075 AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductCategoryMaster] OFF
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemSetup](
	[SystemSetupId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyNamePresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutletNamePresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WBSTPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WBSTPer] [decimal](10, 3) NULL,
	[VATPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VATPer] [decimal](10, 3) NULL,
	[STaxPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STaxPer] [decimal](10, 3) NULL,
	[Note] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WaiterPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TimePresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SearchField] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[KotPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GuestPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillCopy] [int] NULL,
	[PrinterType] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrinterPort] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DiffFoodBill] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillNoPresent] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillFormat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
/****** Object:  Table [dbo].[GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[RoleMaster] ([RoleId], [RoleDescription], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'Manager', CAST(0x0000A1F30115D55C AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_Unit]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  Table [dbo].[Ledger_Group_Master]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Group_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ledger_Group_Master](
	[Ledger_Group_Id] [int] NULL,
	[Ledger_Group_Nm] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ledger_Group_Type] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_LedgerMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  Table [dbo].[ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductSubCategoryMaster](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'Whisky', 2, CAST(0x0000A1F300D0AF2E AS DateTime), 0, CAST(0x0000A1F300D1196F AS DateTime), 0, 0)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, N'Beer', 2, CAST(0x0000A1F300D0D8B0 AS DateTime), 0, CAST(0x0000A1F300D1CAAE AS DateTime), 0, 0)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'Rum', 2, CAST(0x0000A1F300D1BE0C AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductSubCategoryMaster] OFF
/****** Object:  Table [dbo].[BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BottlePerCase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BottlePerCase](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (1, N'Bottle', 750, 10, CAST(0x0000A1F300F4F40E AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (2, N'Cane', 750, 20, CAST(0x0000A1F300F4FFA5 AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BottlePerCase] OFF
/****** Object:  StoredProcedure [dbo].[usp_Save_EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_EmployeeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Save_EmployeeMaster]
	@pEmployeeId int OUTPUT,
	@pFirstName varchar(50),
	@pLastName varchar(50),
	@pRoleId int,
	@pAddress1 varchar(50),
	@pAddress2 varchar(50),
	@pPhone varchar(50),
	@pPIN varchar(6),
	@pCity varchar(50),
	@pState varchar(50),
	@pCountry varchar(50),
	@pHotelId int,
	@pLoggedOn varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	IF @pEmployeeId = 0
	BEGIN
		INSERT INTO EmployeeMaster
			(
			
			FirstName,
			LastName,
			RoleId,
			Address1,
			Address2,
			Phone,
			PIN,
			City,
			State,
			Country,
			HotelId,
			LoggedOn
			
			)
		VALUES
			(
			@pFirstName,
			@pLastName,
			@pRoleId,
			@pAddress1,
			@pAddress2,
			@pPhone,
			@pPIN,
			@pCity,
			@pState,
			@pCountry,
			@pHotelId,
			@pLoggedOn
			)
		SET @pEmployeeId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE EmployeeMaster
		SET FirstName = @pFirstName,
		LastName = @pLastName,
		RoleId = @pRoleId,
		Address1 = @pAddress1,
		Address2 = @pAddress2,
		Phone = @pPhone,
		PIN = @pPIN,
		City = @pCity,
		State = @pState,
		Country = @pCountry,
		HotelId = @pHotelId,
		LoggedOn = @pLoggedOn
		WHERE EmployeeId = @pEmployeeId
	END
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Employee_Master_ById]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Employee_Master_ById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_Employee_Master_ById]
@pEmployeeId int,
--@pRoleId int,
@pHotelId int
as 
begin
	select Emp.RoleId,Emp.FirstName,Emp.LastName,Rl.RoleDescription,Emp.Address1,Emp.Address2,Emp.Phone,Emp.PIN,Emp.City,Emp.State,Emp.Country,
	Emp.LoggedOn from EmployeeMaster Emp,RoleMaster Rl where Emp.RoleId = Rl.RoleId and Emp.EmployeeId=@pEmployeeId and Emp.HotelId = @pHotelId
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_EmployeeMaster]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_EmployeeMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_GetAll_EmployeeMaster]
@pHotelId int
as
begin
	select Emp.EmployeeId,Emp.FirstName,Emp.LastName,Rl.RoleDescription from EmployeeMaster Emp,RoleMaster Rl 
	where Emp.RoleId = Rl.RoleId and Emp.HotelId = @pHotelId order by Emp.FirstName
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_LedgerMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
	@pCreditor_Remarks varchar(50)
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
			Creditor_Remarks
			)
		VALUES
			(
			
			@pLedger_Nm,
			@pLedger_Group_id,
			@pLedger_Op_Bal,
			@pCreditor_Add,
			@pCreditor_Add2,
			@pCreditor_Phno,
			@pCreditor_Remarks
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LadgerMaster_ById]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE  [dbo].[usp_GetAll_GodownStock]
	@pHotelId	int

AS
BEGIN
	SET NOCOUNT ON;
	SELECT GodownStockId,ProductName,SizeOfBottle,BarCode,Qty
	FROM GodownStock, ProductMaster
	where GodownStock.HotelId=@pHotelId and ProductMaster.HotelId=@pHotelId
	and GodownStock.Status=''O''
	order by ProductName,SizeOfBottle
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
	SELECT	ProductId,ProductName,CategoryId,SubCategoryId,CaseId,Rate
	FROM ProductMaster
	WHERE ProductId = @pProductId
END






' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_get_All_PurchaseDetails]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SystemSetup]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_SystemSetup]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock]    Script Date: 07/08/2013 11:09:50 ******/
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
	END
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_RoleMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SizeOfBottle]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAllSizeOfBottle]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_BottlePerCase]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ledger_Group]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerGroupMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductSubCategoryMaster]    Script Date: 07/08/2013 11:09:50 ******/
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
/****** Object:  Default [DF_BottlePerCase_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BottlePerCase_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[BottlePerCase]'))
Begin
ALTER TABLE [dbo].[BottlePerCase] ADD  CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownStock1_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownStock1_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownStock]'))
Begin
ALTER TABLE [dbo].[GodownStock] ADD  CONSTRAINT [DF_GodownStock1_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Add]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Add]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Add]  DEFAULT ('') FOR [Creditor_Add]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Phno]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Phno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Phno]  DEFAULT ('') FOR [Creditor_Phno]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Remarks]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Remarks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]  DEFAULT ('') FOR [Creditor_Remarks]

End
GO
/****** Object:  Default [DF_ProductCategory_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductCategory_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductCategoryMaster] ADD  CONSTRAINT [DF_ProductCategory_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [ProductMaster_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductMaster]'))
Begin
ALTER TABLE [dbo].[ProductMaster] ADD  CONSTRAINT [ProductMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [ProductSubCategoryMaster_FirstEnteredOn]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductSubCategoryMaster] ADD  CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF__RoleMaste__First__267ABA7A]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__RoleMaste__First__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleMaster]'))
Begin
ALTER TABLE [dbo].[RoleMaster] ADD  CONSTRAINT [DF__RoleMaste__First__267ABA7A]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_SystemSetup_VATPer]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_VATPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_VATPer]  DEFAULT ((0)) FOR [VATPer]

End
GO
/****** Object:  Default [DF_SystemSetup_WaiterPresent]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_WaiterPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_WaiterPresent]  DEFAULT ('N') FOR [WaiterPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_TimePresent]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_TimePresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_TimePresent]  DEFAULT ('N') FOR [TimePresent]

End
GO
/****** Object:  Default [DF_SystemSetup_KotPresent]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_KotPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_KotPresent]  DEFAULT ('N') FOR [KotPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_GuestPresent]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_GuestPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_GuestPresent]  DEFAULT ('N') FOR [GuestPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_DiffFoodBill]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_DiffFoodBill]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_DiffFoodBill]  DEFAULT ('N') FOR [DiffFoodBill]

End
GO
/****** Object:  Default [DF__SystemSet__First__06CD04F7]    Script Date: 07/08/2013 11:09:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SystemSet__First__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF__SystemSet__First__06CD04F7]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
