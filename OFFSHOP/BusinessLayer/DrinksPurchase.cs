using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLayer
{
   public class DrinksPurchase
    {

       public DataTable GetAll_LedgerMaster()
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.GetAll_LedgerMaster();
           
           
       }
       public DataTable GetAll_ProductMaster(int HotelId)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.GetAll_ProductMaster(HotelId);


       }
       public DataTable GetAll_PurchaseDetails(int PurchaseId)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.GetAll_PurchaseDetails(PurchaseId);
       }
       public DataSet GetAll_ById_PurchaseMaster(int PurchaseId)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.GetAll_ById_PurchaseMaster(PurchaseId);
       }
       public DataTable GetAll_BottlePerCase()
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.GetAll_BottlePerCase();
       }
       public DataTable GetNoOfBottle(int GetNoOfBottle)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.GetNoOfBottle(GetNoOfBottle);
       }
       //public void Save(Entity.Master.DrinksPurchase objEt)
       //{
       //    DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
       //    objDa.Save(objEt);
       //}
       public DataTable SavePurchaseDetails(Entity.Master.DrinksPurchase objEt)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           return objDa.SavePurchaseDetails(objEt);
       }
        //public void Delete(int ProductCategoryMasterId)
        //{
        //    DataAccess.Master.ProductCategoryMaster objDa = new DataAccess.Master.ProductCategoryMaster();
        //    objDa.Delete(ProductCategoryMasterId);
        //}

       public void Delete(int PurchaseDetailsId)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
            objDa.Delete(PurchaseDetailsId);
       }
       public void DeleteMaster(int PurchaseId)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           objDa.DeleteMaster(PurchaseId);
       }
       public void DeleteTempPurchaseMaster(int PurchaseId)
       {
           DataAccess.DrinksPurchase objDa = new DataAccess.DrinksPurchase();
           objDa.DeleteTempPurchaseMaster(PurchaseId);
       }

    }
}
