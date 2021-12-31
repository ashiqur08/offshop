using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class EmployeeMaster
    {
       public DataTable GetAll_RoleMaster(int HotelId)
       {
           DataAccess.Master.EmployeeMaster objDa = new DataAccess.Master.EmployeeMaster();
           return objDa.GetAll_RoleMaster(HotelId);
       }
       public DataTable GetAll_HotelMaster()
       {
           DataAccess.Master.EmployeeMaster objDa = new DataAccess.Master.EmployeeMaster();
           return objDa.GetAll_HotelMaster();
       }
       public DataTable GetAll_EmployeeMaster()
       {
           DataAccess.Master.EmployeeMaster objDa = new DataAccess.Master.EmployeeMaster();
           return objDa.GetAll_EmployeeMaster();
       }
       public DataSet GetAll_Employee_Master_ById(int EmployeeId)
       {
           DataAccess.Master.EmployeeMaster objDa = new DataAccess.Master.EmployeeMaster();
           return objDa.GetAll_Employee_Master_ById(EmployeeId);
       }
       public DataTable Save(Entity.Master.EmployeeMaster objEt)
       {
           DataAccess.Master.EmployeeMaster objDa = new DataAccess.Master.EmployeeMaster();
           return objDa.Save(objEt);
       }
       public void Delete(int EmployeeId)
       {
           DataAccess.Master.EmployeeMaster objDa = new DataAccess.Master.EmployeeMaster();
           objDa.Delete(EmployeeId);
       }

      

    }
}
