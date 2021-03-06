/****** Object:  Default [DF_BottlePerCase_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BottlePerCase_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[BottlePerCase]'))
Begin
ALTER TABLE [dbo].[BottlePerCase] DROP CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownBreakage_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownBreakage_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownBreakage]'))
Begin
ALTER TABLE [dbo].[GodownBreakage] DROP CONSTRAINT [DF_GodownBreakage_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownStock1_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownStock1_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownStock]'))
Begin
ALTER TABLE [dbo].[GodownStock] DROP CONSTRAINT [DF_GodownStock1_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GuestMaster_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GuestMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GuestMaster]'))
Begin
ALTER TABLE [dbo].[GuestMaster] DROP CONSTRAINT [DF_GuestMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Add]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Add]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Add]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Phno]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Phno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Phno]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Remarks]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Remarks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] DROP CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]

End
GO
/****** Object:  Default [DF_ProductCategory_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductCategory_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductCategoryMaster] DROP CONSTRAINT [DF_ProductCategory_FirstEnteredOn]

End
GO
/****** Object:  Default [ProductMaster_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductMaster]'))
Begin
ALTER TABLE [dbo].[ProductMaster] DROP CONSTRAINT [ProductMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [ProductSubCategoryMaster_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductSubCategoryMaster] DROP CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]

End
GO
/****** Object:  Default [DF__RoleMaste__First__267ABA7A]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__RoleMaste__First__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleMaster]'))
Begin
ALTER TABLE [dbo].[RoleMaster] DROP CONSTRAINT [DF__RoleMaste__First__267ABA7A]

End
GO
/****** Object:  Default [DF_SaveProductMaster_Occupy]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SaveProductMaster_Occupy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]'))
Begin
ALTER TABLE [dbo].[SaveProductMaster] DROP CONSTRAINT [DF_SaveProductMaster_Occupy]

End
GO
/****** Object:  Default [DF_SystemSetup_VATPer]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_VATPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_VATPer]

End
GO
/****** Object:  Default [DF_SystemSetup_WaiterPresent]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_WaiterPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_WaiterPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_TimePresent]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_TimePresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_TimePresent]

End
GO
/****** Object:  Default [DF_SystemSetup_KotPresent]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_KotPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_KotPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_GuestPresent]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_GuestPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_GuestPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_DiffFoodBill]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_DiffFoodBill]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF_SystemSetup_DiffFoodBill]

End
GO
/****** Object:  Default [DF__SystemSet__First__06CD04F7]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SystemSet__First__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] DROP CONSTRAINT [DF__SystemSet__First__06CD04F7]

End
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SaveProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_SaveProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryName]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductSubCategoryName]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductSubCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Ledger_Group]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Ledger_Group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Ledger_Group]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerGroupMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerGroupMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LedgerGroupMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductRate]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductRate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductRate]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ByName_SaveProductName]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ByName_SaveProductName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ByName_SaveProductName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Code]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductNameBy_Code]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductNameBy_Code]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Barcode]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductNameBy_Barcode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductNameBy_Barcode]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductName]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductName]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_SaveProductDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Update_SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SaveProductDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SaveProductDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_SaveProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_SaveProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetPurchase_Report]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetPurchase_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetPurchase_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Drinks_Purchase_Report]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_Drinks_Purchase_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_Drinks_Purchase_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Temp_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Temp_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Temp_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllSizeOfBottle]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAllSizeOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAllSizeOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetNoOfBottle]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetNoOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetNoOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SizeOfBottle]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SizeOfBottle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SizeOfBottle]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_PurchaseDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_DateWiseSaleReport]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DateWiseSaleReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DateWiseSaleReport]
GO
/****** Object:  StoredProcedure [dbo].[usp_Report_Breakage]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Report_Breakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Report_Breakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductMaster_For_Occupy]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Update_SaveProductMaster_For_Occupy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Update_SaveProductMaster_For_Occupy]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownBreakage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownLastQuantity]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownLastQuantity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_GodownLastQuantity]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GodownStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_RoleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_SystemSetup]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_SystemSetup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_SystemSetup]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SystemSetup]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_SystemSetup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_SystemSetup]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductCategoryMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_PurchaseMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_PurchaseMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LadgerMaster_ById]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_LadgerMaster_ById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_LadgerMaster_ById]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_CreditorsWise_Purchase_Report]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_CreditorsWise_Purchase_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_CreditorsWise_Purchase_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_LedgerMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_LedgerMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Employee_Master_ById]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_Employee_Master_ById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_Employee_Master_ById]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GuestName]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_GuestName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_GuestName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GuestName]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_GuestName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_GuestName]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_DueDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_DueDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_DateWise_Due_Report]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Get_DateWise_Due_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Get_DateWise_Due_Report]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_DueMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_DueMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_DueMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ById_DueMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_DueMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_DueMaster]
GO
/****** Object:  Table [dbo].[ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSubCategoryMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_LedgerMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_LedgerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_LedgerMaster]
GO
/****** Object:  Table [dbo].[Ledger_Group_Master]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Group_Master]') AND type in (N'U'))
DROP TABLE [dbo].[Ledger_Group_Master]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Unit]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Unit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Unit]
GO
/****** Object:  Table [dbo].[GodownLastQty]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownLastQty]') AND type in (N'U'))
DROP TABLE [dbo].[GodownLastQty]
GO
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductMaster]
GO
/****** Object:  Table [dbo].[SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaveProductDetails]') AND type in (N'U'))
DROP TABLE [dbo].[SaveProductDetails]
GO
/****** Object:  Table [dbo].[GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownBreakage]') AND type in (N'U'))
DROP TABLE [dbo].[GodownBreakage]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductName]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_ProductName]
GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseDetails]') AND type in (N'U'))
DROP TABLE [dbo].[PurchaseDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Purchase_Details]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_Purchase_Details]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_Purchase_Details]
GO
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseMaster]') AND type in (N'U'))
DROP TABLE [dbo].[PurchaseMaster]
GO
/****** Object:  Table [dbo].[BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BottlePerCase]') AND type in (N'U'))
DROP TABLE [dbo].[BottlePerCase]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_All_PurchaseDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_get_All_PurchaseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_get_All_PurchaseDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_BottlePerCase]
GO
/****** Object:  Table [dbo].[SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]') AND type in (N'U'))
DROP TABLE [dbo].[SaveProductMaster]
GO
/****** Object:  Table [dbo].[GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GodownStock]') AND type in (N'U'))
DROP TABLE [dbo].[GodownStock]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BottlePerCase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_BottlePerCase]
GO
/****** Object:  Table [dbo].[DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DueMaster]') AND type in (N'U'))
DROP TABLE [dbo].[DueMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Save_ProductMaster]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMaster]') AND type in (N'U'))
DROP TABLE [dbo].[RoleMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]
GO
/****** Object:  Table [dbo].[DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DueDetails]') AND type in (N'U'))
DROP TABLE [dbo].[DueDetails]
GO
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetup]') AND type in (N'U'))
DROP TABLE [dbo].[SystemSetup]
GO
/****** Object:  Table [dbo].[ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategoryMaster]
GO
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HotelMaster]') AND type in (N'U'))
DROP TABLE [dbo].[HotelMaster]
GO
/****** Object:  Table [dbo].[GuestMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GuestMaster]') AND type in (N'U'))
DROP TABLE [dbo].[GuestMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_MaxBill]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_MaxBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetAll_MaxBill]
GO
/****** Object:  Table [dbo].[Ledger_Master]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ledger_Master]') AND type in (N'U'))
DROP TABLE [dbo].[Ledger_Master]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeMaster]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_ProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_ProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Delete_EmployeeMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Delete_EmployeeMaster]
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
SET IDENTITY_INSERT [dbo].[EmployeeMaster] ON
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [FirstName], [LastName], [RoleId], [Address1], [Address2], [Phone], [PIN], [City], [State], [Country], [HotelId], [LoggedOn]) VALUES (1001, N'Rajdip', N'Mukherjee', 3, N'kolfghtgh', N'fghtgh', N'75675656', N'545454', N'ind', N'wb', N'japan', 0, N'Y')
SET IDENTITY_INSERT [dbo].[EmployeeMaster] OFF
/****** Object:  Table [dbo].[Ledger_Master]    Script Date: 07/30/2013 15:57:58 ******/
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
	[HotelId] [int] NULL,
 CONSTRAINT [PK_Ledger_Master] PRIMARY KEY CLUSTERED 
