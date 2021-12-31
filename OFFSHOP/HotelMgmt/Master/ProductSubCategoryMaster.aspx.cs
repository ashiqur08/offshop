using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;
namespace HotelMgmt.Master
{

    public partial class DrinksSubCategory : System.Web.UI.Page
    {
        public int TypeId
        {
            get { return Convert.ToInt32((ViewState["TypeId"])); }
            set { ViewState["TypeId"] = value; }
        }
        public int ProductSubCategoryMasterId
        {
            get { return Convert.ToInt32(ViewState["ProductSubCategoryMasterId"]); }
            set { ViewState["ProductSubCategoryMasterId"] = value; }
        }
        public int ProductSubCategoryMasterName
        {
            get { return Convert.ToInt32(ViewState["ProductSubCategoryMasterName"]); }
            set { ViewState["ProductSubCategoryMasterName"] = value; }
        }
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }
        public bool Validation(string msg)
        {
            
            if (txtSubCategory.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = msg;
                return false;
            }
            else
            {
                lblError.Visible = false;
                return true;
            }
        }
         protected void Page_Load(object sender, EventArgs e)
         {
             lblError.Visible = false;
             if (!IsPostBack)
             {
                 //------------------
                 BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                 DataTable dt = new DataTable();
                 dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "ProductSubCategoryMaster.aspx");
                 if (dt.Rows.Count >= 0)
                 {
                     if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                     {
                         Response.Redirect("../testing.aspx");
                     }
                 }
                 //-------------------
                 btnUpdate.Enabled = false;
                 btnDelete.Enabled = false;
                 rdbProductSubCategory.SelectedIndex = 0;
                 TypeId = 2;
                 loadGrid();
                 btnInsert.Attributes.Add("onclick", "javascript:return validation('" + txtSubCategory.ClientID + "')");
             }
         }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.ProductSubCategoryMaster objBl = new BusinessLayer.Master.ProductSubCategoryMaster();
                Entity.Master.ProductSubCategoryMaster objEt = new Entity.Master.ProductSubCategoryMaster();
                objEt.ProductSubCategoryMasterId = ProductSubCategoryMasterId;
                objEt.TypeId = TypeId;
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                objEt.ProductSubCategoryMasterName = txtSubCategory.Text.Trim();
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);

                if (Validation("Cant't Left Blank!"))
                {
                    objBl.Save(objEt);
                    // ShowMessage("Record Saved Successfully!");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
                    objEt.ProductSubCategoryMasterId = 0;
                    txtSubCategory.Text = "";
                    loadGrid();
                }
            }
            catch(SqlException ex)
            {
                //ShowMessage("Dupplicate value is not allowed!");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Dupplicate value is not allowed!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.ProductSubCategoryMaster objBl = new BusinessLayer.Master.ProductSubCategoryMaster();
            Entity.Master.ProductSubCategoryMaster objEt = new Entity.Master.ProductSubCategoryMaster();
            objEt.TypeId = TypeId;
            objEt.ProductSubCategoryMasterId = ProductSubCategoryMasterId;
            objEt.ProductSubCategoryMasterName = txtSubCategory.Text.Trim();
            objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);

            if (Validation("Cant't Left Blank!"))
            {
                objBl.Save(objEt);
                //ShowMessage("Record Updated Successfully!");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
                loadGrid();
                ProductSubCategoryMasterId = 0;
                txtSubCategory.Text = "";
                btnInsert.Enabled = true;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ProductSubCategoryMasterId = Convert.ToInt32(gdvSubCategory.DataKeys[e.NewEditIndex].Value);
            btnInsert.Enabled = false;
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;


            BusinessLayer.Master.ProductSubCategoryMaster objBl = new BusinessLayer.Master.ProductSubCategoryMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllSubProductCategoryMasterById(ProductSubCategoryMasterId);
            if (dt.Rows.Count > 0)
            {
                txtSubCategory.Text = dt.Rows[0][1].ToString();

            }
        }
        public void loadGrid()
        {
            BusinessLayer.Master.ProductSubCategoryMaster ObjBl = new BusinessLayer.Master.ProductSubCategoryMaster();
            DataTable dt = new DataTable();
            gdvSubCategory.DataSource = null;
            gdvSubCategory.DataBind();
            dt = ObjBl.GetAllSubProductCategoryMaster(Convert.ToInt32(Session["HotelId"]),TypeId);
            if (dt.Rows.Count >= 0)
            {
                gdvSubCategory.DataSource = dt;
                gdvSubCategory.DataBind();

            }
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            ProductSubCategoryMasterId = 0;
            txtSubCategory.Text = "";
            btnInsert.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.ProductSubCategoryMaster objBl = new BusinessLayer.Master.ProductSubCategoryMaster();

            objBl.Delete(ProductSubCategoryMasterId);

           // ShowMessage("Record Deleted Successfully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            loadGrid();
            //TypeId = 0;
            ProductSubCategoryMasterId = 0;
            

            txtSubCategory.Text = "";
            btnInsert.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
        }

        protected void rdbProductSubCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TypeId = Convert.ToInt32(rdbProductSubCategory.SelectedValue);
            //loadGrid();
        }

       
      
    }
}
