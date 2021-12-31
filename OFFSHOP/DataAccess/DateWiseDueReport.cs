using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class DateWiseDueReport
    {
       public DataTable Get_DateWise_Due_Report(DateTime FromDate, DateTime ToDate, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pDateFrom", SqlDbType.DateTime, FromDate);
               oDm.Add("@pDateTo", SqlDbType.DateTime, ToDate);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Get_DateWise_Due_Report");
           }
       }
    }
}
