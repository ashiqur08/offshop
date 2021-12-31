using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class EditSalBill
    {
       public DataTable GetBill_Today(DateTime Date, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pDt", SqlDbType.DateTime,Date);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetBill_Today");
           }
       }
    }
}
