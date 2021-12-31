using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
   public class RollMaster
   {
       public void Save(Entity.Master.RollMaster objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pRoleId", SqlDbType.Int, objEt.RoleId);
               oDm.Add("@pRoleDescription", SqlDbType.VarChar, objEt.RoleDescription);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Save_RoleMaster");

           }
       }
       public DataTable GetAllRoleMaster(int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_RoleMaster");
           }

       }
       public DataTable GetAllRoleMasterById(int RoleId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pRoleId", SqlDbType.Int, RoleId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_ById_RoleMaster");
           }
       }
       public DataTable Delete(int RoleId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pRoleId", SqlDbType.Int, RoleId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Delete_RoleMaster");
           }

       }

    }
}
