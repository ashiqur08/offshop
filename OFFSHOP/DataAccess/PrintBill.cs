using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class PrintBill
    {
       public DataSet GetBill(int BillId,int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pBillId", SqlDbType.Int, BillId);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataSet("usp_PrintBill");
           }

       }
    }
}
