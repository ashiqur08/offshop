using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class CatagoryWiseSaleReport
    {
       public DataTable GetCatagoryWiseSaleReport(int Category, int SubCatagory, int ProductId, DateTime FromDate, DateTime ToDate, int HotelId)
        {
            DataAccess.CatagoryWiseSaleReport objDa = new DataAccess.CatagoryWiseSaleReport();
            return objDa.GetCatagoryWiseSaleReport(Category, SubCatagory, ProductId, FromDate, ToDate, HotelId);
        }
       public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.CatagoryWiseSaleReport objDa = new DataAccess.CatagoryWiseSaleReport();
           return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
       }
       public DataTable GetAllProductSubCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.CatagoryWiseSaleReport objDa = new DataAccess.CatagoryWiseSaleReport();
           return objDa.GetAllProductSubCategoryMaster(HotelId, TypeId);
       }
       public DataTable GetAll_ProductMaster(int HotelId)
       {
           DataAccess.CatagoryWiseSaleReport objDa = new DataAccess.CatagoryWiseSaleReport();
           return objDa.GetAll_ProductMaster(HotelId);
       }
    }
}
