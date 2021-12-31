using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class BillWiseSaleReport
    {
       public DataTable GetBillwise_Sale_Report(DateTime FromDate, DateTime ToDate, int HotelId)
       {

           DataAccess.BillWiseSaleReport objDa = new DataAccess.BillWiseSaleReport();
           return objDa.GetBillwise_Sale_Report(FromDate, ToDate, HotelId);
       }
    }
}
