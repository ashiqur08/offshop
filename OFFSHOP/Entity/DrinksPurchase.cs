using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class DrinksPurchase
   {
      // private int _purchaseDetailsId;
       private int _purchaseId;
       private decimal _grandDisc;
       private int _totRebateBottle;
       private decimal _grandTotalMRP;
       private decimal _grandTotalBottle;
       private int _purchaseDetailsId;
       private decimal _mRPBottle;
       private int _rebateBottle;
       private int _rebateCase;
       private int _purchaseBottle;
       private int _purchaseCase;
       private string _barCode;
       private string _batchNo;
       private decimal _netAmount;
       private decimal _tcs;
       private decimal _specialDiscount;
       private decimal _eduCess;
       private decimal _eduCessAmt;
       private decimal _sTaxOnTotalMRPAmt;
       private decimal _sTaxOnTotalMRPPer;
       private string _excisePassNo;
       private int _ledgerId;
       private DateTime _purchaseDate;
      // private int _purchaseId;
       private string _invoiceNo;
       private DateTime _invoiceDate;
       private int _productId;
       private int _totNoOfBtlWithRebate;
       private int _totNoOfBtl;
       private decimal _totRate;
       private decimal _discount;
       private decimal _totDiscount;
       private decimal _totMrp;
       private decimal _totGross;
       private string _productName;
       private int _categoryId;
       private int _subCategoryId;
       private int _caseId;
       private decimal _rate;
       //private decimal _totalAmount;
       private DateTime _firstEnteredOn;
       private int _firstEnteredBy;
       private DateTime _lastModifiedOn;
       private int _lastModifiedBy;
       private int _hotelId;
       public int PurchaseId
       {
           get { return _purchaseId; }
           set { _purchaseId = value; }
       }
       public int PurchaseDetailsId
       {
           get { return _purchaseDetailsId; }
           set { _purchaseDetailsId = value; }
       }
       public decimal GrandDisc
       {
           get { return _grandDisc; }
           set { _grandDisc = value; }
       }
       public int TotRebateBottle
       {
           get { return _totRebateBottle; }
           set { _totRebateBottle = value; }
       }
       public decimal GrandTotalMRP
       {
           get { return _grandTotalMRP; }
           set { _grandTotalMRP = value; }
       }
       public decimal GrandTotalBottle
       {
           get { return _grandTotalBottle; }
           set { _grandTotalBottle = value; }
       }
       //public int PurchaseDetailsId
       //{
       //    get { return _purchaseDetailsId; }
       //    set { _purchaseDetailsId = value; }
       //}
       public decimal MRPBottle
       {
           get { return _mRPBottle; }
           set { _mRPBottle = value; }
       }
       public int RebateBottle
       {
           get { return _rebateBottle; }
           set { _rebateBottle = value; }
       }
       public int RebateCase
       {
           get { return _rebateCase; }
           set { _rebateCase = value; }
       }
       public int PurchaseBottle
       {
           get { return _purchaseBottle; }
           set { _purchaseBottle = value; }
       }
       public int PurchaseCase
       {
           get { return _purchaseCase; }
           set { _purchaseCase = value; }
       }
       public string BarCode
       {
           get { return _barCode; }
           set { _barCode = value; }
       }
       public string BatchNo
       {
           get { return _batchNo; }
           set { _batchNo = value; }
       }
       public decimal NetAmount
       {
           get { return _netAmount; }
           set { _netAmount = value; }
       }
       public decimal TCS
       {
           get { return _tcs; }
           set { _tcs = value; }
       }
       public decimal SpecialDiscount
       {
           get { return _specialDiscount; }
           set { _specialDiscount = value; }
       }
       public decimal EduCess
       {
           get { return _eduCess; }
           set { _eduCess = value; }
       }
       public decimal EduCessAmt
       {
           get { return _eduCessAmt; }
           set { _eduCessAmt = value; }
       }
       public decimal STaxOnTotalMRPAmt
       {
           get { return _sTaxOnTotalMRPAmt; }
           set { _sTaxOnTotalMRPAmt = value; }
       }
       public decimal STaxOnTotalMRPPer
       {
           get { return _sTaxOnTotalMRPPer; }
           set { _sTaxOnTotalMRPPer = value; }
       }
       public string ExcisePassNo
       {
           get { return _excisePassNo; }
           set { _excisePassNo = value; }
       }
       public int LedgerId
       {
           get { return _ledgerId; }
           set { _ledgerId = value; }
       }
       public DateTime PurchaseDate
       {
           get { return _purchaseDate; }
           set { _purchaseDate = value; }
       }
       //public int PurchaseId
       //{
       //    get { return _purchaseId; }
       //    set { _purchaseId = value; }
       //}
       public string InvoiceNo
       {
           get { return _invoiceNo; }
           set { _invoiceNo = value; }
       }
       public DateTime InvoiceDate
       {
           get { return _invoiceDate; }
           set { _invoiceDate = value; }
       }
       public int TotNoOfBtlWithRebate
       {
           get { return _totNoOfBtlWithRebate; }
           set { _totNoOfBtlWithRebate = value; }
       }
       public int TotNoOfBtl
       {
           get { return _totNoOfBtl; }
           set { _totNoOfBtl = value; }
       }
       public decimal TotRate
       {
           get { return _totRate; }
           set { _totRate = value; }
       }
       public decimal Discount
       {
           get { return _discount; }
           set { _discount = value; }
       }
       public decimal TotDiscount
       {
           get { return _totDiscount; }
           set { _totDiscount = value; }
       }
       public decimal TotMrp
       {
           get { return _totMrp; }
           set { _totMrp = value; }
       }
       public decimal TotGross
       {
           get { return _totGross; }
           set { _totGross = value; }
       }
       public int ProductId
       {
           get { return _productId; }
           set { _productId = value; }
       }
       public string ProductName
       {
           get { return _productName; }
           set { _productName = value; }
       }
       public int CategoryId
       {
           get { return _categoryId; }
           set { _categoryId = value; }
       }
       public int SubCategoryId
       {
           get { return _subCategoryId; }
           set { _subCategoryId = value; }
       }
       public int CaseId
       {
           get { return _caseId; }
           set { _caseId = value; }
       }
       public decimal Rate
       {
           get { return _rate; }
           set { _rate = value; }
       }
       //public decimal TotalAmount
       //{
       //    get { return _totalAmount; }
       //    set { _totalAmount = value; }
       //}
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

