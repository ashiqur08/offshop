using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class UserPermision
    {
       public void Save(Entity.UserPermision objEt)
       {
           DataAccess.UserPermision objDa = new DataAccess.UserPermision();
            objDa.Save(objEt);
       }
       public DataTable GetAll_Employee_LoginName()
       {
           DataAccess.UserPermision objDa = new DataAccess.UserPermision();
           return objDa.GetAll_Employee_LoginName();
       }
       public DataTable GetAll_ById_PermissionUser(int EmployeeId, int HotelId)
       {
           DataAccess.UserPermision objDa = new DataAccess.UserPermision();
           return objDa.GetAll_ById_PermissionUser(EmployeeId, HotelId);
       }
    }
}
