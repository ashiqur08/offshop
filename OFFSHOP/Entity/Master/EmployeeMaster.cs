using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class EmployeeMaster
    {
       private int _employeeId;
       private string _firstName;
       private string _lastName;
       private string _LoginName;
       private int _roleId;
       private string _address1;
       private string _address2;
       private string _phone;
       private string _pin;
       private string _city;
       private string _state;
       private string _country;
       private string _Type;
       private string _Password;
       private int _hotelId;
       private string _loggedOn;
       public int EmployeeId
       {
           get { return _employeeId; }
           set { _employeeId = value; }
       }
       public string FirstName
       {
           get { return _firstName; }
           set { _firstName = value; }
       }
       public string LoginName
       {
           get { return _LoginName; }
           set { _LoginName = value; }
       }
       public string LastName
       {
           get { return _lastName; }
           set { _lastName = value; }
       }
       public int RoleId
       {
           get { return _roleId; }
           set { _roleId = value; }
       }
       public string Address1
       {
           get { return _address1; }
           set { _address1 = value; }
       }
       public string Address2
       {
           get { return _address2; }
           set { _address2 = value; }
       }
       public string Phone
       {
           get { return _phone; }
           set { _phone = value; }
       }
       public string Pin
       {
           get { return _pin; }
           set { _pin = value; }
       }
       public string City
       {
           get { return _city; }
           set { _city = value; }
       }
       public string State
       {
           get { return _state; }
           set { _state = value; }
       }
       public string Country
       {
           get { return _country; }
           set { _country = value; }
       }
       public string Type
       {
           get { return _Type; }
           set { _Type = value; }
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
       public string LoggedOn
       {
           get { return _loggedOn; }
           set { _loggedOn = value; }
       }
       
    }
}
