using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
   public class LoginUser
    {
       private string _uId;
       private string _pwd;
       public string UId
       {
           get { return _uId; }
           set { _uId = value; }
       }
       public string Pwd
       {
           get { return _pwd; }
           set { _pwd = value; }
       }
    }
}
