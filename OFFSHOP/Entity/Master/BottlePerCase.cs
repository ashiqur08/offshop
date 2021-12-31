using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
  public class BottlePerCase
    {
        private int _caseId;
        private string _type;
        private int _sizeOfBottle;
        private int _noOfBottlePerCase;
        private DateTime _firstEnteredOn;
        private int _firstEnteredBy;
        private DateTime _lastModifiedOn;
        private int _lastModifiedBy;

        public int CaseId
        {
            get { return _caseId; }
            set { _caseId = value; }
        }
        public string Type
        {
            get { return _type; }
            set { _type = value; }
        }
        public int SizeOfBottle
        {
            get { return _sizeOfBottle; }
            set { _sizeOfBottle = value; }
        }
        public int NoOfBottlePerCase
        {
            get { return _noOfBottlePerCase; }
            set { _noOfBottlePerCase = value; }
        }
        public DateTime FirstEnteredOn
        {
            get { return _firstEnteredOn; }
            set { _firstEnteredOn = value; }
        }
        //public DateTime FirstEnteredOn
        //{
        //    get { return _firstEnteredOn; }
        //    set { _firstEnteredOn = value; }
        //}
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
    }
}
