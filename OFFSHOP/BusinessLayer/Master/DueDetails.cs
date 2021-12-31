using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLayer.Master
{
    public class DueDetails
    {
        public void Save_DueMaster(Entity.Master.DueDetails ObjEt)
        {
           {
           DataAccess.Master.DueDetails objDa = new DataAccess.Master.DueDetails();
           objDa.Save_DueMaster(ObjEt);
            }
        }
        public DataTable GetAll_GuestName(int HotelId)
        {
            DataAccess.Master.DueDetails objDa = new DataAccess.Master.DueDetails();
            return objDa.GetAll_GuestName(HotelId);
        }
        public DataTable GetAll_ById_GuestName(int HotelId, int GuestId)
        {
            DataAccess.Master.DueDetails objDa = new DataAccess.Master.DueDetails();
            return objDa.GetAll_ById_GuestName(HotelId, GuestId);
        }
        public void Update_SaveProductMaster_OnExitDueDetails(long BillNo, Decimal DueAmount)
        {
            DataAccess.Master.DueDetails objDa = new DataAccess.Master.DueDetails();
            objDa.Update_SaveProductMaster_OnExitDueDetails(BillNo,DueAmount);
        }
    }
}
