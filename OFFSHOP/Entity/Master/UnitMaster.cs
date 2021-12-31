using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
    public class UnitMaster
    {
        private int _UnitId;
        private string _UnitName;
        private int _HotelId;
        private int _FirstEnteredBy;

        public int UnitId
        {
            get { return _UnitId; }
            set { _UnitId = value; }
        }
        public int HotelId
        {
            get { return _HotelId; }
            set { _HotelId = value; }
        }
        public string UnitName
        {
            get { return _UnitName; }
            set { _UnitName = value; }
        }
        public int FirstEnteredBy
        {
            get { return _FirstEnteredBy; }
            set { _FirstEnteredBy = value; }
        }
    }
}
