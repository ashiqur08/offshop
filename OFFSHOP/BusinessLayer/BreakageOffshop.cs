using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BusinessLayer
{
    public class BreakageOffshop
    {
        public DataTable GetAll_ProductName_OffshopBreakage(int HotelId)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            return objDa.GetAll_ProductName_OffshopBreakage(HotelId);
        }
        public DataTable GetAll_BottlePerCase()
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            return objDa.GetAll_BottlePerCase();
        }
        public DataTable GetAll_OffshopBreakage(int HotelId)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            return objDa.GetAll_OffshopBreakage(HotelId);
        }
        public DataTable GetAll_ById_OffshopBreakage(int BreakageId)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            return objDa.GetAll_ById_OffshopBreakage(BreakageId);
        }
        public void Delete(int BreakageId)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            objDa.Delete(BreakageId);
        }
        public void Save(Entity.BreakageOffshop objEt)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            objDa.Save(objEt);
        }
        public DataTable GetRate(int ProductId, string Barcode, int HotelId)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            return objDa.GetRate(ProductId, Barcode, HotelId);
        }
        public DataTable GetQty(int ProductId, string Barcode, decimal Rate, int HotelId)
        {
            DataAccess.BreakageOffshop objDa = new DataAccess.BreakageOffshop();
            return objDa.GetQty(ProductId, Barcode, Rate, HotelId);
        }
    }
}
