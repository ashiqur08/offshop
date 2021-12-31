using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BusinessLayer.Master
{
    public class UnitMaster
    {
        public DataTable GetAllUnitMaster(int HotelId)
        {
            DataAccess.Master.UnitMaster OutletMasterDataAccess = new DataAccess.Master.UnitMaster();
            return OutletMasterDataAccess.GetAllUnit(HotelId);
        }
        public void Save(Entity.Master.UnitMaster UnitMasterEntity)
        {
            DataAccess.Master.UnitMaster UnitMasterDataAccess = new DataAccess.Master.UnitMaster();
            UnitMasterDataAccess.Save(UnitMasterEntity);
        }

        public DataTable GetUnitMasterEditById(int UnitId)
        {
            DataAccess.Master.UnitMaster UnitMasterDataAccess = new DataAccess.Master.UnitMaster();
            return UnitMasterDataAccess.GetUnitEditById(UnitId);
        }
        public DataTable DeleteUnitMasterById(int UnitId)
        {
            DataAccess.Master.UnitMaster UnitMasterDataAccess = new DataAccess.Master.UnitMaster();
            return UnitMasterDataAccess.DeleteUnitMasterById(UnitId);
        }
        //public DataTable LoadDataTable(string SQLSTR)
        //{
        //    DataAccess.Master.UnitMaster UnitMasterDataAcces = new DataAccess.Master.UnitMaster();
        //    return UnitMasterDataAcces.LoadDataTable(SQLSTR);
        //}
    }
}
