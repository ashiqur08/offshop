using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
    public class MeasureWiseReport
    {
        public DataTable GetAllSaleReport_By_Subcategory_Measure(int CategoryId, int SubCategoryId, int ProductId, int BtlSize, int HotelId, DateTime DateFrm, DateTime Dateto)
        {
            using (DataManager oDm = new DataManager())
            {

                oDm.Add("@pCategoryId", SqlDbType.Int, CategoryId);
                oDm.Add("@pSubCategoryId", SqlDbType.Int, SubCategoryId);
                oDm.Add("@pProductId", SqlDbType.Int, ProductId);
                oDm.Add("@pBtlSize", SqlDbType.Int, BtlSize);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.Add("@pDateFrm", SqlDbType.DateTime, DateFrm);
                oDm.Add("@pDateto", SqlDbType.DateTime, Dateto);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAllSaleReport_By_Subcategory_Measure");
            }
        }
        public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
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
        public DataTable GetAll_ProductName(int CategoryId, int SubCategoryId, int HotelId)
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
    }
}