(
	[Ledger_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Ledger_Master] ON
INSERT [dbo].[Ledger_Master] ([Ledger_Id], [Ledger_Group_id], [Ledger_Nm], [Ledger_Op_Bal], [Creditor_Add], [Creditor_Add2], [Creditor_Phno], [Creditor_Remarks], [HotelId]) VALUES (2, 1, N'bbb', 33.0000, N'kol', N'kol', N'1234567890', N'', 0)
INSERT [dbo].[Ledger_Master] ([Ledger_Id], [Ledger_Group_id], [Ledger_Nm], [Ledger_Op_Bal], [Creditor_Add], [Creditor_Add2], [Creditor_Phno], [Creditor_Remarks], [HotelId]) VALUES (3, 2, N'ccc', 78.0000, N'kol', N'kol', N'8787', N'', 0)
SET IDENTITY_INSERT [dbo].[Ledger_Master] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetAll_MaxBill]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[GuestMaster]    Script Date: 07/30/2013 15:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GuestMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GuestMaster](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[GuestName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhoneNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[GuestMaster] ([GuestId], [GuestName], [Address], [PhoneNo], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, N'Abc', N'kol', N'67687787', CAST(0x0000A20400C9E4AF AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[GuestMaster] ([GuestId], [GuestName], [Address], [PhoneNo], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, N'Xyz', N'kol', N'87878', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[GuestMaster] ([GuestId], [GuestName], [Address], [PhoneNo], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, N'kkk', N'kol', N'989898989', CAST(0x0000A20400CA1161 AS DateTime), NULL, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[GuestMaster] OFF
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, N'IMFL', 2, CAST(0x0000A1FC00FB170B AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, N'OS', 2, CAST(0x0000A20500FD6515 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[ProductCategoryMaster] ([CategoryId], [CategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, N'OSBI', 2, CAST(0x0000A20500FDD630 AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductCategoryMaster] OFF
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BillNo_ById_SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
INSERT [dbo].[RoleMaster] ([RoleId], [RoleDescription], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (23, N'Admin', CAST(0x0000A20A00D987FE AS DateTime), 0, CAST(0x0000A20A010E1CEF AS DateTime), 0, 0)
INSERT [dbo].[RoleMaster] ([RoleId], [RoleDescription], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (74, N'Waiter', CAST(0x0000A20B00C91413 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[RoleMaster] ([RoleId], [RoleDescription], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (75, N'ppp', CAST(0x0000A20B00CA9FA7 AS DateTime), 0, CAST(0x0000A20B00CE9BC5 AS DateTime), 0, 0)
INSERT [dbo].[RoleMaster] ([RoleId], [RoleDescription], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (76, N'xyz', CAST(0x0000A20B00CC6665 AS DateTime), 0, CAST(0x0000A20B00CC9891 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
	[Remarks] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DueMaster] PRIMARY KEY CLUSTERED 
(
	[DueId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[DueMaster] ON
INSERT [dbo].[DueMaster] ([DueId], [GuestId], [SaveProductMasterId], [BillNo], [DueAmount], [DueDate], [Remarks]) VALUES (1, 1, 1, 1, CAST(5000 AS Decimal(18, 0)), CAST(0x0000A20400000000 AS DateTime), NULL)
INSERT [dbo].[DueMaster] ([DueId], [GuestId], [SaveProductMasterId], [BillNo], [DueAmount], [DueDate], [Remarks]) VALUES (2, 2, 2, 2, CAST(10000 AS Decimal(18, 0)), CAST(0x0000A20400000000 AS DateTime), NULL)
INSERT [dbo].[DueMaster] ([DueId], [GuestId], [SaveProductMasterId], [BillNo], [DueAmount], [DueDate], [Remarks]) VALUES (3, 3, 3, 3, CAST(15000 AS Decimal(18, 0)), CAST(0x0000A20400000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[DueMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetAll_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
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
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 4, 850, 50, N'1111', NULL, NULL, NULL, N'P', 1, CAST(0x0000A20701014327 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 5, 850, 20, N'222', NULL, NULL, NULL, N'P', 1, CAST(0x0000A20701014331 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, 4, NULL, 10, N'1111', NULL, NULL, CAST(11000 AS Decimal(18, 0)), N'S', 1, CAST(0x0000A2070101CC7C AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, 5, NULL, 5, N'222', NULL, NULL, CAST(6000 AS Decimal(18, 0)), N'S', 1, CAST(0x0000A2070101CC7C AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, 4, NULL, 1, N'1111', NULL, NULL, CAST(1100 AS Decimal(18, 0)), N'S', 2, CAST(0x0000A2070101E965 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, 4, NULL, 1, N'1111', NULL, NULL, CAST(1100 AS Decimal(18, 0)), N'S', 2, CAST(0x0000A2070101E965 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, 4, NULL, 1, N'1111', NULL, NULL, CAST(1100 AS Decimal(18, 0)), N'S', 2, CAST(0x0000A2070101F904 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, 5, NULL, 1, N'1111', NULL, NULL, CAST(1200 AS Decimal(18, 0)), N'S', 2, CAST(0x0000A2070101F904 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (13, 5, NULL, 5, N'', NULL, NULL, CAST(6000 AS Decimal(18, 0)), N'S', 3, CAST(0x0000A20701024822 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (14, 4, NULL, 5, N'', NULL, NULL, CAST(5500 AS Decimal(18, 0)), N'S', 3, CAST(0x0000A20701024822 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (15, 5, NULL, 1, N'', NULL, NULL, CAST(1200 AS Decimal(18, 0)), N'S', 4, CAST(0x0000A20701026A3A AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (16, 4, NULL, 1, N'', NULL, NULL, CAST(1100 AS Decimal(18, 0)), N'S', 4, CAST(0x0000A20701026A3A AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (17, 4, NULL, 2, N'1111', NULL, NULL, CAST(2200 AS Decimal(18, 0)), N'S', 6, CAST(0x0000A20701049F2A AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (18, 5, NULL, 2, N'', NULL, NULL, CAST(2400 AS Decimal(18, 0)), N'S', 7, CAST(0x0000A2070104BBC3 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (19, 4, NULL, 2, N'', NULL, NULL, CAST(2200 AS Decimal(18, 0)), N'S', 8, CAST(0x0000A2070104D058 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (20, 4, NULL, 2, N'', NULL, NULL, CAST(2200 AS Decimal(18, 0)), N'S', 9, CAST(0x0000A20800C22D0C AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (21, 4, NULL, 5, N'', NULL, NULL, CAST(5500 AS Decimal(18, 0)), N'S', 10, CAST(0x0000A20800C25607 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (22, 5, NULL, 2, N'', NULL, NULL, CAST(2400 AS Decimal(18, 0)), N'S', 14, CAST(0x0000A20B00FCE411 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (23, 4, NULL, 1, N'', NULL, NULL, CAST(1100 AS Decimal(18, 0)), N'S', 14, CAST(0x0000A20B00FCE432 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (24, 5, NULL, 2, N'', NULL, NULL, CAST(2400 AS Decimal(18, 0)), N'S', 16, CAST(0x0000A20B00FF2D2E AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[GodownStock] ([GodownStockId], [ProductId], [SizeOfBottle], [Qty], [BarCode], [PurchaseRate], [MRP], [TotalAmount], [Status], [MainId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (25, 4, NULL, 1, N'', NULL, NULL, CAST(1100 AS Decimal(18, 0)), N'S', 16, CAST(0x0000A20B00FF2D2E AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[GodownStock] OFF
/****** Object:  Table [dbo].[SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
	[DiscRemarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Complemantry_Remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReceivableAmt] [decimal](18, 0) NULL,
	[Occupy] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cash] [decimal](18, 0) NULL,
	[Card] [decimal](18, 0) NULL,
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
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 1, CAST(0x0000A20700000000 AS DateTime), CAST(17000 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(17000 AS Decimal(18, 0)), N'N', CAST(17000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A2070101CC7C AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 2, CAST(0x0000A20700000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(17000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A2070101F904 AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, 3, CAST(0x0000A20700000000 AS DateTime), CAST(11500 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(11500 AS Decimal(18, 0)), N'N', CAST(11500 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20701024822 AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, 4, CAST(0x0000A20700000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(11500 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20701026A3A AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, 5, CAST(0x0000A20700000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, 6, CAST(0x0000A20700000000 AS DateTime), CAST(2200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(2200 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20701049F2A AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, 7, CAST(0x0000A20700000000 AS DateTime), CAST(2400 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(2400 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A2070104BBC3 AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, 8, CAST(0x0000A20700000000 AS DateTime), CAST(2200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(2200 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A2070104D058 AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, 9, CAST(0x0000A20800000000 AS DateTime), CAST(2200 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(2200 AS Decimal(18, 0)), N'N', CAST(2200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20800C22CFE AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, 10, CAST(0x0000A20800000000 AS DateTime), CAST(5500 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(5500 AS Decimal(18, 0)), N'N', CAST(5500 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20800C25607 AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (11, 0, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Friend', N'txtComplemantry_Remarks', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (12, 11, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (13, 12, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (14, 13, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20B00FCE3E2 AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (15, 14, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (16, 15, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20B00FF2D2E AS DateTime), 0, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (17, 16, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductMaster] ([SaveProductMasterId], [BillNo], [BillDate], [BillAmt], [DiscPer], [DiscAmt], [LSDiscAmt], [DiscRemarks], [Complemantry_Remarks], [ReceivableAmt], [Occupy], [Cash], [Card], [Due], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (18, 17, CAST(0x0000A20B00000000 AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Special', N'', CAST(0 AS Decimal(18, 0)), N'N', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[SaveProductMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_Delete_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_get_All_PurchaseDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
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
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (2, N'Cane', 650, 12, CAST(0x0000A1F300F4FFA5 AS DateTime), 0, CAST(0x0000A2030139287F AS DateTime), 0)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (3, N'Bottle', 850, 10, CAST(0x0000A1FC00FAF5A1 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (6, N'Bottle', 200, 11, CAST(0x0000A20500F970F8 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (7, N'Bottle', 900, 12, CAST(0x0000A20500F9854B AS DateTime), 0, NULL, NULL)
INSERT [dbo].[BottlePerCase] ([CaseId], [Type], [SizeOfBottle], [NoOfBottlePerCase], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy]) VALUES (8, N'Bottle', 650, 10, CAST(0x0000A20A00C9C409 AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BottlePerCase] OFF
/****** Object:  Table [dbo].[PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
	[HotelId] [int] NULL,
 CONSTRAINT [PK_PurchaseMaster] PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[PurchaseMaster] ON
INSERT [dbo].[PurchaseMaster] ([PurchaseId], [PurchaseDate], [LedgerId], [InvoiceNo], [InvoiceDate], [ExcisePassNo], [TotalBottle], [TotalMRP], [TotalGross], [TotalDiscount], [STaxOnTotalMRPPer], [STaxOnTotalMRPAmt], [SpecialDiscount], [TCS], [EduCessPer], [EduCessAmt], [NetAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, CAST(0x0000A20700000000 AS DateTime), 3, N'1234', CAST(0x0000A20700000000 AS DateTime), N'123', 70, CAST(9000 AS Decimal(18, 0)), CAST(9000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(1.00 AS Decimal(18, 2)), CAST(90 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), NULL, 0, CAST(0x0000A20701014327 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[PurchaseMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_Delete_Purchase_Details]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
	[BatchNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
SET IDENTITY_INSERT [dbo].[PurchaseDetails] ON
INSERT [dbo].[PurchaseDetails] ([PurchaseDetailsId], [PurchaseId], [ProductId], [CaseId], [BatchNo], [BarCode], [PurchaseCase], [PurchaseBottle], [TotPurchaseBtl], [RebateCase], [RebateBottle], [TotRebateBtl], [MRPBottle], [RateCase], [DiscCase], [TotalBottle], [TotalMRP], [TotalDiscount], [TotalAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 1, 4, 3, N'1201', N'1111', 0, 50, 50, 0, 0, 0, CAST(100 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 50, CAST(5000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[PurchaseDetails] ([PurchaseDetailsId], [PurchaseId], [ProductId], [CaseId], [BatchNo], [BarCode], [PurchaseCase], [PurchaseBottle], [TotPurchaseBtl], [RebateCase], [RebateBottle], [TotRebateBtl], [MRPBottle], [RateCase], [DiscCase], [TotalBottle], [TotalMRP], [TotalDiscount], [TotalAmount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 1, 5, 3, N'12', N'222', 0, 20, 20, 0, 0, 0, CAST(200 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 20, CAST(4000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(4000 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[PurchaseDetails] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductName]    Script Date: 07/30/2013 15:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ProductName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[usp_GetAll_ProductName]
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
/****** Object:  Table [dbo].[GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
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
SET IDENTITY_INSERT [dbo].[GodownBreakage] ON
INSERT [dbo].[GodownBreakage] ([BreakageId], [BreakageDate], [ProductId], [CaseId], [BarCode], [BreakageQty], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, CAST(0x0000A20601046298 AS DateTime), 5, 2, 1111, 6, 1, CAST(0x0000A206011C458B AS DateTime), 0, CAST(0x0000A2060122172E AS DateTime), 0, 0)
INSERT [dbo].[GodownBreakage] ([BreakageId], [BreakageDate], [ProductId], [CaseId], [BarCode], [BreakageQty], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, CAST(0x0000A20601046298 AS DateTime), 4, 3, 1111, 15, 1, CAST(0x0000A2060124005E AS DateTime), 0, CAST(0x0000A20601244341 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[GodownBreakage] OFF
/****** Object:  Table [dbo].[SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (1, 1, 1, CAST(0x0000A20700000000 AS DateTime), 4, N'1111', CAST(1100 AS Decimal(18, 0)), 10, CAST(11000 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (2, 1, 1, CAST(0x0000A20700000000 AS DateTime), 5, N'222', CAST(1200 AS Decimal(18, 0)), 5, CAST(6000 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (3, 2, 2, CAST(0x0000A20700000000 AS DateTime), 4, N'1111', CAST(1100 AS Decimal(18, 0)), 1, CAST(1100 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, 3, 3, CAST(0x0000A20700000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 5, CAST(6000 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (7, 3, 3, CAST(0x0000A20700000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 5, CAST(5500 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, 4, 4, CAST(0x0000A20700000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 1, CAST(1200 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (9, 4, 4, CAST(0x0000A20700000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 1, CAST(1100 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (10, 5, 5, CAST(0x0000A20700000000 AS DateTime), 4, N'1111', CAST(1100 AS Decimal(18, 0)), 5, CAST(5500 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (11, 6, 6, CAST(0x0000A20700000000 AS DateTime), 4, N'1111', CAST(1100 AS Decimal(18, 0)), 2, CAST(2200 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (12, 7, 7, CAST(0x0000A20700000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 2, CAST(2400 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (13, 8, 8, CAST(0x0000A20700000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 2, CAST(2200 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (14, 9, 9, CAST(0x0000A20800000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 2, CAST(2200 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (15, 10, 10, CAST(0x0000A20800000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 5, CAST(5500 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (16, 11, 0, CAST(0x0000A20B00000000 AS DateTime), 0, N'', CAST(0 AS Decimal(18, 0)), 0, CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (17, 12, 11, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 1, CAST(1200 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (18, 13, 12, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 5, CAST(6000 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (19, 14, 13, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 2, CAST(2400 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (20, 14, 13, CAST(0x0000A20B00000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 3, CAST(3300 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (21, 15, 14, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 1, CAST(1200 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (22, 16, 15, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 2, CAST(2400 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (23, 16, 15, CAST(0x0000A20B00000000 AS DateTime), 4, N'', CAST(1100 AS Decimal(18, 0)), 3, CAST(3300 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (24, 17, 16, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 2, CAST(2400 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
INSERT [dbo].[SaveProductDetails] ([SaveProductDetailsId], [SaveProductMasterId], [BillNo], [BillDate], [ProductId], [BarCode], [Rate], [Qty], [Amount], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (25, 18, 17, CAST(0x0000A20B00000000 AS DateTime), 5, N'', CAST(1200 AS Decimal(18, 0)), 3, CAST(3600 AS Decimal(18, 0)), NULL, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[SaveProductDetails] OFF
/****** Object:  Table [dbo].[ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductMaster](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'King Fisher', N'KF', 6, 3, 2, 1100, CAST(0x0000A1F500D8F4AF AS DateTime), 0, NULL, 0, 0)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, N'Blenders Pride', N'BP', 2, 1, 3, 1200, CAST(0x0000A1F500D93077 AS DateTime), 0, NULL, 0, 0)
INSERT [dbo].[ProductMaster] ([ProductId], [ProductName], [ProductCode], [CategoryId], [SubCategoryId], [CaseId], [Rate], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (6, N'Blenders Pride1000', N'BP', 2, 1, 4, NULL, CAST(0x0000A203013F0F3A AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductMaster] OFF
/****** Object:  Table [dbo].[GodownLastQty]    Script Date: 07/30/2013 15:57:58 ******/
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
	[BarCode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastQty] [int] NULL,
	[HotelId] [int] NULL,
 CONSTRAINT [PK_GodownLastQty] PRIMARY KEY CLUSTERED 
(
	[GodownQtyId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[GodownLastQty] ON
INSERT [dbo].[GodownLastQty] ([GodownQtyId], [ProductId], [SizeOfBottle], [BarCode], [LastQty], [HotelId]) VALUES (1, 4, NULL, N'1111', 18, 0)
INSERT [dbo].[GodownLastQty] ([GodownQtyId], [ProductId], [SizeOfBottle], [BarCode], [LastQty], [HotelId]) VALUES (2, 5, NULL, N'222', 2, 0)
SET IDENTITY_INSERT [dbo].[GodownLastQty] OFF
/****** Object:  StoredProcedure [dbo].[usp_Delete_Unit]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[Ledger_Group_Master]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_LedgerMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  Table [dbo].[ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (4, N'Rum', 2, CAST(0x0000A1F300D1BE0C AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (5, N'Beer', 2, CAST(0x0000A20B00D885FF AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[ProductSubCategoryMaster] ([SubCategoryId], [SubCategoryName], [TypeId], [FirstEnteredOn], [FirstEnteredBy], [LastModifiedOn], [LastModifiedBy], [HotelId]) VALUES (8, N'Whisky', 2, CAST(0x0000A20B00D8EF80 AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductSubCategoryMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_Save_DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
			FirstEnteredBy,
			HotelId
			)
		VALUES
			(
			@pGuestName,
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
	SELECT	SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
		GM.PhoneNo,(SPM.ReceivableAmt-(isnull(sum(DD.PaidCash)+sum(DD.PaidCard),0))) as DueAmt
	FROM GuestMaster GM,DueDetails DD,DueMaster DM, SaveProductMaster SPM
	where DM.GuestId = GM.GuestId and DD.DueId = DM.DueId 
		and SPM.SaveProductMasterId=DM.SaveProductMasterId
		and DM.DueId=@pDueId
	group by SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
		GM.PhoneNo
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_DateWise_Due_Report]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
	SELECT	SPM.BillNo,SPM.BillDate,SPM.ReceivableAmt,GM.GuestName,GM.Address,
		GM.PhoneNo,isnull(DD.PaidCash,0),isnull(DD.PaidCard,0)
	FROM GuestMaster GM,DueDetails DD,DueMaster DM, SaveProductMaster SPM
	where DM.GuestId = GM.GuestId and DD.DueId = DM.DueId 
		and SPM.SaveProductMasterId=DM.SaveProductMasterId
		and DD.DueDetailsId=@pDueDetailsId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GuestName]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GuestName]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_EmployeeMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_Employee_Master_ById]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_LedgerMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_CreditorsWise_Purchase_Report]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LadgerMaster_ById]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SystemSetup]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_SystemSetup]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_DueDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_RoleMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
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
		and ProductMaster.HotelId=@pHotelId
		and GodownStock.Status=''O''
		order by ProductName,SizeOfBottle
	END
END








' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownLastQuantity]    Script Date: 07/30/2013 15:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Save_GodownLastQuantity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Save_GodownLastQuantity]
@pProductId int
as
begin
	declare @pBarcode varchar(50)
	declare @pSumOpng int
	declare	@pSumPur int
	declare	@pSumSale int
	declare	@pSumBrkg int
	declare	@pSumQty int
	declare	@pLastQty int
	declare	@pSataus char(1)
	select @pBarcode = Barcode from GodownStock where ProductId = @pProductId
	select @pSumOpng = isnull(sum(Qty),0) from GodownStock where Status = ''O'' and ProductId = @pProductId
	select @pSumPur = isnull(sum(Qty),0) from GodownStock where Status = ''P'' and ProductId = @pProductId
	select @pSumSale =isnull(sum(Qty),0) from GodownStock where Status = ''S'' and ProductId = @pProductId
	select @pSumBrkg = isnull(sum(Qty),0) from GodownStock where Status = ''B'' and ProductId = @pProductId
	set @pLastQty = @pSumOpng + @pSumPur - @pSumSale - @pSumBrkg
--	set @pLastQty =  @pSumPur - @pSumSale 
	--select @pLastQty as Quantity
	if exists(select * from GodownLastQty where ProductId = @pProductId)
	begin
		update GodownLastQty
		set
--			Barcode = @pBarcode,
			LastQty = @pLastQty
			where ProductId = @pProductId
	end
	else
		begin
				insert into GodownLastQty(ProductId,Barcode,LastQty,HotelId)values(@pProductId,@pBarcode,@pLastQty,0)
		end
end

-- exec usp_Save_GodownLastQuantity 5


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownStock]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
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
			insert into GodownStock(ProductId,SizeOfBottle,Qty,Barcode,Status,MainId,FirstEnteredBy,HotelId)select GodownBreakage.ProductId,
			BottlePerCase.SizeOfBottle,GodownBreakage.BreakageQty,GodownBreakage.Barcode,''B'',@pBreakageId,GodownBreakage.FirstEnteredBy,
			GodownBreakage.HotelId  from GodownBreakage,BottlePerCase 
			where GodownBreakage.CaseId = BottlePerCase.CaseId and GodownBreakage.BreakageId = @pBreakageId
			
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
	END
END




-- exec usp_Save_GodownBreakage 2,''7/25/2013 3:48:02 PM'',4,3,1111,15,1,0,0



' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductMaster_For_Occupy]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Report_Breakage]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_DateWiseSaleReport]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_PurchaseDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SizeOfBottle]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetNoOfBottle]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAllSizeOfBottle]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_BottlePerCase]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_Temp_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Get_Drinks_Purchase_Report]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetPurchase_Report]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_GodownBreakage]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
	order by ProductMaster.ProductName
end




' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_SaveProductDetails]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductName]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Barcode]    Script Date: 07/30/2013 15:57:58 ******/
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

	SELECT	ProductMaster.ProductId,ProductMaster.ProductName
	FROM ProductMaster, GodownLastQty
	WHERE ProductMaster.ProductId = GodownLastQty.ProductId 
	 and ProductMaster.HotelId=@pHotelId and GodownLastQty.Barcode = @pBarcode and GodownLastQty.HotelId=@pHotelId 
	group by ProductMaster.ProductId,ProductMaster.ProductName 
	having sum(GodownLastQty.LastQty)>0
	order by ProductMaster.ProductName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_SaveProductNameBy_Code]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ByName_SaveProductName]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductRate]    Script Date: 07/30/2013 15:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetAll_ById_ProductRate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[usp_GetAll_ById_ProductRate]
	@pProductId INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	Rate
	FROM ProductMaster
	WHERE ProductId = @pProductId
END








' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAll_LedgerGroupMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ledger_Group]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Delete_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ById_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_ProductSubCategoryMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_GetAll_ProductSubCategoryName]    Script Date: 07/30/2013 15:57:58 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Save_PurchaseMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
					declare CUR cursor for 
						select ProductId,BottlePerCase.SizeOfBottle,TotalBottle,BarCode
						from PurchaseDetails, BottlePerCase 
						where BottlePerCase.CaseId=PurchaseDetails.CaseId and PurchaseDetails.PurchaseId=@pPurchaseId
					open CUR
					fetch next from CUR into @ProductId,@SizeOfBottle,@Qty,@BarCode
					while @@fetch_status=0
					BEGIN
						insert into GodownStock(ProductId,SizeOfBottle,Qty,BarCode,Status,MainId,FirstEnteredBy,HotelId)
							values(@ProductId,@SizeOfBottle,@Qty,@BarCode,''P'',@pPurchaseId,@pFirstEnteredBy,@pHotelId)
							exec usp_Save_GodownLastQuantity @ProductId
						fetch next from CUR into @ProductId,@SizeOfBottle,@Qty,@BarCode
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
/****** Object:  StoredProcedure [dbo].[usp_Save_SaveProductMaster]    Script Date: 07/30/2013 15:57:58 ******/
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
			delete from GodownStock where Status=''S'' and MainId=@pSaveProductMasterId
				----------For Godown stock entry------------
			begin
					declare @ProductId		int
					--declare @SizeOfBottle	int
					declare @Qty			int
					declare @Amount			decimal
					declare @BarCode		varchar(50)
					declare CUR cursor for 
						select ProductId,Qty,BarCode,Amount
						from SaveProductDetails
						where SaveProductMasterId=@pSaveProductMasterId
					open CUR
					fetch next from CUR into @ProductId,@Qty,@BarCode,@Amount
					while @@fetch_status=0
					BEGIN
						insert into GodownStock(ProductId,Qty,BarCode,Status,MainId,TotalAmount,FirstEnteredBy,HotelId)
							values(@ProductId,@Qty,@BarCode,''S'',@pSaveProductMasterId,@Amount,@pFirstEnteredBy,@pHotelId)
							exec usp_Save_GodownLastQuantity @ProductId
						fetch next from CUR into @ProductId,@Qty,@BarCode,@Amount
						
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
/****** Object:  Default [DF_BottlePerCase_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BottlePerCase_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[BottlePerCase]'))
Begin
ALTER TABLE [dbo].[BottlePerCase] ADD  CONSTRAINT [DF_BottlePerCase_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownBreakage_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownBreakage_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownBreakage]'))
Begin
ALTER TABLE [dbo].[GodownBreakage] ADD  CONSTRAINT [DF_GodownBreakage_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GodownStock1_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GodownStock1_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GodownStock]'))
Begin
ALTER TABLE [dbo].[GodownStock] ADD  CONSTRAINT [DF_GodownStock1_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_GuestMaster_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GuestMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[GuestMaster]'))
Begin
ALTER TABLE [dbo].[GuestMaster] ADD  CONSTRAINT [DF_GuestMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Add]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Add]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Add]  DEFAULT ('') FOR [Creditor_Add]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Phno]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Phno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Phno]  DEFAULT ('') FOR [Creditor_Phno]

End
GO
/****** Object:  Default [DF_Ledger_Master_Creditor_Remarks]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ledger_Master_Creditor_Remarks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ledger_Master]'))
Begin
ALTER TABLE [dbo].[Ledger_Master] ADD  CONSTRAINT [DF_Ledger_Master_Creditor_Remarks]  DEFAULT ('') FOR [Creditor_Remarks]

End
GO
/****** Object:  Default [DF_ProductCategory_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ProductCategory_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductCategoryMaster] ADD  CONSTRAINT [DF_ProductCategory_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [ProductMaster_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductMaster]'))
Begin
ALTER TABLE [dbo].[ProductMaster] ADD  CONSTRAINT [ProductMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [ProductSubCategoryMaster_FirstEnteredOn]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster_FirstEnteredOn]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductSubCategoryMaster]'))
Begin
ALTER TABLE [dbo].[ProductSubCategoryMaster] ADD  CONSTRAINT [ProductSubCategoryMaster_FirstEnteredOn]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF__RoleMaste__First__267ABA7A]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__RoleMaste__First__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleMaster]'))
Begin
ALTER TABLE [dbo].[RoleMaster] ADD  CONSTRAINT [DF__RoleMaste__First__267ABA7A]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
/****** Object:  Default [DF_SaveProductMaster_Occupy]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SaveProductMaster_Occupy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SaveProductMaster]'))
Begin
ALTER TABLE [dbo].[SaveProductMaster] ADD  CONSTRAINT [DF_SaveProductMaster_Occupy]  DEFAULT ('N') FOR [Occupy]

End
GO
/****** Object:  Default [DF_SystemSetup_VATPer]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_VATPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_VATPer]  DEFAULT ((0)) FOR [VATPer]

End
GO
/****** Object:  Default [DF_SystemSetup_WaiterPresent]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_WaiterPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_WaiterPresent]  DEFAULT ('N') FOR [WaiterPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_TimePresent]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_TimePresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_TimePresent]  DEFAULT ('N') FOR [TimePresent]

End
GO
/****** Object:  Default [DF_SystemSetup_KotPresent]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_KotPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_KotPresent]  DEFAULT ('N') FOR [KotPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_GuestPresent]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_GuestPresent]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_GuestPresent]  DEFAULT ('N') FOR [GuestPresent]

End
GO
/****** Object:  Default [DF_SystemSetup_DiffFoodBill]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SystemSetup_DiffFoodBill]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF_SystemSetup_DiffFoodBill]  DEFAULT ('N') FOR [DiffFoodBill]

End
GO
/****** Object:  Default [DF__SystemSet__First__06CD04F7]    Script Date: 07/30/2013 15:57:58 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__SystemSet__First__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemSetup]'))
Begin
ALTER TABLE [dbo].[SystemSetup] ADD  CONSTRAINT [DF__SystemSet__First__06CD04F7]  DEFAULT (getdate()) FOR [FirstEnteredOn]

End
GO
