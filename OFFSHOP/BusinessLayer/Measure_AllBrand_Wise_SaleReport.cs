using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class Measure_AllBrand_Wise_SaleReport
    {
       public DataTable Get_Measure_AllBrand_Wise_SaleReport(int BtlSize, DateTime FromDate, DateTime ToDate, int HotelId)
       {
           DataAccess.Measure_AllBrand_Wise_SaleReport objDa = new DataAccess.Measure_AllBrand_Wise_SaleReport();
           return objDa.Get_Measure_AllBrand_Wise_SaleReport(BtlSize,FromDate, ToDate, HotelId);
       }
       public DataTable GetAll_SizeOfBottle()
       {
           DataAccess.MeasureWiseReport objDa = new DataAccess.MeasureWiseReport();
           return objDa.GetAll_SizeOfBottle();
       }
    }
}
