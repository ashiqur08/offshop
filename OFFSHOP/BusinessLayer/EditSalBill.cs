using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class EditSalBill
    {
       public DataTable GetBill_Today(DateTime Date, int HotelId)
       {

           DataAccess.EditSalBill objDa = new DataAccess.EditSalBill();
           return objDa.GetBill_Today(Date,HotelId);
       }

    }
}
