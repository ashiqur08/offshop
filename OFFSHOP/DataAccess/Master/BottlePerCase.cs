using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess.Master
{
    public class BottlePerCase
    {
        public void Save(Entity.Master.BottlePerCase EntityBottlePerCase)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCaseId", SqlDbType.Int, EntityBottlePerCase.CaseId);
                oDm.Add("@pType", SqlDbType.VarChar, EntityBottlePerCase.Type);
                oDm.Add("@pSizeOfBottle", SqlDbType.Int, EntityBottlePerCase.SizeOfBottle);
                oDm.Add("@pNoOfBottlePerCase", SqlDbType.Int, EntityBottlePerCase.NoOfBottlePerCase);
                oDm.Add("@pFirstEnteredBy", SqlDbType.Int, EntityBottlePerCase.FirstEnteredBy);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_BottlePerCase");

            }
        }

        public DataTable GetAllSizeOfBottle()
        {

            using (DataManager oDm = new DataManager())
            {
                // oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_BottlePerCase");
            }

        }
        public DataTable GetAllSizeOfBottleById(int CaseId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_BottlePerCase");
            }
        }
        public DataTable Delete(int CaseId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCaseId", SqlDbType.Int, CaseId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_Delete_BottlePerCase");
            }

        }
    }
}
