using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class AllReportOffshop
    {
        public DataTable GetGodownStockReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@from_dt", SqlDbType.DateTime, 10, FromDate);
                oDm.Add("@to_dt", SqlDbType.DateTime, 10, ToDate);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_Godown_Stock_Drink");
            }
        }

        public DataTable BillwiseMOPReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@from_dt", SqlDbType.DateTime, 10, FromDate);
                oDm.Add("@to_dt", SqlDbType.DateTime, 10, ToDate);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_ReportBillwiseMOP");
            }
        }

        public void Backup(string DatabaseName, string BackupType)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@databaseName", SqlDbType.VarChar, 100, DatabaseName);
                oDm.Add("@backupType", SqlDbType.VarChar, 1, BackupType);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteDataTable("sp_BackupDatabase");
            }
        }

        public DataTable GetOffshopStockReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@from_dt", SqlDbType.DateTime, FromDate);
                oDm.Add("@to_dt", SqlDbType.DateTime, ToDate);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_Offshop_Stock_Drink");
            }
        }

        public DataTable usp_BreakageReportOffshop(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pDateFrom", SqlDbType.DateTime, FromDate);
                oDm.Add("@pDateTo", SqlDbType.DateTime, ToDate);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_BreakageReportOffshop");
            }
        }
    }
}
