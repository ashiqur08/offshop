using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLayer
{
    public class BreakageReport
    {
        public DataTable usp_BreakageReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {

            DataAccess.BreakageReport objDa = new DataAccess.BreakageReport();
            return objDa.usp_BreakageReport(FromDate, ToDate, HotelId);
        }
    }
}
