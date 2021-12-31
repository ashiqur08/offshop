using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
    public class ProductCategoryMaster
    {
        public void Save(Entity.Master.ProductCategoryMaster objEt)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCategoryId", SqlDbType.Int, objEt.ProductCategoryMasterId);
                oDm.Add("@pCategoryName", SqlDbType.VarChar, objEt.ProductCategoryMasterName);
                oDm.Add("@pTypeId", SqlDbType.Int, objEt.TypeId);
                oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
                oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_ProductCategoryMaster");

            }
        }
        public DataTable GetAllProductCategoryMaster(int HotelId, int TypeId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.Add("@pTypeId", SqlDbType.Int, TypeId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ProductCategoryMaster");
            }

        }
        public DataTable GetAllProductCategoryMasterById(int ProductCategoryMasterById)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCategoryId", SqlDbType.Int, ProductCategoryMasterById);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_ProductCategoryMaster");
            }
        }
        public void Delete(int ProductCategoryMasterId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pCategoryId", SqlDbType.Int, ProductCategoryMasterId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_ProductCategoryMaster");
            }

        }
    }
}

