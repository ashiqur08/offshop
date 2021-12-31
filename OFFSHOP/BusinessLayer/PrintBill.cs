using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class PrintBill
    {
       public DataSet GetBill(int BillId, int HotelId)
       {
           DataAccess.PrintBill objDa = new DataAccess.PrintBill();
           return objDa.GetBill(BillId,HotelId);
       }
    }
}
