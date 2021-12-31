using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class MeasureWiseReport
    {
        private int _catagoryId;
        private int _subCatagoryId;
        private int _productId;
        private int _hotelId;
        private int _btlSize;
        private DateTime _dateFrom;
        private DateTime _dateTo;

        public int CatagoryId
        {
            get { return _catagoryId; }
            set { _catagoryId = value; }
        }
        public int SubCatagoryId
        {
            get { return _subCatagoryId; }
            set { _subCatagoryId = value; }
        }
        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        public int HotelId
        {
            get { return _hotelId; }
            set { _hotelId = value; }
        }
        public int BtlSize
        {
            get { return _btlSize; }
            set { _btlSize = value; }
        }
        public DateTime DateFrom
        {
            get { return _dateFrom; }
            set { _dateFrom = value; }
        }
        public DateTime DateTo
        {
            get { return _dateTo; }
            set { _dateTo = value; }
        }
    }
}
