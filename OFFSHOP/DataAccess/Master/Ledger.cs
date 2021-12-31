using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
   public class Ledger
    {
       public void SaveLedgerGroupMAster()
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Ledger_Group");

           }
       }
       public void Save_LedgerMaster(Entity.Master.Ledger ObjEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pLedger_Id", SqlDbType.Int, ObjEt.Ledger_Id);
               oDm.Add("@pLedger_Group_id", SqlDbType.Int, ObjEt.Ledger_Group_Id);
               oDm.Add("@pLedger_Nm", SqlDbType.VarChar, ObjEt.Ledger_Nm);
               oDm.Add("@pLedger_Op_Bal", SqlDbType.Decimal, ObjEt.Ledger_Op_Bal);
               oDm.Add("@pCreditor_Add", SqlDbType.VarChar, ObjEt.Creditor_Add);
               oDm.Add("@pCreditor_Add2", SqlDbType.VarChar, ObjEt.Creditor_Add2);
               oDm.Add("@pCreditor_Phno", SqlDbType.VarChar, ObjEt.Creditor_Phno);
               oDm.Add("@pCreditor_Remarks", SqlDbType.VarChar, ObjEt.creditor_Remarks);
               oDm.Add("@pHotelId", SqlDbType.Int, ObjEt.HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Save_LedgerMaster");

           }
       }
       public DataTable GetAll_LedgerGroupMaster()
       {

           using (DataManager oDm = new DataManager())
           {
              
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_LedgerGroupMaster");
           }

       }
       public DataTable GetAll_LedgerMaster()
       {

           using (DataManager oDm = new DataManager())
           {

               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_LedgerMaster");
           }

       }

       public DataTable GetAll_LedgerMasterById(int Ledger_Id)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pLedger_Id", SqlDbType.Int, Ledger_Id);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_GetAll_LadgerMaster_ById");
           }
       }
       public DataTable Delete(int Ledger_Id)
       {

           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pLedger_Id", SqlDbType.Int, Ledger_Id);
               oDm.CommandType = CommandType.StoredProcedure;
               return oDm.ExecuteDataTable("usp_Delete_LedgerMaster");
           }

       }

    }
}
