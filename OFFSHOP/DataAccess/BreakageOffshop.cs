using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class BreakageOffshop
    {
        public DataTable GetAll_ProductName_OffshopBreakage(int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCategoryId", SqlDbType.Int, DBNull.Value);
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
        public DataTable GetAll_OffshopBreakage(int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_OffshopBreakage");
            }
        }
        public DataTable GetAll_ById_OffshopBreakage(int BreakageId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pOffshopBreakageId ", SqlDbType.Int, BreakageId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_OffshopBreakage");
            }
        }

        public void Delete(int BreakageId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pOffshopBreakageId", SqlDbType.Int, BreakageId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_OffshopBreakage");
            }
        }

        public void Save(Entity.BreakageOffshop objEt)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pOffshopBreakageId", SqlDbType.Int, objEt.OffshopBreakageId);
                oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
                oDm.Add("@pBreakageDate", SqlDbType.DateTime, objEt.BreakageDate);
                oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
                oDm.Add("@pCaseId", SqlDbType.Int, objEt.CaseId);
                oDm.Add("@pBreakageQty", SqlDbType.Int, objEt.BreakageQty);
                oDm.Add("@pTypeId", SqlDbType.Int, objEt.TypeId);
                oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
                oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_OffshopBreakage");
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
                return oDm.ExecuteDataTable("usp_GetQty_Offshop");
            }
        }
    }
}
