using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace Entity
{
    public class UserPermision
    {
        private char _visibility;
        private int _menuId;
        private int _employeeId;
        private string _LoginName;
        private string _Password;
        private int _hotelId;
        public char Visibility
        {
            get { return _visibility; }
            set { _visibility = value; }
        }
        public int MenuId
        {
            get { return _menuId; }
            set { _menuId = value; }
        }
        public int EmployeeId
        {
            get { return _employeeId; }
            set { _employeeId = value; }
        }
        public string LoginName
        {
            get { return _LoginName; }
            set { _LoginName = value; }
        }
        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }
        public int HotelId
        {
            get { return _hotelId; }
            set { _hotelId = value; }
        }
    }
}
