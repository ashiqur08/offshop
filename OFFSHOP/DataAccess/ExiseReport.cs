using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class ExiseReport
    {
       public DataTable Get_ExiseReport()
       {
           using (DataManager oDm = new DataManager())
           {
              oDm.CommandType = CommandType.StoredProcedure;
              return oDm.ExecuteDataTable("usp_ExiseReport");
           }
       }
    }
}
