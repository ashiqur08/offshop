using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class LoginUser
    {
       public void Save_PermissionMenuOffshop()
       {

           DataAccess.LoginUser objDa = new DataAccess.LoginUser();
           objDa.Save_PermissionMenuOffshop();
       }

       public DataTable Login(string Uid, string Pwd, int HotelId)
       {

           DataAccess.LoginUser objDa = new DataAccess.LoginUser();
           return objDa.Login(Uid, Pwd,HotelId);
       }

       public DataTable GetAll_HotelForLogin()
       {

           DataAccess.LoginUser objDa = new DataAccess.LoginUser();
           return objDa.GetAll_HotelForLogin();
       }

       public DataTable PermissionUser(int HotelId, int UserId, string PageName)
       {

           DataAccess.LoginUser objDa = new DataAccess.LoginUser();
           return objDa.PermissionUser(HotelId, UserId, PageName);
       }

       public DataTable GetUserId(string TxtId, string TxtPwd)
       {
           DataAccess.LoginUser objDa = new DataAccess.LoginUser();
           return objDa.GetUserId(TxtId, TxtPwd);
       }
    }
}
