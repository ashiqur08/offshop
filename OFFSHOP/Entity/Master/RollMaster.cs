using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class RollMaster
    {
        private int _roleId;
        private string _roleDescription;
        private string _OutletName;
        private int _HotelId;
        private int _FirstEnteredBy;

        public int RoleId
        {
            get { return _roleId; }
            set { _roleId = value; }
        }
        public int HotelId
        {
            get { return _HotelId; }
            set { _HotelId = value; }
        }
        public string RoleDescription
        {
            get { return _roleDescription; }
            set { _roleDescription = value; }
        }
        public int FirstEnteredBy
        {
            get { return _FirstEnteredBy; }
            set { _FirstEnteredBy = value; }
        }

    }
}
