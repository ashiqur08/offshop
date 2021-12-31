using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
    public class PegWiseReport
    {
        public DataTable usp_GetAllSaleReport_By_Peg(int BtlSize, int HotelId, DateTime DateFrm, DateTime Dateto)
        {
            DataAccess.PegWiseReport objDa = new DataAccess.PegWiseReport();
            return objDa.usp_GetAllSaleReport_By_Peg(BtlSize, HotelId, DateFrm, Dateto);
        }
        public DataTable GetAll_SizeOfBottle()
        {
            DataAccess.PegWiseReport objDa = new DataAccess.PegWiseReport();
            return objDa.GetAll_SizeOfBottle();
        }
    }
}
