using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
    public class ProductSubCategoryMaster
    {
        public void Save(Entity.Master.ProductSubCategoryMaster objEt)
        {
            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pSubCategoryId", SqlDbType.Int, objEt.ProductSubCategoryMasterId);
                oDm.Add("@pSubCategoryName", SqlDbType.VarChar, objEt.ProductSubCategoryMasterName);
                oDm.Add("@pTypeId", SqlDbType.Int, objEt.TypeId);
                oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
                oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);

                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Save_ProductSubCategoryMaster");

            }
        }
        public DataTable GetAllSubProductCategoryMaster(int HotelId,int TypeId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.Add("@pTypeId", SqlDbType.Int, TypeId);

                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ProductSubCategoryMaster");
            }

        }
        public DataTable GetAllSubProductCategoryMasterById(int ProductSubCategoryMasterId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pSubCategoryId", SqlDbType.Int, ProductSubCategoryMasterId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_ProductSubCategoryMaster");
            }
        }
        public void Delete(int ProductSubCategoryMasterId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pSubCategoryId", SqlDbType.Int, ProductSubCategoryMasterId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_ProductSubCategoryMaster");
            }

        }

    }
}

