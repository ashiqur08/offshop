using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Breakage
    {
        private int _breakageId;
        private DateTime _breakageDate;
        private int _productId;
        private int _caseId;
        private int _breakageQty;
        private int _typeId;
        private DateTime _firstEnteredOn;
        private int _firstEnteredBy;
        private DateTime _lastModifiedOn;
        private int _lastModifiedBy;
        private int _hotelId;
        private string _barCode;

        public string BarCode
        {
            get { return _barCode; }
            set { _barCode = value; }
        }

        public int BreakageId
        {
            get { return _breakageId; }
            set { _breakageId = value; }
        }
        public DateTime BreakageDate
        {
            get { return _breakageDate; }
            set { _breakageDate = value; }
        }
        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        public int CaseId
        {
            get { return _caseId; }
            set { _caseId = value; }
        }
        public int BreakageQty
        {
            get { return _breakageQty; }
            set { _breakageQty = value; }
        }
        public int TypeId
        {
            get { return _typeId; }
            set { _typeId = value; }
        }
        public DateTime FirstEnteredOn
        {
            get { return _firstEnteredOn; }
            set { _firstEnteredOn = value; }
        }
        public int FirstEnteredBy
        {
            get { return _firstEnteredBy; }
            set { _firstEnteredBy = value; }
        }
        public DateTime LastModifiedOn
        {
            get { return _lastModifiedOn; }
            set { _lastModifiedOn = value; }
        }
        public int LastModifiedBy
        {
            get { return _lastModifiedBy; }
            set { _lastModifiedBy = value; }
        }
        public int HotelId
        {
            get { return _hotelId; }
            set { _hotelId = value; }
        }
    }
}
