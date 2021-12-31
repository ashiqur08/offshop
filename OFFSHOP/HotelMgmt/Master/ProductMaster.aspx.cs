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
    public partial class ProductMaster : System.Web.UI.Page
    {
        public int ProductId
        {
            get { return Convert.ToInt32((ViewState["ProductId"])); }
            set { ViewState["ProductId"] = value; }
        }
        public int CaseId
        {
            get { return Convert.ToInt32((ViewState["CaseId"])); }
            set { ViewState["CaseId"] = value; }
        }
        public int ProductName
        {
            get { return Convert.ToInt32((ViewState["ProductName"])); }
            set { ViewState["ProductName"] = value; }
        }
        public int TypeId
        {
            get { return Convert.ToInt32((ViewState["TypeId"])); }
            set { ViewState["TypeId"] = value; }
        }
        public int CategoryId
        {
            get { return Convert.ToInt32((ViewState["CategoryId"])); }
            set { ViewState["CategoryId"] = value; }
        }
        public int SubCategoryId
        {
            get { return Convert.ToInt32((ViewState["SubCategoryId"])); }
            set { ViewState["SubCategoryId"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "ProductMaster.aspx");
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
                TypeId = 2;
                loadCategory();
                loadSubCategory();
                loadddlUnit();
                loadGrid();
                txtRate.Visible = false;
            }

            btnInsert.Attributes.Add("onclick", "javascript:return validation('" + txtProductName.ClientID + "'')");
        }
        public void ddlEnabled()
        {
            if (TypeId == 2)
            {
                ddlCategory.Enabled = true;
                ddlSubCategory.Enabled = true;
            }
            else
            {
                ddlCategory.Enabled = false;
                ddlSubCategory.Enabled = false;
            }
          
        }
        public void loadddlUnit()
        {
            BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllSizeOfBottle();
            if (dt.Rows.Count > 0)
            {
                ddlUnit.DataSource = dt;
                ddlUnit.DataTextField = "SizeOfBottle";
                ddlUnit.DataValueField = "CaseId";
                ddlUnit.DataBind();
            }
            InsertFirstItem(ddlUnit,"------------PleaseSelect Unit------------");
        }
       
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
        public void loadGrid()
        {
            BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
            DataTable dt = new DataTable();
            //gdvProduct.DataSource = null;
            //gdvProduct.DataBind();
            dt = objBl.GetAllProductMaster(Convert.ToInt32(Session["HotelId"]),TypeId);
            if (dt.Rows.Count >= 0)
            {
                gdvProduct.DataSource = dt;
                gdvProduct.DataBind();

            }
        }
        public void loadCategory()
        {
            BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllProductCategoryMaster(Convert.ToInt32(Session["HotelId"]), TypeId);
            
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryId";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, "------------Select Category--------------");
            }
        }
        public void loadSubCategory()
        {
            BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllSubProductCategoryMaster(Convert.ToInt32(Session["HotelId"]), TypeId);
            
            if (dt.Rows.Count > 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "SubCategoryName";
                ddlSubCategory.DataValueField = "SubCategoryId";
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, "---------Select SubCategory----------");
            }

        }
        protected void InsertFirstItem(DropDownList ddl, string text)
        {
            try
            {
                ListItem list = new ListItem(text, "0");
                ddl.Items.Insert(0, list);
            }
            catch (Exception ex)
            {
                //lblMessage.Text = ex.Message;
                ShowMessage(ex.Message.ToString());
            }
        }
        public bool Validation()
        {

            if (ddlCategory.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Category Properly!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Category Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                return false;
            }
            else if (ddlSubCategory.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select SubCategory Properly!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select SubCategory Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                return false;
            }
            else if (txtProductName.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "ProductName Can't Left Blank!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('ProductName Can't Left Blank!!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                return false;
            }
            else if (ddlUnit.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Unit Properly!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Unit Properly!!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                return false;
            }
            //else if (Convert.ToInt16(txtRate.Text) == 0)
            //{
            //    lblError.Visible = true;
            //    lblError.Text = "Rate Can't Be 0!";
            //    //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Rate Can't Be 0!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            //    return false;
            //}
            else
            {
                lblError.Visible = false;
                return true;
            }
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
                Entity.Master.ProductMaster objEt = new Entity.Master.ProductMaster();
                if (Validation())
                {
                    objEt.ProductId = 0;
                    objEt.ProductName = txtProductName.Text.Trim();
                    objEt.CaseId = Convert.ToInt32(ddlUnit.SelectedValue);
                    objEt.Rate = 0; //Convert.ToInt32(txtRate.Text);
                    objEt.CategoryId = Convert.ToInt32(ddlCategory.SelectedValue);
                    objEt.SubCategoryId = Convert.ToInt32(ddlSubCategory.SelectedValue);
                    objEt.TypeId = TypeId;
                    objEt.SizeOfBtll = Convert.ToInt32(ddlUnit.SelectedItem.Text);
                    objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                    objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                    try
                    {
                    objBl.Save(objEt);
                    }
                    catch (SqlException ex)
                    {
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    }
                    ProductId = 0;
                    txtProductName.Text = "";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    loadGrid();
                    btnInsert.Enabled = true;
                    btnUpdate.Enabled = false;
                    btnDelete.Enabled = false;
                }
            }
            catch(Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.

            }
        
            
        }

        protected void gdvProduct_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ProductId = Convert.ToInt32(gdvProduct.DataKeys[e.NewEditIndex].Value);
            btnInsert.Enabled = false;
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;
            BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
          
            DataTable dt = new DataTable();
            dt = objBl.GetAllProductMasterById(ProductId);
            if (dt.Rows.Count > 0)
            {
                txtProductName.Text = dt.Rows[0]["ProductName"].ToString();
                ddlCategory.SelectedValue =dt.Rows[0]["CategoryId"].ToString();
                ddlSubCategory.SelectedValue =dt.Rows[0]["SubCategoryId"].ToString();
                ddlUnit.SelectedValue = dt.Rows[0]["CaseId"].ToString();
                txtRate.Text = dt.Rows[0]["Rate"].ToString();
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            ProductId = 0;
            ddlCategory.SelectedIndex = 0;
            ddlSubCategory.SelectedIndex = 0;
            ddlUnit.SelectedIndex = 0;
            txtProductName.Text = "";
            txtRate.Text = "0";
            btnInsert.Enabled =true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
                Entity.Master.ProductMaster objEt = new Entity.Master.ProductMaster();
                if (Validation())
                {
                    objEt.ProductId = ProductId;
                    objEt.ProductName = txtProductName.Text.Trim();
                    objEt.CaseId = Convert.ToInt32(ddlUnit.SelectedValue);
                    objEt.Rate = 0;//Convert.ToInt32(txtRate.Text);
                    objEt.CategoryId = Convert.ToInt32(ddlCategory.SelectedValue);
                    objEt.SubCategoryId = Convert.ToInt32(ddlSubCategory.SelectedValue);
                    objEt.TypeId = TypeId;
                    objEt.SizeOfBtll = Convert.ToInt32(ddlUnit.SelectedItem.Text);
                    objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                    objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                    objBl.Save(objEt);
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    ProductId = 0;
                    txtProductName.Text = "";
                    loadGrid();
                    btnInsert.Enabled = true;
                    btnUpdate.Enabled = false;
                    btnDelete.Enabled = false;
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.ProductMaster objBl = new BusinessLayer.Master.ProductMaster();
            objBl.Delete(ProductId);
            ProductId = 0;
            txtProductName.Text = "";
           // ShowMessage("Record Deleted Successfully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            loadGrid();
            btnInsert.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }

        protected void ddlUnit_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
