using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class DateWiseDueReport
    {
       public DataTable Get_DateWise_Due_Report(DateTime FromDate, DateTime ToDate, int HotelId)
       {
           DataAccess.DateWiseDueReport objDa = new DataAccess.DateWiseDueReport();
           return objDa.Get_DateWise_Due_Report(FromDate, ToDate, HotelId);
       }
    }
}
