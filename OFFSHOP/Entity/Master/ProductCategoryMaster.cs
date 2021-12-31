using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class ProductCategoryMaster
    {
       private int _productCategoryMasterId;
       private int _typeId;
       private string _productCategoryMasterName;
        private int _HotelId;
        private int _FirstEnteredBy;

        public int ProductCategoryMasterId
        {
            get { return _productCategoryMasterId; }
            set { _productCategoryMasterId = value; }
        }
        public int TypeId
        {
            get { return _typeId; }
            set { _typeId = value; }
        }
        public int HotelId
        {
            get { return _HotelId; }
            set { _HotelId = value; }
        }
        public string ProductCategoryMasterName
        {
            get { return _productCategoryMasterName; }
            set { _productCategoryMasterName = value; }
        }
        public int FirstEnteredBy
        {
            get { return _FirstEnteredBy; }
            set { _FirstEnteredBy = value; }
        }
    }
}
