using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class RollMaster
    {
       public void Save(Entity.Master.RollMaster objEt)
       {
           DataAccess.Master.RollMaster objDa = new DataAccess.Master.RollMaster();
           objDa.Save(objEt);
       }
       public DataTable GetAllRoleMaster(int HotelId)
       {
           DataAccess.Master.RollMaster objDa = new DataAccess.Master.RollMaster();
           return objDa.GetAllRoleMaster(HotelId);
       }

       public void Delete(int RoleId)
       {
           DataAccess.Master.RollMaster objDa = new DataAccess.Master.RollMaster();
           objDa.Delete(RoleId);
       }

       public DataTable GetAllRoleMasterById(int RoleId)
       {
           DataAccess.Master.RollMaster objDa = new DataAccess.Master.RollMaster();
           return objDa.GetAllRoleMasterById(RoleId);
       }

    }
}
