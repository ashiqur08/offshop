using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class DateWiseSaleReport
    {
       public DataTable GetDateWiseSaleReport(DateTime FromDate, DateTime ToDate, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pDateFrm", SqlDbType.DateTime, FromDate);
               oDm.Add("@pDateto", SqlDbType.DateTime, ToDate);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_DateWiseSaleReport");
           }
       }
    }
}
