using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class Measure_AllBrand_Wise_SaleReport
    {
       public DataTable Get_Measure_AllBrand_Wise_SaleReport(int BtlSize,DateTime FromDate, DateTime ToDate, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pBtlSize", SqlDbType.Int, BtlSize);
               oDm.Add("@pfrmdt", SqlDbType.DateTime, FromDate);
               oDm.Add("@ptodt", SqlDbType.DateTime, ToDate);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Measure_AllBrand_Wise_SaleReport");
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
