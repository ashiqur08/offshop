using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
    public class DueDetails
    {
        private int _GuestId;
        private string _GuestName;
        private string _Address;
        private string _PhoneNo;
        private int _FirstEnteredBy;
        private int _SaveProductMasterId;
        private int _BillNo;
        private int _HotelId;
        private decimal _DueAmount;
        private DateTime _DueDate;
        private string _Remarks;

        public int HotelId
        {
            get { return _HotelId; }
            set { _HotelId = value; }
        }
        public int GuestId
        {
            get { return _GuestId; }
            set { _GuestId = value; }
        }
        public string GuestName
        {
            get { return _GuestName; }
            set { _GuestName = value; }
        }
        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }
        public string PhoneNo
        {
            get { return _PhoneNo; }
            set { _PhoneNo = value; }
        }
        public int FirstEnteredBy
        {
            get { return _FirstEnteredBy; }
            set { _FirstEnteredBy = value; }
        }
        public int SaveProductMasterId
        {
            get { return _SaveProductMasterId; }
            set { _SaveProductMasterId = value; }
        }
        public int BillNo
        {
            get { return _BillNo; }
            set { _BillNo = value; }
        }
        public decimal DueAmount
        {
            get { return _DueAmount; }
            set { _DueAmount = value; }
        }
        public DateTime DueDate
        {
            get { return _DueDate; }
            set { _DueDate = value; }
        }

        public string Remarks
        {
            get { return _Remarks; }
            set { _Remarks = value; }
        }
    }
}
