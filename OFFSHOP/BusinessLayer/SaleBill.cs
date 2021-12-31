using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class SaleBill
    {

       //public void Save(Entity.SaleBill objEt)
       //{
       //    DataAccess.SaleBill objDa = new DataAccess.SaleBill();
       //    objDa.Save(objEt);
       //}
       public DataTable Save(Entity.SaleBill objEt)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.Save(objEt);
       }
       public DataTable GetAll_SaveProductName(int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetAll_SaveProductName(HotelId);

       }
       public DataTable GetAll_SaveProductNameBY_Barcode(string Barcode, int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetAll_SaveProductNameBY_Barcode(Barcode,HotelId);

       }
       public DataTable GetRate(int ProductId, string Barcode)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetRate(ProductId, Barcode);

       }
       public DataTable GetProductByCode(string ProductCode, int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetProductByCode(ProductCode,HotelId);

       }
       public DataSet GetAll_ById_SaveProductMaster(int SaveProductMasterId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetAll_ById_SaveProductMaster(SaveProductMasterId);

       }
       public DataTable GetAll_MaxBill(int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetAll_MaxBill(HotelId);

       }
       public DataTable GetAll_SaveProductDetails(int SaveProductMasterId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetAll_SaveProductDetails(SaveProductMasterId);

       }
       public DataTable GetAll_BillNo_ById_SaveProductMaster(int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetAll_BillNo_ById_SaveProductMaster(HotelId);

       }
       public void Update_SaveProductDetails(int SaveProductDetailsId, int Qty, decimal Amount)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           objDa.Update_SaveProductDetails(SaveProductDetailsId, Qty, Amount);
       }
       public void Update_SaveProductMaster_For_Occupy(int SaveProductMasterId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           objDa.Update_SaveProductMaster_For_Occupy(SaveProductMasterId);
       }
       public void Delete(int SaveProductDetailsId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();

           objDa.Delete(SaveProductDetailsId);
       }
       public void DeleteOccupiedItem(int HotelId, int SaveProductMasterId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();

           objDa.DeleteOccupiedItem(HotelId, SaveProductMasterId);
       }

        //public DataTable GetAllSizeOfBottleById(int CaseId)
        //{
        //    DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();
        //    return DataAccessBottlePerCase.GetAllSizeOfBottleById(CaseId);
        //}
       public DataTable GetLastQty(DateTime dt, int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.GetLastQty(dt,HotelId);

       }
       public DataTable Getall_SaveProductMaster_By_BillNo(long BillNo, int HotelId)
       {
           DataAccess.SaleBill objDa = new DataAccess.SaleBill();
           return objDa.Getall_SaveProductMaster_By_BillNo(BillNo, HotelId);

       }

    }
}
