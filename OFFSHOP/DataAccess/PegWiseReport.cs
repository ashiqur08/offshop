using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
    public class PegWiseReport
    {
        public DataTable usp_GetAllSaleReport_By_Peg(int BtlSize,int HotelId,DateTime DateFrm,DateTime Dateto)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pBtlSize", SqlDbType.Int, BtlSize);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.Add("@pDateFrm", SqlDbType.DateTime, DateFrm);
                oDm.Add("@pDateto", SqlDbType.DateTime, Dateto);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAllSaleReport_By_Peg1");
            }

        }
        public DataTable GetAll_SizeOfBottle()
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_SizeOfBottle");
            }
        }
    }
}
