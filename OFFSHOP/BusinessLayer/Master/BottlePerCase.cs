using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class BottlePerCase
    {
       public DataTable GetAllSizeOfBottle()
        {
            DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();
            return DataAccessBottlePerCase.GetAllSizeOfBottle();
           
        }
       public void Save(Entity.Master.BottlePerCase EntityBottlePerCase)
        {
            DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();
            DataAccessBottlePerCase.Save(EntityBottlePerCase);
           
        }
        public void Delete(int CaseId)
        {
            DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();

            DataAccessBottlePerCase.Delete(CaseId);
        }

        public DataTable GetAllSizeOfBottleById(int CaseId)
        {
            DataAccess.Master.BottlePerCase DataAccessBottlePerCase = new DataAccess.Master.BottlePerCase();
            return DataAccessBottlePerCase.GetAllSizeOfBottleById(CaseId);
        }
        //public DataTable LoadDataTable(string SQLSTR)
        //{
        //    DataAccess.Master.OutletMaster OutletMasterDataAcces = new DataAccess.Master.OutletMaster();
        //    return OutletMasterDataAcces.LoadDataTable(SQLSTR);
        //}

    }
}
