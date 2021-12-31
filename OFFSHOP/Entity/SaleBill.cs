using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace Entity
{
   public class SaleBill
    {
       //-----------SaveProductMOP---------
        private decimal _cash;
        private decimal _card;
        private decimal _extraChargeOnCard;
        private decimal _due;
       //------------SaveProductDetails-------

       private int _qty;
       private decimal _rate;
       private string _barCode;
       private int _saveProductDetailsId;
       private int _productId;
       //-------SaveProductMaster------------
       private char _occupy;
       private string _complemantry_Remarks;
       private decimal _lSDiscAmt;
       private decimal _billAmt;
       private DateTime _billDate;
       private long _billNo;
       private int _saveProductMasterId;
       private int _hotelId;
       private string _productCode;
       private decimal _gridQuantity;
       private decimal _gridAmount;
       private decimal _gridRate;
       private decimal _billAmount;
       private decimal _total;
       private decimal _lsAmount;
       private decimal _recievableAmount;
       private string _discRemarks;
       private decimal _recievedAmount;
       private decimal _refundAmount;
       private decimal _discPer;
       private decimal _discAmt;
       private DateTime _firstEnteredOn;
       private int _firstEnteredBy;
       private DateTime _lastModifiedOn;
       private int _lastModifiedBy;

       //-----------SaveProductMOP-------------

       public decimal Cash
       {
           get { return _cash; }
           set { _cash = value; }
       }
       public decimal Card
       {
           get { return _card; }
           set { _card = value; }
       }
       public decimal ExtraChargeOnCard
       {
           get { return _extraChargeOnCard; }
           set { _extraChargeOnCard = value; }
       }
       public decimal Due
       {
           get { return _due; }
           set { _due = value; }
       }

       //------------SaveProductDetails-------

       public int ProductId
       {
           get { return _productId; }
           set { _productId = value; }
       }
       public int Qty
       {
           get { return _qty; }
           set { _qty = value; }
       }
       public decimal Rate
       {
           get { return _rate; }
           set { _rate = value; }
       }
       public string BarCode
       {
           get { return _barCode; }
           set { _barCode = value; }
       }
       public int SaveProductDetailsId
       {
           get { return _saveProductDetailsId; }
           set { _saveProductDetailsId = value; }
       }


       //----------SaveProductMaster------------
       public char Occupy
       {
           get { return _occupy; }
           set { _occupy = value; }
       }
       public string DiscRemarks
       {
           get { return _discRemarks; }
           set { _discRemarks = value; }
       }
       public string Complemantry_Remarks
       {
           get { return _complemantry_Remarks; }
           set { _complemantry_Remarks = value; }
       }
       public decimal LSDiscAmt
       {
           get { return _lSDiscAmt; }
           set { _lSDiscAmt = value; }
       }
       public decimal BillAmt
       {
           get { return _billAmt; }
           set { _billAmt = value; }
       }
       public DateTime BillDate
       {
           get { return _billDate; }
           set { _billDate = value; }
       }
       public int SaveProductMasterId
       {
           get { return _saveProductMasterId; }
           set { _saveProductMasterId = value; }
       }
       public long BillNo
       {
           get { return _billNo; }
           set { _billNo = value; }
       }
       public int HotelId
       {
           get { return _hotelId; }
           set { _hotelId = value; }
       }
       public string ProductCode
       {
           get { return _productCode; }
           set { _productCode = value; }
       }
       public decimal GridQuantity
       {
           get { return _gridQuantity; }
           set { _gridQuantity = value; }
       }
       public decimal GridAmount
       {
           get { return _gridAmount; }
           set { _gridAmount = value; }
       }
       public decimal GridRate
       {
           get { return _gridRate; }
           set { _gridRate = value; }
       }
       public decimal BillAmount
       {
           get { return _billAmount; }
           set { _billAmount = value; }
       }
       public decimal Total
       {
           get { return _total; }
           set { _total = value; }
       }
       public decimal LsAmount
       {
           get { return _lsAmount; }
           set { _lsAmount = value; }
       }
       public decimal RecievableAmount
       {
           get { return _recievableAmount; }
           set { _recievableAmount = value; }
       }
       
       public decimal RecievedAmount
       {
           get { return _recievedAmount; }
           set { _recievedAmount = value; }
       }
       public decimal RefundAmount
       {
           get { return _refundAmount; }
           set { _refundAmount = value; }
       }
       public decimal DiscPer
       {
           get { return _discPer; }
           set { _discPer = value; }
       }
       public decimal DiscAmt
       {
           get { return _discAmt; }
           set { _discAmt = value; }
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

       public DateTime lastModifiedOn
       {
           get { return _lastModifiedOn; }
           set { _lastModifiedOn = value; }
       }
       public int LastModifiedBy
       {
           get { return _lastModifiedBy; }
           set { _lastModifiedBy = value; }
       }
       //public decimal Disc
       //{
       //    get { return _disc; }
       //    set { _disc = value; }
       //}
    }


}
