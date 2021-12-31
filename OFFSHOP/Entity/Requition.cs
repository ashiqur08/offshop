using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
   public class Requition
    {
        private int _godownStockId;
        private int _productId;
        private int _sizeOfBottle;
        private int _qty;
        private string _barCode;
        private int _purchaseRate;
        private int _mrp;
        private decimal _totalAmount;
        private char _status;
        private int mainId;
        private DateTime _firstEnteredOn;
        private int _firstEnteredBy;
        private DateTime _lastModifiedOn;
        private int _lastModifiedBy;
        private int _hotelId;

        public int GodownStockId
        {
            get { return _godownStockId; }
            set { _godownStockId = value; }
        }

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        public int SizeOfBottle
        {
            get { return _sizeOfBottle; }
            set { _sizeOfBottle = value; }
        }
        public int Qty
        {
            get { return _qty; }
            set { _qty = value; }
        }
        public string BarCode
        {
            get { return _barCode; }
            set { _barCode = value; }
        }

        public int PurchaseRate
        {
            get { return _purchaseRate; }
            set { _purchaseRate = value; }
        }
        public int MRP
        {
            get { return _mrp; }
            set { _mrp = value; }
        }

        public decimal TotalAmount
        {
            get { return _totalAmount; }
            set { _totalAmount = value; }
        }
        public char Status
        {
            get { return _status; }
            set { _status = value; }
        }
        public int MainId
        {
            get { return mainId; }
            set { mainId = value; }
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
