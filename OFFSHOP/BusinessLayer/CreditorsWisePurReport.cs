using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class CreditorsWisePurReport
    {
       public DataTable GetCreditorsWisePurReport(DateTime DtFrm, DateTime DtTo, int HotelId)
       {

           DataAccess.CreditorsWisePurReport objDa = new DataAccess.CreditorsWisePurReport();
           return objDa.GetCreditorsWisePurReport(DtFrm, DtTo, HotelId);
       }
    }
}
