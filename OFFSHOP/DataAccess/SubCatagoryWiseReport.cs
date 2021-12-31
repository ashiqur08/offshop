using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace DataAccess
{
   public class SubCatagoryWiseReport
    {
       public DataTable GetSubCatagoryWiseSaleReport(int HotelId,DateTime FromDate, DateTime ToDate)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.Add("@pDateFrm", SqlDbType.DateTime, FromDate);
               oDm.Add("@pDateto", SqlDbType.DateTime, ToDate);
               
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAllSaleReport_By_Subcategory");
           }
       }
    }
}
