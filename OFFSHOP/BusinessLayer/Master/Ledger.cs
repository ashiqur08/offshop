using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BusinessLayer.Master
{
   public class Ledger
    {
       public void SaveLedgerGroupMAster()
       {
           DataAccess.Master.Ledger objDa = new DataAccess.Master.Ledger();
           objDa.SaveLedgerGroupMAster();
       }
       public DataTable GetAll_LedgerGroupMaster()
       {
           DataAccess.Master.Ledger objDa = new DataAccess.Master.Ledger();
           return objDa.GetAll_LedgerGroupMaster();
       }
       public DataTable GetAll_LedgerMaster()
       {
           DataAccess.Master.Ledger objDa = new DataAccess.Master.Ledger();
           return objDa.GetAll_LedgerMaster();
       }
       public void Save_LedgerMaster(Entity.Master.Ledger objEt)
       {
           DataAccess.Master.Ledger objDa = new DataAccess.Master.Ledger();
           objDa.Save_LedgerMaster(objEt);
       }
       public void Delete(int Ledger_Id)
       {
           DataAccess.Master.Ledger objDa = new DataAccess.Master.Ledger();
           objDa.Delete(Ledger_Id);
       }

       public DataTable GetAll_LedgerMasterById(int Ledger_Id)
       {
           DataAccess.Master.Ledger objDa = new DataAccess.Master.Ledger();
           return objDa.GetAll_LedgerMasterById(Ledger_Id);
       }

    }
}
