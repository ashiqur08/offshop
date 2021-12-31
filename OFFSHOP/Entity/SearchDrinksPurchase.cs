using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
   public class SearchDrinksPurchase
    {
        private int _purchaseId;
        private int _creditorsId;
        private int _ledgerId;

        public int PurchaseId
        {
            get { return _purchaseId; }
            set { _purchaseId = value; }
        }
        public int CreditorsId
        {
            get { return _creditorsId; }
            set { _creditorsId = value; }
        }
        public int LedgerId
        {
            get { return _ledgerId; }
            set { _ledgerId = value; }
        }
        //public string Type
        //{
        //    get { return _type; }
        //    set { _type = value; }
        //}
        //public int SizeOfBottle
        //{
        //    get { return _sizeOfBottle; }
        //    set { _sizeOfBottle = value; }
        //}
        //public int NoOfBottlePerCase
        //{
        //    get { return _noOfBottlePerCase; }
        //    set { _noOfBottlePerCase = value; }
        //}
        //public DateTime FirstEnteredOn
        //{
        //    get { return _firstEnteredOn; }
        //    set { _firstEnteredOn = value; }
        //}
        ////public DateTime FirstEnteredOn
        ////{
        ////    get { return _firstEnteredOn; }
        ////    set { _firstEnteredOn = value; }
        ////}
        //public int FirstEnteredBy
        //{
        //    get { return _firstEnteredBy; }
        //    set { _firstEnteredBy = value; }
        //}

        //public DateTime lastModifiedOn
        //{
        //    get { return _lastModifiedOn; }
        //    set { _lastModifiedOn = value; }
        //}
        //public int LastModifiedBy
        //{
        //    get { return _lastModifiedBy; }
        //    set { _lastModifiedBy = value; }
        //}

    }
}
