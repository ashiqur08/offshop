using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class ProductMaster
    {
       private int _caseId;
       private decimal _rate;
        private int _productId;
        private int _sizeOfBtll;
        private string _productName;
        private int _categoryId;
        private int _subCategoryId;
        private int _typeId;
        private int _unitId;
        private int _firstEnteredBy;
        private int _hotelId;
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
        public decimal Rate
        {
            get { return _rate; }
            set { _rate = value; }
        }
        public int SizeOfBtll
        {
            get { return _sizeOfBtll; }
            set { _sizeOfBtll = value; }
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
        public int TypeId
        {
            get { return _typeId; }
            set { _typeId = value; }
        }
        public int UnitId
        {
            get { return _unitId; }
            set { _unitId = value; }
        }
        public int FirstEnteredBy
        {
            get { return _firstEnteredBy; }
            set { _firstEnteredBy = value; }
        }
        public int HotelId
        {
            get { return _hotelId; }
            set { _hotelId = value; }
        }
      

    }
}
