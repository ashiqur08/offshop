using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class ProductMaster 
    {
       public void Save(Entity.Master.ProductMaster objEt)
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           objDa.Save(objEt);
       }
       public DataTable GetAllUnitMaster(int HotelId)
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           return objDa.GetAllUnitMaster(HotelId);
       }
       public DataTable GetAllSizeOfBottle()
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           return objDa.GetAllSizeOfBottle();
       }
       public DataTable GetAllProductMaster(int HotelId,int TypeId)
       {
          DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
          return objDa.GetAllProductMaster(HotelId, TypeId);
       }

       public void Delete(int ProductId)
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           objDa.Delete(ProductId);
       }

       public DataTable GetAllProductMasterById(int ProductId)
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           return objDa.GetAllProductMasterById(ProductId);
       }
       public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
       }
       public DataTable GetAllSubProductCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
           return objDa.GetAllSubProductCategoryMaster(HotelId, TypeId);
       }

    }
}
