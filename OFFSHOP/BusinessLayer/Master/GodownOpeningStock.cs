using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class GodownOpeningStock
    {
       public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
       }

       public DataTable GetAll_ProductSubCategoryName(int HotelId)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           return objDa.GetAll_ProductSubCategoryName(HotelId);
       }

       public DataTable GetAll_ProductName( int CategoryId, int SubCategoryId,int HotelId)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           return objDa.GetAll_ProductName( CategoryId, SubCategoryId,HotelId);
           
       }
       public DataTable GetAll_SizeOfBottle()
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           return objDa.GetAll_SizeOfBottle();
       }
       public DataTable GetAll_GodownStock(int CategoryId, int SubCategoryId, int HotelId)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           return objDa.GetAll_GodownStock(CategoryId, SubCategoryId,HotelId);
       }
       public DataTable GetAll_ById_GodownStock(int GodownStockId)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           return objDa.GetAll_ById_GodownStock(GodownStockId);
       }

       public void Save(Entity.Master.GodownOpeningStock objEt)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           objDa.Save(objEt);
       }
       public void Delete(int GodownStockId)
       {
           DataAccess.Master.GodownOpeningStock objDa = new DataAccess.Master.GodownOpeningStock();
           objDa.Delete(GodownStockId);
       }
        //public DataTable GetAllUnitMaster(int HotelId)
        //{
        //    DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
        //    return objDa.GetAllUnitMaster(HotelId);
        //}
        //public DataTable GetAllProductMaster(int HotelId, int TypeId)
        //{
        //    DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
        //    return objDa.GetAllProductMaster(HotelId, TypeId);
        //}

        //public void Delete(int ProductId)
        //{
        //    DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
        //    objDa.Delete(ProductId);
        //}

        //public DataTable GetAllProductMasterById(int ProductId)
        //{
        //    DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
        //    return objDa.GetAllProductMasterById(ProductId);
        //}
        //public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
        //{
        //    DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
        //    return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
        //}
        //public DataTable GetAllSubProductCategoryMaster(int HotelId, int TypeId)
        //{
        //    DataAccess.Master.ProductMaster objDa = new DataAccess.Master.ProductMaster();
        //    return objDa.GetAllSubProductCategoryMaster(HotelId, TypeId);
        //}


    }
}
