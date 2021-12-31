using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class ProductCategoryMaster
    {
       public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.Master.ProductCategoryMaster objDa = new DataAccess.Master.ProductCategoryMaster();
           return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
       }
        public void Save(Entity.Master.ProductCategoryMaster objEt)
        {
            DataAccess.Master.ProductCategoryMaster objDa = new DataAccess.Master.ProductCategoryMaster();
            objDa.Save(objEt);
        }
        public void Delete(int ProductCategoryMasterId)
        {
            DataAccess.Master.ProductCategoryMaster objDa = new DataAccess.Master.ProductCategoryMaster();
            objDa.Delete(ProductCategoryMasterId);
        }

        public DataTable GetAllProductCategoryMasterById(int ProductCategoryMasterId)
        {
            DataAccess.Master.ProductCategoryMaster objDa = new DataAccess.Master.ProductCategoryMaster();
            return objDa.GetAllProductCategoryMasterById(ProductCategoryMasterId);
        }
    }
}
