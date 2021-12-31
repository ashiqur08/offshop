using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
    public class UserPermision
    {
        public void Save(Entity.UserPermision objEt)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pEmployeeId", SqlDbType.Int, objEt.EmployeeId);
                oDm.Add("@pMenuId", SqlDbType.VarChar, objEt.MenuId);
                oDm.Add("@pVisibility", SqlDbType.Char, objEt.Visibility);
                //oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);

                oDm.CommandType = CommandType.StoredProcedure;
                 oDm.ExecuteNonQuery("usp_Save_PermissionUserOffshop");
                //objEt.EmployeeId = (int)oDm["@pEmployeeId"].Value;

            }
        }
        public DataTable GetAll_Employee_LoginName()
        {

            using (DataManager oDm = new DataManager())
            {
                //oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_LoginName");
            }
            

        }
        public DataTable GetAll_ById_PermissionUser(int EmployeeId,int HotelId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pEmployeeId", SqlDbType.Int, EmployeeId);
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_PermissionUser");
            }
            

        }
    }
}
