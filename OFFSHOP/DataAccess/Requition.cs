using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class Requition
    {
       public void Save(Entity.Requition objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pGodownStockId", SqlDbType.Int, objEt.GodownStockId);
               oDm.Add("@ProductId", SqlDbType.Int, objEt.ProductId);
               oDm.Add("@pSizeOfBottle", SqlDbType.Int, objEt.SizeOfBottle);
               oDm.Add("@pQty", SqlDbType.Int, objEt.Qty);
               oDm.Add("@pBarCode", SqlDbType.VarChar, objEt.BarCode);
               oDm.Add("@pPurchaseRate", SqlDbType.Int, objEt.PurchaseRate);
               oDm.Add("@pMRP", SqlDbType.Int, objEt.MRP);
               oDm.Add("@pTotalAmount", SqlDbType.Int, objEt.TotalAmount);
               oDm.Add("@Status", SqlDbType.Char, objEt.Status);
               oDm.Add("@pMainId", SqlDbType.Int, objEt.MainId);
               
               oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
               
               oDm.Add("@pLastModifiedBy", SqlDbType.Int, objEt.LastModifiedBy);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Requisition");
           }
       }
       public void Save_GodownStock_From_Requisition(DateTime CurrentDate)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pCurrentDate", SqlDbType.DateTime,CurrentDate);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Save_GodownStock_From_Requisition");
           }
       }
       public void Delete_OffshopStock_GodownStock(int Offshop_GodownStockId, int HotetlId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pOffshop_GodownStockId", SqlDbType.Int, Offshop_GodownStockId);
               oDm.Add("@pHotetlId", SqlDbType.Int, HotetlId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Delete_OffshopStock_GodownStock");
           }
       }
       public DataTable GetAll_GodownLastQty(int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_GodownLastQty");
           }

       }
       public DataTable GetAll_Offshop_Stock(DateTime dt,int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pToday", SqlDbType.DateTime, dt);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);

               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_Offshop_Stock");
           }

       }
       public DataTable GetAllOffshopStock_By_Date()
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAllOffshopStock_By_Date");
           }

       }
       public DataTable GetAll_Offshop_Stock_DateWise(DateTime dt, int HotelId)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pDate", SqlDbType.DateTime, dt);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_Offshop_Stock_DateWise");
           }

       }
       public DataTable GetProductDetails_By_Id_Requisition(int ProductId,string Barcode, int HotelId)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pProductId", SqlDbType.Int, ProductId);
               oDm.Add("@pBarcode", SqlDbType.VarChar,50, Barcode);
               oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetProductDetails_By_Id_Requisition");
           }
       }
    }
}
