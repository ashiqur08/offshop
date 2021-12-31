using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
   public class GodownOpeningStock
    {
       public DataTable GetAllProductCategoryMaster(int HotelId,int TypeId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.Add("@pTypeId", SqlDbType.Int, TypeId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ProductCategoryMaster");
           }

       }
       public DataTable GetAll_ProductSubCategoryName(int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ProductSubCategoryName");
           }
       }
       public DataTable GetAll_ProductName( int CategoryId, int SubCategoryId,int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               
               oDm.Add("@pCategoryId", SqlDbType.Int, CategoryId);
               oDm.Add("@pSubCategoryId", SqlDbType.Int, SubCategoryId);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ProductName");
           }
       }

       public DataTable GetAll_SizeOfBottle()
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_SizeOfBottle");
           }
       }
       public DataTable GetAll_GodownStock(int CategoryId, int SubCategoryId,int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pCategoryId", SqlDbType.Int, CategoryId);
               oDm.Add("@pSubCategoryId", SqlDbType.Int, SubCategoryId);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_GodownStock");
           }
       }
       public DataTable GetAll_ById_GodownStock(int GodownStockId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pGodownStockId",SqlDbType.Int,GodownStockId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ById_GodownStock");
           }
       }
       public void Save(Entity.Master.GodownOpeningStock objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pGodownStockId", SqlDbType.Int, objEt.GodownStockId);
               oDm.Add("@pProductId", SqlDbType.VarChar, objEt.ProductId);
               oDm.Add("@pSizeOfBottle", SqlDbType.Int, objEt.SizeOfBottle);
               oDm.Add("@pQty", SqlDbType.Int, objEt.Qty);
               oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
               oDm.Add("@pPurchaseRate", SqlDbType.Int, objEt.PurchaseRate);
               oDm.Add("@pMRP", SqlDbType.Int, objEt.MRP);
               oDm.Add("@pTotalAmount", SqlDbType.Int, objEt.TotalAmount);
               oDm.Add("@pStatus", SqlDbType.Char, objEt.Status);
               oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Save_GodownStock");

           }
       }

       public void Delete(int GodownStockId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pGodownStockId", SqlDbType.Int, GodownStockId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_GodownStock");
            }
       }
        //public DataTable GetAllUnitMaster(int HotelId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_Unit");
        //    }

        //}
        //public void Save(Entity.Master.ProductMaster objEt)
        //{
        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
        //        oDm.Add("@pProductName", SqlDbType.VarChar, objEt.ProductName);
        //        oDm.Add("@pCategoryId", SqlDbType.Int, objEt.CategoryId);
        //        oDm.Add("@pSubCategoryId", SqlDbType.Int, objEt.SubCategoryId);
        //        oDm.Add("@pTypeId", SqlDbType.Int, objEt.TypeId);
        //        oDm.Add("@pUnitId", SqlDbType.Int, objEt.UnitId);
        //        oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
        //        oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        oDm.ExecuteNonQuery("usp_Save_ProductMaster");

        //    }
        //}
        
        //public DataTable GetAllProductMaster(int HotelId, int TypeId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
        //        oDm.Add("@pTypeId", SqlDbType.Int, TypeId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ProductMaster");
        //    }

        //}
        //public DataTable GetAllProductMasterById(int ProductId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pProductId", SqlDbType.Int, ProductId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ById_ProductMaster");
        //    }
        //}
        //public void Delete(int ProductId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pProductId", SqlDbType.Int, ProductId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        oDm.ExecuteNonQuery("usp_Delete_ProductMaster");
        //    }

        //}
        //public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
        //        oDm.Add("@pTypeId", SqlDbType.Int, TypeId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ProductCategoryMaster");
        //    }

        //}
        //public DataTable GetAllSubProductCategoryMaster(int HotelId, int TypeId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
        //        oDm.Add("@pTypeId", SqlDbType.Int, TypeId);

        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ProductSubCategoryMaster");
        //    }

        //}

    }
}
