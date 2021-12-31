using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess.Master
{
   public class ProductMaster
    {
       public void Save(Entity.Master.ProductMaster objEt)
       {
           using (DataManager oDm = new DataManager())
           {
               oDm.Add("@pProductId", SqlDbType.Int, objEt.ProductId);
               oDm.Add("@pProductName", SqlDbType.VarChar, objEt.ProductName);
               oDm.Add("@pCategoryId", SqlDbType.Int, objEt.CategoryId);
               oDm.Add("@pSubCategoryId", SqlDbType.Int, objEt.SubCategoryId);
               oDm.Add("@pCaseId", SqlDbType.Int, objEt.CaseId);
              
               oDm.Add("@pRate", SqlDbType.Int, objEt.Rate);
               oDm.Add("@pFirstEnteredBy", SqlDbType.Int, objEt.FirstEnteredBy);
               oDm.Add("@pHotelId", SqlDbType.Int, objEt.HotelId);
               oDm.CommandType = CommandType.StoredProcedure;
               oDm.ExecuteNonQuery("usp_Save_ProductMaster");

           }
       }
        public DataTable GetAllUnitMaster(int HotelId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_Unit");
            }

        }
        public DataTable GetAllProductMaster(int HotelId,int TypeId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                //oDm.Add("@pTypeId", SqlDbType.Int, TypeId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ProductMaster");
            }

        }
        public DataTable GetAllProductMasterById(int ProductId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pProductId", SqlDbType.Int, ProductId);
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ById_ProductMaster");
            }
        }
        public void Delete(int ProductId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pProductId", SqlDbType.Int, ProductId);
                oDm.CommandType = CommandType.StoredProcedure;
                oDm.ExecuteNonQuery("usp_Delete_ProductMaster");
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
        public DataTable GetAllSubProductCategoryMaster(int HotelId, int TypeId)
        {

            using (DataManager oDm = new DataManager())
            {
                oDm.Add("@pHotelId", SqlDbType.Int, HotelId);
                oDm.Add("@pTypeId", SqlDbType.Int, TypeId);

                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAll_ProductSubCategoryMaster");
            }

        }
        public DataTable GetAllSizeOfBottle()
        {

            using (DataManager oDm = new DataManager())
            {
                
                oDm.CommandType = CommandType.StoredProcedure;
                return oDm.ExecuteDataTable("usp_GetAllSizeOfBottle");
            }

        }
    }
}
