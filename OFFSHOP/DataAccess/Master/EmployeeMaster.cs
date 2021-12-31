using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
   public class EmployeeMaster
   {
       public DataTable Save(Entity.Master.EmployeeMaster objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pEmployeeId", SqlDbType.Int, objEt.EmployeeId);
               oDm.Add("@pFirstName", SqlDbType.VarChar, objEt.FirstName);
               oDm.Add("@pLastName", SqlDbType.VarChar, objEt.LastName);
               oDm.Add("@pLoginName", SqlDbType.VarChar, objEt.LoginName);
               oDm.Add("@pAddress1", SqlDbType.VarChar, objEt.Address1);
               oDm.Add("@pAddress2", SqlDbType.VarChar, objEt.Address2);
               oDm.Add("@pPhone", SqlDbType.VarChar, objEt.Phone);
               oDm.Add("@pPIN", SqlDbType.VarChar, objEt.Pin);
               oDm.Add("@pCity", SqlDbType.VarChar, objEt.City);
               oDm.Add("@pState", SqlDbType.VarChar, objEt.State);
               oDm.Add("@pCountry", SqlDbType.VarChar, objEt.Country);
               oDm.Add("@pRoleId", SqlDbType.Int, objEt.RoleId);
               oDm.Add("@pType", SqlDbType.Char, objEt.Type);
               oDm.Add("@pPassword", SqlDbType.VarChar, objEt.Password);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               oDm.Add("@pLoggedOn", SqlDbType.VarChar, objEt.LoggedOn);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Save_EmployeeMaster");
               //objEt.EmployeeId = (int)oDm["@pEmployeeId"].Value;

           }
       }
       public DataTable GetAll_RoleMaster(int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_RoleMaster");
           }
       }
       public DataTable GetAll_HotelMaster()
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.CommandType = CommandType.StoredProcedure;
               //return oDm.ExecuteDataTable("usp_GetAll_HotelMaster");
               return oDm.ExecuteDataTable("usp_GetAll_HotelForLogin");
           }
       }

       public DataTable GetAll_EmployeeMaster()
       {

           using (DataManager oDm = new DataManager())
           {
               //oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_EmployeeMaster");
           }

       }
       public DataSet GetAll_Employee_Master_ById(int EmployeeId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pEmployeeId", SqlDbType.Int, EmployeeId);
              
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataSet("usp_GetAll_Employee_Master_ById");
           }
       }
       public DataTable Delete(int EmployeeId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@EmployeeId", SqlDbType.Int, EmployeeId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Delete_EmployeeMaster");
           }

       }

    }
}
