using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLayer
{
    public class Breakage
    {
        public DataTable GetAll_ProductName_Breakage(int HotelId)
        {
          
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            return objDa.GetAll_ProductName_Breakage(HotelId);
        }

        public DataTable GetAll_BottlePerCase()
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            return objDa.GetAll_BottlePerCase();
        }
        public DataTable GetAll_GodownBreakage(int HotelId)
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            return objDa.GetAll_GodownBreakage(HotelId);
        }
        public DataTable GetAll_ById_GodownBreakage(int BreakageId)
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            return objDa.GetAll_ById_GodownBreakage(BreakageId);
        }
        public void Delete(int BreakageId)
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            objDa.Delete(BreakageId);
        }
        public void Save(Entity.Breakage objEt)
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            objDa.Save(objEt);
        }
        public DataTable GetRate(int ProductId, string Barcode, int HotelId)
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            return objDa.GetRate(ProductId, Barcode,HotelId);
        }
        public DataTable GetQty(int ProductId, string Barcode, decimal Rate, int HotelId)
        {
            DataAccess.Breakage objDa = new DataAccess.Breakage();
            return objDa.GetQty(ProductId, Barcode, Rate, HotelId);
        }
     }
}
    

