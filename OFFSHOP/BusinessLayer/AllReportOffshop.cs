using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BusinessLayer
{
    public class AllReportOffshop
    {
        public DataTable GetGodownStockReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            DataAccess.AllReportOffshop objDa = new DataAccess.AllReportOffshop();
            return objDa.GetGodownStockReport(FromDate, ToDate, HotelId);
        }
        public DataTable BillwiseMOPReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            DataAccess.AllReportOffshop objDa = new DataAccess.AllReportOffshop();
            return objDa.BillwiseMOPReport(FromDate, ToDate, HotelId);
        }
        public void Backup(string DatabaseName, string BackupType)
        {
            DataAccess.AllReportOffshop objDa = new DataAccess.AllReportOffshop();
            objDa.Backup(DatabaseName, BackupType);
        }
        public DataTable GetOffshopStockReport(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            DataAccess.AllReportOffshop objDa = new DataAccess.AllReportOffshop();
            return objDa.GetOffshopStockReport(FromDate, ToDate, HotelId);
        }
        public DataTable usp_BreakageReportOffshop(DateTime FromDate, DateTime ToDate, int HotelId)
        {
            DataAccess.AllReportOffshop objDa = new DataAccess.AllReportOffshop();
            return objDa.usp_BreakageReportOffshop(FromDate, ToDate, HotelId);
        }
    }
}
