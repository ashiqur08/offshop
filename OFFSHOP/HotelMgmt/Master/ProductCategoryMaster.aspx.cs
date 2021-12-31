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
    public partial class DrinksCategoryMaster : System.Web.UI.Page
    {
        public int ProductCategoryMasterId
        {
            get { return Convert.ToInt32(ViewState["DrinksCategoryId"]); }
            set { ViewState["DrinksCategoryId"] = value; }
        }
        public string ProductCategoryMasterName
        {
            get { return Convert.ToString((ViewState["DrinksCategoryName"])); }
            set { ViewState["DrinksCategoryName"] = value; }
        }
        public int TypeId
        {
            get { return Convert.ToInt32((ViewState["TypeId"])); }
            set { ViewState["TypeId"] = value; }
        }
        public bool Validation(string msg)
        {

            if (txtCategoryName.Text == "")
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
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "ProductCategoryMaster.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("../testing.aspx");
                    }
                }
                //-------------------
                lblError.Visible = false;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                rdbCategory.SelectedIndex = 0;
                TypeId = 2;
                loadGrid();
                btnInsert.Attributes.Add("onclick", "javascript:return validation('" + txtCategoryName.ClientID + "')");
                txtCategoryName.Focus();
            }
            //loadGrid();
        }
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.ProductCategoryMaster objBl = new BusinessLayer.Master.ProductCategoryMaster();
                Entity.Master.ProductCategoryMaster objEt = new Entity.Master.ProductCategoryMaster();

                objEt.ProductCategoryMasterId = ProductCategoryMasterId;
                objEt.ProductCategoryMasterName = txtCategoryName.Text.Trim();
                objEt.TypeId = TypeId;
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                if (Validation("Category Name Can't Left Blank!"))
                {
                    objBl.Save(objEt);
                    //ShowMessage("Record Saved Successfully!");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
                    loadGrid();
                    objEt.ProductCategoryMasterId = 0;
                    //objEt.TypeId = 0;
                    txtCategoryName.Text = "";
                    txtCategoryName.Focus();
                }
            }
            catch (SqlException ex)
            {
                //ShowMessage("Dupllicate value is not allowed!");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Dupllicate value is not allowed!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TypeId = Convert.ToInt32(rdbCategory.SelectedValue);
            //if (IsPostBack)
            //{
                
            //    loadGrid();
            //}
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
            BusinessLayer.Master.ProductCategoryMaster objBl = new BusinessLayer.Master.ProductCategoryMaster();
            Entity.Master.ProductCategoryMaster objEt = new Entity.Master.ProductCategoryMaster();
            objEt.ProductCategoryMasterId = ProductCategoryMasterId;
            objEt.ProductCategoryMasterName = txtCategoryName.Text.Trim();
            objEt.TypeId = TypeId;
            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
            objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            if (Validation("Category Name Can't Left Blank!"))
            {
                try
                {
                    objBl.Save(objEt);
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    //TypeId = 0;
                    ProductCategoryMasterId = 0;
                    ProductCategoryMasterName = "";
                    loadGrid();
                    txtCategoryName.Text = "";
                    btnInsert.Enabled = true;
                    btnUpdate.Enabled = false;
                    btnDelete.Enabled = false;
                    txtCategoryName.Focus();
                }
                catch (SqlException ex)
               {
                   ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Dupplicate Values Are Not Allowed!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
               }
                //ShowMessage("Record Updated Successfully!");
               
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
           
            BusinessLayer.Master.ProductCategoryMaster objBl = new BusinessLayer.Master.ProductCategoryMaster();
           
            objBl.Delete(ProductCategoryMasterId);
            
           // ShowMessage("Record Deleted Successfully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            loadGrid();
            //TypeId = 0;
            ProductCategoryMasterId = 0;
            ProductCategoryMasterName = "";
            txtCategoryName.Text = "";
            btnInsert.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
            txtCategoryName.Focus();
        }
        public void loadGrid()
        {
            BusinessLayer.Master.ProductCategoryMaster objBl = new BusinessLayer.Master.ProductCategoryMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllProductCategoryMaster(Convert.ToInt32(Session["HotelId"]), TypeId);
            if (dt.Rows.Count >= 0)
            {
                gdvCategory.DataSource = dt;
                gdvCategory.DataBind();

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gdvCategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ProductCategoryMasterId = Convert.ToInt32(gdvCategory.DataKeys[e.NewEditIndex].Value);
            btnInsert.Enabled = false;
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;


            BusinessLayer.Master.ProductCategoryMaster objBl = new BusinessLayer.Master.ProductCategoryMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllProductCategoryMasterById(ProductCategoryMasterId);
            if (dt.Rows.Count > 0)
            {
                txtCategoryName.Text = dt.Rows[0][1].ToString();
               
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            btnInsert.Enabled = true;
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            ProductCategoryMasterId = 0;
            txtCategoryName.Text = "";
            txtCategoryName.Focus();
            btnInsert.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TestCommon.aspx");
        }

        protected void btnExit_Click1(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }
    }
}
