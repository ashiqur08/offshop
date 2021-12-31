using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class ExiseReport
    {
       public DataTable Get_ExiseReport()
       {

           DataAccess.ExiseReport objDa = new DataAccess.ExiseReport();
           return objDa.Get_ExiseReport();
       }
    }
}
