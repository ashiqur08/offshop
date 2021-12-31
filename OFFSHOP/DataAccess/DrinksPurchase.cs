using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class DrinksPurchase
   {
       public DataTable SavePurchaseDetails(Entity.Master.DrinksPurchase objEt)
       {
           using (DataManager oDm = new DataManager())
           {
                       oDm.Add("@pPurchaseId", SqlDbType.Int, objEt.PurchaseId);
                       oDm.Add("@pPurchaseDate", SqlDbType.DateTime, objEt.PurchaseDate);
                       oDm.Add("@pLedgerId", SqlDbType.Int, objEt.LedgerId);
                       oDm.Add("@pInvoiceNo", SqlDbType.VarChar, objEt.InvoiceNo);
                       oDm.Add("@pInvoiceDate", SqlDbType.DateTime, objEt.InvoiceDate);
                       oDm.Add("@pExcisePassNo", SqlDbType.VarChar, objEt.ExcisePassNo);
                       oDm.Add("@pGrandTotalBottle", SqlDbType.Int, objEt.GrandTotalBottle);
                       oDm.Add("@pGrandTotalMRP", SqlDbType.Decimal, objEt.GrandTotalMRP);
                       oDm.Add("@pTotalGross", SqlDbType.Decimal, objEt.TotGross);
                       oDm.Add("@pGrandTotalDisc", SqlDbType.Decimal, objEt.GrandDisc);
                       oDm.Add("@pSTaxOnTotalMRPPer", SqlDbType.Decimal, objEt.STaxOnTotalMRPPer);
                       oDm.Add("@pSTaxOnTotalMRPAmt", SqlDbType.Decimal, objEt.STaxOnTotalMRPAmt);
                       oDm.Add("@pSpecialDiscount", SqlDbType.Decimal, objEt.SpecialDiscount);
                       oDm.Add("@pTCS", SqlDbType.Decimal, objEt.TCS);
                       oDm.Add("@pEduCessPer", SqlDbType.Decimal, objEt.EduCess);
                       oDm.Add("@pEduCessAmt", SqlDbType.Decimal, objEt.EduCessAmt);
                       oDm.Add("@pNetAmount", SqlDbType.Decimal, objEt.NetAmount);
                       oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);  
                       oDm.Add("@pHotelId", SqlDbType.Decimal, objEt.HotelId);
                       //---------------------------
                       oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
                       oDm.Add("@pCaseId", SqlDbType.Int, objEt.CaseId);
                       oDm.Add("@pBatchNo", SqlDbType.VarChar, objEt.BatchNo);
                       oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
                       oDm.Add("@pPurchaseCase", SqlDbType.Int, objEt.PurchaseCase);
                       oDm.Add("@pPurchaseBottle", SqlDbType.Int, objEt.PurchaseBottle);
                       oDm.Add("@pTotPurchaseBtl", SqlDbType.Int, objEt.TotNoOfBtl);
                       oDm.Add("@pRebateCase", SqlDbType.Int, objEt.RebateCase);
                       oDm.Add("@pRebateBottle", SqlDbType.Int, objEt.RebateBottle);
                       oDm.Add("@pTotRebateBtl", SqlDbType.Int, objEt.TotRebateBottle);
                       oDm.Add("@pMRPBottle", SqlDbType.Decimal, objEt.MRPBottle);
                       oDm.Add("@pRateCase", SqlDbType.Decimal, objEt.Rate);
                       oDm.Add("@pDiscCase", SqlDbType.Decimal, objEt.Discount);
                       oDm.Add("@pTotalBottle", SqlDbType.Int, objEt.TotNoOfBtlWithRebate);
                       oDm.Add("@pTotalMRP", SqlDbType.Decimal, objEt.TotMrp);
                       oDm.Add("@pTotalDiscount", SqlDbType.Decimal, objEt.TotDiscount);
                       oDm.Add("@pTotalAmount", SqlDbType.Decimal, objEt.TotRate);
                       //oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
                      // oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
                       oDm.CommandType = CommandType.StoredProcedure;
                       return oDm.ExecuteDataTable("usp_Save_PurchaseMaster");
                       //oDm.ExecuteNonQuery("usp_Save_PurchaseMaster");
                       //objEt.PurchaseId = (int)oDm["@pPurchaseId"].Value;

           }
       }
       public  DataTable GetAll_LedgerMaster()
       {

           using (DataManager oDm = new DataManager())
           {

               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_LedgerMaster");
           }

       }
       public DataTable GetAll_ProductMaster(int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ProductMaster");
           }

       }
       public DataTable GetAll_PurchaseDetails(int PurchaseId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pPurchaseId", SqlDbType.Int, PurchaseId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_PurchaseDetails");
           }

       }
       public DataSet GetAll_ById_PurchaseMaster(int PurchaseId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pPurchaseId", SqlDbType.Int, PurchaseId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataSet("usp_GetAll_ById_PurchaseMaster");
           }

       }
       public DataTable GetAll_BottlePerCase()
       {

           using (DataManager oDm = new DataManager())
           {
               
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_BottlePerCase");
           }

       }
       public DataTable GetNoOfBottle(int CaseId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetNoOfBottle");
           }

       }
        //public DataTable GetAllProductCategoryMasterById(int ProductCategoryMasterById)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pCategoryId", SqlDbType.Int, ProductCategoryMasterById);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ById_ProductCategoryMaster");
        //    }
        //}
       public void Delete(int PurchaseDetailsId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pPurchaseDetailsId", SqlDbType.Int, PurchaseDetailsId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Delete_Purchase_Details");
           }

       }
       public void DeleteMaster(int PurchaseId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pPurchaseId", SqlDbType.Int, PurchaseId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Delete_PurchaseMaster");
           }

       }

       public void DeleteTempPurchaseMaster(int PurchaseId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pPurchaseId", SqlDbType.Int,PurchaseId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Delete_Temp_PurchaseMaster");
           }

       }
    }
}
