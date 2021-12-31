using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class Requition
    {
       public void Save(Entity.Requition objEt)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
            objDa.Save(objEt);
       }
       public void Save_GodownStock_From_Requisition(DateTime CurrentDate)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           objDa.Save_GodownStock_From_Requisition(CurrentDate);
       }
       public void Delete_OffshopStock_GodownStock(int Offshop_GodownStockId, int HotetlId)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           objDa.Delete_OffshopStock_GodownStock(Offshop_GodownStockId, HotetlId);
       }
       public DataTable GetAll_GodownLastQty(int HotelId)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           return objDa.GetAll_GodownLastQty(HotelId);
       }
       public DataTable GetAll_Offshop_Stock(DateTime dt, int HotelId)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           return objDa.GetAll_Offshop_Stock(dt,HotelId);
       }
       public DataTable GetAllOffshopStock_By_Date()
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           return objDa.GetAllOffshopStock_By_Date();
       }
       public DataTable GetAll_Offshop_Stock_DateWise(DateTime dt, int HotelId)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           return objDa.GetAll_Offshop_Stock_DateWise(dt, HotelId);
       }
       public DataTable GetProductDetails_By_Id_Requisition(int ProductId,string Barcode, int HotelId)
       {
           DataAccess.Requition objDa = new DataAccess.Requition();
           return objDa.GetProductDetails_By_Id_Requisition(ProductId,Barcode, HotelId);
       }
    }
}
