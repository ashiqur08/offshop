using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class CatagoryWiseSaleReport
    {
       public DataTable GetCatagoryWiseSaleReport(int Category, int SubCatagory,int ProductId,DateTime FromDate, DateTime ToDate, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pCategory", SqlDbType.Int, Category);
               oDm.Add("@pSubCatagory", SqlDbType.Int, SubCatagory);
               oDm.Add("@pProductId", SqlDbType.Int, ProductId);
               oDm.Add("@pDateFrm", SqlDbType.DateTime, FromDate);
               oDm.Add("@pDateto", SqlDbType.DateTime, ToDate);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Get_CatagoryWise_Sale_Report");
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
       public DataTable GetAllProductSubCategoryMaster(int HotelId, int TypeId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.Add("@pTypeId", SqlDbType.Int, TypeId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ProductSubCategoryMaster");
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
    }
}
