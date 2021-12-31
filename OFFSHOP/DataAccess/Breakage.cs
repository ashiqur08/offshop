using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class Breakage
    {

        public DataTable GetAll_ProductName_Breakage(int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCategoryId", SqlDbType.Int,DBNull.Value);
                oDm.Add("@pSubCategoryId", SqlDbType.Int, DBNull.Value);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ProductName");
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
        public DataTable GetAll_GodownBreakage(int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_GodownBreakage");
            }
        }
        public DataTable GetAll_ById_GodownBreakage(int BreakageId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pBreakageId ", SqlDbType.Int, BreakageId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_GodownBreakage");
            }
        }

        public void Delete(int BreakageId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pBreakageId", SqlDbType.Int, BreakageId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_GodownBreakage");
            }
        }

        public void Save(Entity.Breakage objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pBreakageId", SqlDbType.Int, objEt.BreakageId);
               oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
               oDm.Add("@pBreakageDate", SqlDbType.DateTime, objEt.BreakageDate);
               oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
               oDm.Add("@pCaseId", SqlDbType.Int, objEt.CaseId);
               oDm.Add("@pBreakageQty", SqlDbType.Int, objEt.BreakageQty);
               oDm.Add("@pTypeId", SqlDbType.Int, objEt.TypeId);
               oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Save_GodownBreakage");
           }
       }

        public DataTable GetRate(int ProductId, string Barcode, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pProductId", SqlDbType.Int, ProductId);
                oDm.Add("@pBarcode", SqlDbType.VarChar, 50, Barcode);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetRate");
            }
        }
        public DataTable GetQty(int ProductId, string Barcode, decimal Rate, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pProductId", SqlDbType.Int, ProductId);
                oDm.Add("@pBarcode", SqlDbType.VarChar, 50, Barcode);
                oDm.Add("@pRate", SqlDbType.Decimal, Rate);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetQty");
            }
        }
    }
}
