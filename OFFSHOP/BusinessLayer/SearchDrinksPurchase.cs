using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer
{
   public class SearchDrinksPurchase
    {
       public DataTable GetAllCreditors()
       {
           DataAccess.SearchDrinksPurchase objDa = new DataAccess.SearchDrinksPurchase();
           return objDa.GetAllCreditors();

       }
       public DataTable GetAllPurchaseMaster(int LedgerId, int HotelId)
       {
           DataAccess.SearchDrinksPurchase objDa = new DataAccess.SearchDrinksPurchase();
           return objDa.GetAllPurchaseMaster(LedgerId,HotelId);

       }
        //public void Save(Entity.Master.BottlePerCase EntityBottlePerCase)
        //{
        //    DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();
        //    DataAccessBottlePerCase.Save(EntityBottlePerCase);

        //}
        //public void Delete(int CaseId)
        //{
        //    DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();

        //    DataAccessBottlePerCase.Delete(CaseId);
        //}

        //public DataTable GetAllSizeOfBottleById(int CaseId)
        //{
        //    DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();
        //    return DataAccessBottlePerCase.GetAllSizeOfBottleById(CaseId);
        //}
    }
}
