using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class MeasureWiseReport
    {
       public DataTable GetAllSaleReport_By_Subcategory_Measure(int CategoryId, int SubCategoryId, int ProductId, int BtlSize, int HotelId, DateTime DateFrm, DateTime Dateto)
       {
           DataAccess.MeasureWiseReport objDa = new DataAccess.MeasureWiseReport();
           return objDa.GetAllSaleReport_By_Subcategory_Measure(CategoryId, SubCategoryId, ProductId, BtlSize, HotelId, DateFrm, Dateto);
       }
       public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.MeasureWiseReport objDa = new DataAccess.MeasureWiseReport();
           return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
       }
       public DataTable GetAll_ProductSubCategoryName(int HotelId)
       {
           DataAccess.MeasureWiseReport objDa = new DataAccess.MeasureWiseReport();
           return objDa.GetAll_ProductSubCategoryName(HotelId);
       }
       public DataTable GetAll_ProductName(int CategoryId, int SubCategoryId, int HotelId)
       {
           DataAccess.MeasureWiseReport objDa = new DataAccess.MeasureWiseReport();
           return objDa.GetAll_ProductName(CategoryId, SubCategoryId, HotelId);
       }
       public DataTable GetAll_SizeOfBottle()
       {
           DataAccess.MeasureWiseReport objDa = new DataAccess.MeasureWiseReport();
           return objDa.GetAll_SizeOfBottle();
       }
    }
}
