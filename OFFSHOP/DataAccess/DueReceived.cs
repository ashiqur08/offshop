using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class DueReceived
    {
        public DataTable GetAll_DueMaster(int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_DueMaster");
            }
        }
        
        public DataTable Due_Details()
        {
            using (DataManager oDm = new DataManager())
            {

                return oDm.ExecuteDataTable("test_DueDetails");
            }
        }
        public DataTable GetAll_DueDetails(int HotelId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int,HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_DueDetails");
            }
        }
        public DataTable GetAll_ById_DueDetails(int DueDetailsId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pDueDetailsId", SqlDbType.Int, DueDetailsId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_DueDetails");
            }


        }
        public DataTable GetAll_ById_DueMaster(int DueId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pDueId", SqlDbType.Int, DueId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_DueMaster");
            }
        }
        public void Delete(int DueDetailsId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pDueDetailsId", SqlDbType.Int, DueDetailsId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_DueDetails");
            }
        }
        public void Save_DueDetails(Entity.DueReceived objEt)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pDueDetailsId", SqlDbType.Int, objEt.DueDetailsId);
                oDm.Add("@pDueId", SqlDbType.Int, objEt.DueId);
                oDm.Add("@pPaidCash", SqlDbType.Decimal, objEt.PaidCash);
                oDm.Add("@pPaidCard", SqlDbType.Decimal, objEt.PaidCard);
                oDm.Add("@pLastPayDate", SqlDbType.DateTime, objEt.LastPayDate);
                
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_DueDetails");

            }
        }
        
    }
}
