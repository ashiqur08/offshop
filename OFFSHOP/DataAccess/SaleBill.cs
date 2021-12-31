using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class SaleBill
    {
       //public void Save(Entity.SaleBill objEt)
       //{
       //    using (DataManager oDm = new DataManager())
       //    {
       //        //------------------For SaveProductMaster------------------
       //        oDm.Add("@pSaveProductMasterId", SqlDbType.Int, objEt.SaveProductMasterId);
       //        oDm.Add("@pBillNo", SqlDbType.BigInt, objEt.BillNo);
       //        oDm.Add("@pBillDate", SqlDbType.DateTime, objEt.BillDate);
       //        oDm.Add("@pBillAmt", SqlDbType.Decimal, objEt.BillAmount);
       //        oDm.Add("@pDiscPer", SqlDbType.Decimal, objEt.DiscPer);
       //        oDm.Add("@pDiscAmt", SqlDbType.Decimal, objEt.DiscAmt);
       //        oDm.Add("@pLSDiscAmt", SqlDbType.Decimal, objEt.LsAmount);
       //        oDm.Add("@pDiscRemarks", SqlDbType.VarChar, objEt.DiscRemarks);
       //        oDm.Add("@pComplemantry_Remarks", SqlDbType.VarChar, objEt.Complemantry_Remarks);
       //        oDm.Add("@pReceivableAmt", SqlDbType.Decimal, objEt.RecievableAmount);
       //        oDm.Add("@pOccupy", SqlDbType.Char, objEt.Occupy);
       //        oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
       //        oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
       //        //-----------------For SaveProductDetails--------------------

       //        oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
       //        oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
       //        oDm.Add("@pRate", SqlDbType.Decimal, objEt.GridRate);
       //        oDm.Add("@pQty", SqlDbType.Int, objEt.GridQuantity);
       //        oDm.Add("@pAmount", SqlDbType.Decimal, objEt.GridAmount);
       //        //-----------------For SaveProductMOP--------------------
       //        oDm.Add("@pCash", SqlDbType.Decimal, objEt.Cash);
       //        oDm.Add("@pCard", SqlDbType.Decimal, objEt.Card);
       //        oDm.Add("@pDue", SqlDbType.Decimal, objEt.Due);
       //        oDm.CommandType = CommandType.StoredProcedure;
       //        oDm.ExecuteNonQuery("usp_Save_SaveProductMaster");
       //    }
       //}

       public DataTable Save(Entity.SaleBill objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               //------------------For SaveProductMaster------------------
               oDm.Add("@pSaveProductMasterId", SqlDbType.Int, objEt.SaveProductMasterId);
               oDm.Add("@pBillNo", SqlDbType.BigInt, objEt.BillNo);
               oDm.Add("@pBillDate", SqlDbType.DateTime, objEt.BillDate);
               oDm.Add("@pBillAmt", SqlDbType.Decimal, objEt.BillAmount);
               oDm.Add("@pDiscPer", SqlDbType.Decimal, objEt.DiscPer);
               oDm.Add("@pDiscAmt", SqlDbType.Decimal, objEt.DiscAmt);
               oDm.Add("@pLSDiscAmt", SqlDbType.Decimal, objEt.LSDiscAmt);
               oDm.Add("@pDiscRemarks", SqlDbType.VarChar, objEt.DiscRemarks);
               oDm.Add("@pComplemantry_Remarks", SqlDbType.VarChar, objEt.Complemantry_Remarks);
               oDm.Add("@pReceivableAmt", SqlDbType.Decimal, objEt.RecievableAmount);
               oDm.Add("@pOccupy", SqlDbType.Char, objEt.Occupy);
               oDm.Add("@pCash", SqlDbType.Decimal, objEt.Cash);
               oDm.Add("@pCard", SqlDbType.Decimal, objEt.Card);
               oDm.Add("@pExtraChargeOnCard", SqlDbType.Decimal, objEt.ExtraChargeOnCard);
               oDm.Add("@pDue", SqlDbType.Decimal, objEt.Due);
               oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               //-----------------For SaveProductDetails--------------------

               oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
               oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
               oDm.Add("@pRate", SqlDbType.Decimal, objEt.GridRate);
               oDm.Add("@pQty", SqlDbType.Int, objEt.GridQuantity);
               oDm.Add("@pAmount", SqlDbType.Decimal, objEt.GridAmount);
               
               
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Save_SaveProductMaster");
           }
       }

       public DataTable GetAll_SaveProductName(int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_SaveProductName");
           }

       }
       public DataTable GetAll_SaveProductNameBY_Barcode(string Barcode,int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pBarcode", SqlDbType.VarChar, Barcode);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_SaveProductNameBy_Barcode");
           }

       }
       public DataTable GetProductByCode(string ProductCode ,int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@ProdName", SqlDbType.VarChar, ProductCode);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ByName_SaveProductName");
           }
       }
       public DataSet GetAll_ById_SaveProductMaster(int SaveProductMasterId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pSaveProductMasterId", SqlDbType.Int, SaveProductMasterId);
               
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataSet("usp_GetAll_ById_SaveProductMaster");
           }
       }

       public DataTable GetRate(int ProductId,string Barcode)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pProductId", SqlDbType.Int, ProductId);
               oDm.Add("@pBarcode", SqlDbType.VarChar, Barcode);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ById_ProductRate");
           }
       }

       public DataTable GetAll_MaxBill(int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_MaxBill");
           }

       }
       public DataTable GetAll_SaveProductDetails(int SaveProductMasterId)
       {

           using (DataManager oDm = new DataManager())
           {

               oDm.Add("@pSaveProductMasterId", SqlDbType.Int, SaveProductMasterId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_SaveProductDetails");
           }

       }
       public DataTable GetAll_BillNo_ById_SaveProductMaster(int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {

               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_BillNo_ById_SaveProductMaster");
           }

       }
       public void Update_SaveProductDetails(int SaveProductDetailsId, int Qty, decimal Amount)
       {
           using (DataManager oDm = new DataManager())
           {

               oDm.Add("@pSaveProductDetailsId", SqlDbType.Int, SaveProductDetailsId);
               oDm.Add("@pQty", SqlDbType.Int, Qty);
               oDm.Add("@pAmount", SqlDbType.Decimal, Amount);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Update_SaveProductDetails");
           }
       }
       public void Update_SaveProductMaster_For_Occupy(int SaveProductMasterId)
       {
           using (DataManager oDm = new DataManager())
           {

               oDm.Add("@pSaveProductMasterId", SqlDbType.Int, SaveProductMasterId);
               
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Update_SaveProductMaster_For_Occupy");
           }
       }
        //public DataTable GetAllSizeOfBottleById(int CaseId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ById_BottlePerCase");
        //    }
        //}
       public void Delete(int SaveProductDetailsId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pSaveProductDetailsId", SqlDbType.Int, SaveProductDetailsId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteDataTable("usp_Delete_SaveProductDetails");
           }

       }
       public void DeleteOccupiedItem(int HotelId, int SaveProductMasterId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.Add("@SaveProductMasterId", SqlDbType.Int, SaveProductMasterId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteDataTable("usp_Delete_OccupiedItem");
           }

       }
       public DataTable GetLastQty(DateTime dt,int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@today", SqlDbType.DateTime, dt);
               oDm.Add("@HotelId", SqlDbType.Int, HotelId);
               
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetGodownStock");
           }
       }
       public DataTable Getall_SaveProductMaster_By_BillNo(long BillNo, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pBillNo", SqlDbType.BigInt, BillNo);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);

               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Getall_SaveProductMaster_By_BillNo");
           }
       }

    }
}
