using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class CreditorsWisePurReport
    {
       public DataTable GetCreditorsWisePurReport(DateTime DtFrm,DateTime DtTo,int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pFrmDate", SqlDbType.DateTime, DtFrm);
               oDm.Add("@pToDate", SqlDbType.DateTime, DtTo);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Get_CreditorsWise_Purchase_Report");
           }
       }
    }
}
