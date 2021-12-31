using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BusinessLayer.Master
{
    public class OffshopOpeningStock
    {
        public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            return objDa.GetAllProductCategoryMaster(HotelId, TypeId);
        }

        public DataTable GetAll_ProductSubCategoryName(int HotelId)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            return objDa.GetAll_ProductSubCategoryName(HotelId);
        }

        public DataTable GetAll_ProductName(int CategoryId, int SubCategoryId, int HotelId)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            return objDa.GetAll_ProductName(CategoryId, SubCategoryId, HotelId);

        }
        public DataTable GetAll_SizeOfBottle()
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            return objDa.GetAll_SizeOfBottle();
        }
        public DataTable GetAll_OffshopStock(int CategoryId, int SubCategoryId, int HotelId)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            return objDa.GetAll_OffshopStock(CategoryId, SubCategoryId, HotelId);
        }
        public DataTable GetAll_ById_OffshopStock(int OffshopStockId)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            return objDa.GetAll_ById_OffshopStock(OffshopStockId);
        }

        public void Save(Entity.Master.OffshopOpeningStock objEt)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            objDa.Save(objEt);
        }
        public void Delete(int OffshopStockId)
        {
            DataAccess.Master.OffshopOpeningStock objDa = new DataAccess.Master.OffshopOpeningStock();
            objDa.Delete(OffshopStockId);
        }
    }
}
