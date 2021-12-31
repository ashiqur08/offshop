using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class DateWiseSaleReport
    {
       public DataTable GetDateWiseSaleReport(DateTime FromDate, DateTime ToDate, int HotelId)
       {
           DataAccess.DateWiseSaleReport objDa = new DataAccess.DateWiseSaleReport();
          return objDa.GetDateWiseSaleReport(FromDate, ToDate, HotelId);
       }
    }
}
