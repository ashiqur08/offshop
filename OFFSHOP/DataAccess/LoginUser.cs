using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class LoginUser
    {
       public DataTable Login(string Uid, string Pwd, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pUid", SqlDbType.VarChar, Uid);
               oDm.Add("@pPwd", SqlDbType.VarChar, Pwd);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Login");
           }
       }

       public DataTable GetAll_HotelForLogin()
       {
           using (DataManager oDm = new DataManager())
           {
               //oDm.Add("@pUserId", SqlDbType.Int, UserId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_HotelForLogin");
           }
       }

       public void Save_PermissionMenuOffshop()
       {
           using (DataManager oDm = new DataManager())
           {
               
               oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteDataTable("usp_Save_PermissionMenuOffshop");
           }
       }

       public DataTable PermissionUser(int HotelId, int UserId, string PageName)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.Add("@pUserId", SqlDbType.Int, UserId);
               oDm.Add("@pPageName", SqlDbType.VarChar, 100, PageName);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetPermission");
           }
       }

       public DataTable GetUserId(string TxtId, string TxtPwd)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pTxtId", SqlDbType.VarChar,50, TxtId);
               oDm.Add("@pTxtPwd", SqlDbType.VarChar,50, TxtPwd);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetUserId");
           }
       }
    }
}
