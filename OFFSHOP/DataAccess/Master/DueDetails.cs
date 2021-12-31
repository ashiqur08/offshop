using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess.Master
{
    public class DueDetails
    {
        public void Save_DueMaster(Entity.Master.DueDetails ObjEt)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pGuestId", SqlDbType.Int, ObjEt.GuestId);
                oDm.Add("@pGuestName", SqlDbType.VarChar, ObjEt.GuestName);
                oDm.Add("@pAddress", SqlDbType.VarChar, ObjEt.Address);
                oDm.Add("@pPhoneNo", SqlDbType.VarChar, ObjEt.PhoneNo);
                oDm.Add("@pFirstEnteredBy", SqlDbType.Int, ObjEt.FirstEnteredBy);
                oDm.Add("@pHotelId", SqlDbType.Int, ObjEt.HotelId);
                oDm.Add("@pSaveProductMasterId", SqlDbType.Int, ObjEt.SaveProductMasterId);
                oDm.Add("@pBillNo", SqlDbType.Int, ObjEt.BillNo);
                oDm.Add("@pDueAmount", SqlDbType.Decimal, ObjEt.DueAmount);
                oDm.Add("@pDueDate", SqlDbType.DateTime, ObjEt.DueDate);
                oDm.Add("@pRemarks", SqlDbType.VarChar, ObjEt.Remarks);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_DueMaster");

            }
        }

        public DataTable GetAll_GuestName(int HotelId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int,HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_GuestName"); 
            }
        }

         public DataTable GetAll_ById_GuestName(int HotelId,int GuestId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int,HotelId);
                oDm.Add("@pGuestId", SqlDbType.Int, GuestId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_GuestName");
            }
        }
         public void Update_SaveProductMaster_OnExitDueDetails(long BillNo, Decimal DueAmount)
         {
             using (DataManager oDm = new DataManager())
             {
                 oDm.Add("@pBillNo", SqlDbType.BigInt, BillNo);
                 oDm.Add("@pDueAmount", SqlDbType.Decimal, DueAmount);
                 oDm.CommandType = CommandType.StoredProcedure;
                 oDm.ExecuteDataTable("usp_Update_SaveProductMaster_OnExitDueDetails");
             }
         }
    }
}
