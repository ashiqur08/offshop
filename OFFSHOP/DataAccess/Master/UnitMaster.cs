using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess.Master
{
    public class UnitMaster
    {
        public void Save(Entity.Master.UnitMaster UnitEntity)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pUnitId", SqlDbType.Int, 4, UnitEntity.UnitId);
                oDm.Add("@pUnitName", SqlDbType.VarChar, 100, UnitEntity.UnitName);
                oDm.Add("@pFirstEnteredBy", SqlDbType.Int, 4, UnitEntity.FirstEnteredBy);
                oDm.Add("@pHotelId", SqlDbType.Int, 4, UnitEntity.HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_UnitMaster");

            }
        }
        public DataTable GetAllUnit(int HotelId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_Unit");
            }

        }
        public DataTable GetUnitEditById(int UnitId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pUnitId", SqlDbType.Int, UnitId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_Unit");
            }

        }
        public DataTable DeleteUnitMasterById(int UnitId)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pUnitId", SqlDbType.Int, UnitId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_Delete_Unit");
            }
        }
    }
}
