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
    public partial class RollMaster : System.Web.UI.Page
    {
        bool check = false;
        public int RoleId
        {
            get { return Convert.ToInt32(ViewState["RoleId"]); }
            set { ViewState["RoleId"] = value; }
        }
        public string RoleDescription
        {
            get { return Convert.ToString((ViewState["RoleDescription"])); }
            set { ViewState["RoleDescription"] = value; }
        }
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);


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
        
        public void loadGrid()
        {
            BusinessLayer.Master.RollMaster objBl = new BusinessLayer.Master.RollMaster();
            DataTable dt = new DataTable();
            dt = objBl.GetAllRoleMaster(Convert.ToInt32(Session["HotelId"]));
            gdvRole.DataSource = null;
            gdvRole.DataBind();
            if (dt.Rows.Count > 0)
            {
                gdvRole.DataSource = dt;
                gdvRole.DataBind();
            }
        }

        public bool Validation(string msg)
        {

            if (txtRole.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = msg;
                //return check = false;
                return false;
            }
            else
            {
                lblError.Visible = false;
                return true;
            }
           //return check = true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "RollMaster.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("../testing.aspx");
                    }
                }
                //-------------------
                lblError.Visible = false;    
                btnSave.Enabled = true;
                btnDelete.Enabled = false;
                btnUpdate.Enabled = false;
                loadGrid();
            }
            
           // btnSave.Attributes.Add("onclick", "javascript:return validation('" + txtRole.ClientID + "')");    
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            BusinessLayer.Master.RollMaster objBl = new BusinessLayer.Master.RollMaster();
            Entity.Master.RollMaster objEt = new Entity.Master.RollMaster();
            objEt.RoleId = RoleId;
            objEt.RoleDescription = txtRole.Text;
            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
            objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            try
            {
                if (Validation("Can't Left Blank!"))
                {
                    objBl.Save(objEt);
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    objEt.RoleId = 0;
                    lblError.Text = "";
                    
                    // ShowMessage("Record Saved Successfully!");
                    loadGrid();
                    txtRole.Text = "";
                }
           }
            catch (SqlException ex)
            {
               // ShowMessage("Dupplicate value is not allowed!");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Dupplicate value is not allowed!');</script>", false); 
                
            }
            
        }

        protected void imgEdit_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void gdvRole_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            btnSave.Enabled = false;
            btnDelete.Enabled = true;
            btnUpdate.Enabled = true;
            BusinessLayer.Master.RollMaster objBl = new BusinessLayer.Master.RollMaster();
            RoleId = Convert.ToInt32(gdvRole.DataKeys[e.NewEditIndex].Value);
            DataTable dt = new DataTable();
            dt = objBl.GetAllRoleMasterById(RoleId);
            if (dt.Rows.Count > 0)
            {
                txtRole.Text = dt.Rows[0][1].ToString();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.RollMaster objBl = new BusinessLayer.Master.RollMaster();
            objBl.Delete(RoleId);
            RoleId = 0;
           // ShowMessage("Record Deleted Successfully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            loadGrid();
            btnSave.Enabled = true;
            btnDelete.Enabled = false;
            btnUpdate.Enabled = false;
            txtRole.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.RollMaster objBl = new BusinessLayer.Master.RollMaster();
                Entity.Master.RollMaster objEt = new Entity.Master.RollMaster();
                objEt.RoleId = RoleId;
                objEt.RoleDescription = txtRole.Text;
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                if (Validation("Can't Left Blank!"))
                {
                    objBl.Save(objEt);
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    RoleId = 0;
                    loadGrid();
                    lblError.Text = "";
                    txtRole.Text = "";
                }

                // ShowMessage("Record Updated Successfully!");

            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Provide Data Properly!');</script>", false);     
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            RoleId = 0;
            txtRole.Text = "";
            btnSave.Enabled = true;
            btnDelete.Enabled = false;
            btnUpdate.Enabled = false;
            lblError.Text = "";
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }

        protected void ToolkitScriptManager1_Load(object sender, EventArgs e)
        {
            //string abc = "";
            //ShowMessage(abc);
        }
    }
}

