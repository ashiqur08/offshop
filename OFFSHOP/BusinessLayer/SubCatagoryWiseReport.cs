using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace BusinessLayer
{
   public class SubCatagoryWiseReport
    {
       public DataTable GetSubCatagoryWiseSaleReport( int HotelId,DateTime FromDate, DateTime ToDate)
       {
           DataAccess.SubCatagoryWiseReport objDa = new DataAccess.SubCatagoryWiseReport();
           return objDa.GetSubCatagoryWiseSaleReport(HotelId, FromDate, ToDate);
       }
    }
}
