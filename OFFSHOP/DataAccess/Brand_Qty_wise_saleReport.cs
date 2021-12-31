using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
    public class Brand_Qty_wise_saleReport
    {
        public DataTable Get_Brand_Qty_wise_saleReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pfrmdt", SqlDbType.DateTime, FromDate);
                oDm.Add("@ptodt", SqlDbType.DateTime, ToDate);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_Brand_Qty_wise_saleReport");
            }
        }
    }
}
