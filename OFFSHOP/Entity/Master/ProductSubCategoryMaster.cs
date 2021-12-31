using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class ProductSubCategoryMaster
    {
        private int _productSubCategoryMasterId;
        private int _typeId;
        private int _hotelId;
        private string _productSubCategoryMasterName;
       
        private int _FirstEnteredBy;

        public int ProductSubCategoryMasterId
        {
            get { return _productSubCategoryMasterId; }
            set { _productSubCategoryMasterId = value; }
        }
        public int TypeId
        {
            get { return _typeId; }
            set { _typeId = value; }
        }
        public string ProductSubCategoryMasterName
        {
            get { return _productSubCategoryMasterName; }
            set { _productSubCategoryMasterName = value; }
        }
        public int HotelId
        {
            get { return _hotelId; }
            set { _hotelId = value; }
        }
     
        public int FirstEnteredBy
        {
            get { return _FirstEnteredBy; }
            set { _FirstEnteredBy = value; }
        }

    }
}
