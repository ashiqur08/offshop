using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
   public class SearchDrinksPurchase
    {
        //public void Save(Entity.Master.BottlePerCase EntityBottlePerCase)
        //{
        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pCaseId", SqlDbType.Int, EntityBottlePerCase.CaseId);
        //        oDm.Add("@pType", SqlDbType.VarChar, EntityBottlePerCase.Type);
        //        oDm.Add("@pSizeOfBottle", SqlDbType.Int, EntityBottlePerCase.SizeOfBottle);
        //        oDm.Add("@pNoOfBottlePerCase", SqlDbType.Int, EntityBottlePerCase.NoOfBottlePerCase);
        //        oDm.Add("@pFirstEnteredBy", SqlDbType.Int, EntityBottlePerCase.FirstEnteredBy);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        oDm.ExecuteNonQuery("usp_Save_BottlePerCase");

        //    }
        //}

        public DataTable GetAllCreditors()
        {

            using (DataManager oDm = new DataManager())
            {
                
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_LedgerMaster");
            }

        }
        public DataTable GetAllPurchaseMaster(int LedgerId, int HotelId)
        {

            using (DataManager oDm = new DataManager())
            {
                if (LedgerId == 0)
                {
                    oDm.Add("@pLedgerId", SqlDbType.Int, DBNull.Value);
                }
                else
                {
                    oDm.Add("@pLedgerId", SqlDbType.Int, LedgerId);
                }
                   
                    oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                    oDm.CommandType = CommandType.StoredProcedure;
                    return oDm.ExecuteDataTable("usp_GetAll_PurchaseMaster");
                
            }

        }
        //public DataTable GetAllSizeOfBottleById(int CaseId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_GetAll_ById_BottlePerCase");
        //    }
        //}
        //public DataTable Delete(int CaseId)
        //{

        //    using (DataManager oDm = new DataManager())
        //    {
        //        oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
        //        oDm.CommandType = CommandType.StoredProcedure;
        //        return oDm.ExecuteDataTable("usp_Delete_BottlePerCase");
        //    }

        //}

    }
}
