using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class PurchaseReport
    {
       public DataTable GetPurchaseReport(DateTime FromDate, DateTime ToDate, int HotelId)
       {

           DataAccess.PurchaseReport objDa = new DataAccess.PurchaseReport();
           return objDa.GetPurchaseReport(FromDate, ToDate, HotelId);
       }
    }
}
