using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
//using System.Data.SqlClient;

namespace BusinessLayer
{
    public class DueReceived
    {
        public DataTable GetAll_DueMaster(int HotelId)
        {

            DataAccess.DueReceived objDa =new DataAccess.DueReceived();
            return objDa.GetAll_DueMaster(HotelId);
        }
        public DataTable Due_Details()
        {

            DataAccess.DueReceived objDa = new DataAccess.DueReceived();
            return objDa.Due_Details();
        }
        public DataTable GetAll_DueDetails(int HotelId)
        {
            DataAccess.DueReceived objDa = new DataAccess.DueReceived();
            return objDa.GetAll_DueDetails(HotelId);
        }
        public DataTable GetAll_ById_DueDetails(int DueDetailsId)
        {
            DataAccess.DueReceived objDa = new DataAccess.DueReceived();
            return objDa.GetAll_ById_DueDetails(DueDetailsId);
        }
        public DataTable GetAll_ById_DueMaster(int DueId)
        {
            DataAccess.DueReceived objDa = new DataAccess.DueReceived();
            return objDa.GetAll_ById_DueMaster(DueId);
        }
        public void Delete(int DueDetailsId)
        {
            DataAccess.DueReceived objDa = new DataAccess.DueReceived();
            objDa.Delete(DueDetailsId);
        }

        public void Save_DueDetails(Entity.DueReceived objEt)
        {
            DataAccess.DueReceived objDa = new DataAccess.DueReceived();
            objDa.Save_DueDetails(objEt);
            
        }
    }
}
