using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class ProductSubCategoryMaster
    {
       public void Save(Entity.Master.ProductSubCategoryMaster objEt)
       {
           DataAccess.Master.ProductSubCategoryMaster objDa = new DataAccess.Master.ProductSubCategoryMaster();
           objDa.Save(objEt);
       }
       public DataTable GetAllSubProductCategoryMaster(int HotelId,int TypeId)
       {
           DataAccess.Master.ProductSubCategoryMaster objDa = new DataAccess.Master.ProductSubCategoryMaster();
           return objDa.GetAllSubProductCategoryMaster(HotelId, TypeId);
       }

       public void Delete(int ProductSubCategoryMasterId)
       {
           DataAccess.Master.ProductSubCategoryMaster objDa = new DataAccess.Master.ProductSubCategoryMaster();
           objDa.Delete(ProductSubCategoryMasterId);
       }

       public DataTable GetAllSubProductCategoryMasterById(int ProductSubCategoryMasterId)
       {
           DataAccess.Master.ProductSubCategoryMaster objDa = new DataAccess.Master.ProductSubCategoryMaster();
           return objDa.GetAllSubProductCategoryMasterById(ProductSubCategoryMasterId);
       }

    }
}
