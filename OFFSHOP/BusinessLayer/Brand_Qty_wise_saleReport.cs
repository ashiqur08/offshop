using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class Brand_Qty_wise_saleReport
    {
       public DataTable Get_Brand_Qty_wise_saleReport(DateTime FromDate, DateTime ToDate, int HotelId)
       {

           DataAccess.Brand_Qty_wise_saleReport objDa = new DataAccess.Brand_Qty_wise_saleReport();
           return objDa.Get_Brand_Qty_wise_saleReport(FromDate, ToDate, HotelId);
       }
    }
}
