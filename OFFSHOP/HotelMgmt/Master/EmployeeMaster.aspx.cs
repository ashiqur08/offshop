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

namespace HotelMgmt.Master
{
    public partial class EmployeeMaster : System.Web.UI.Page
    {
        public int EmployeeId
        {
            get { return Convert.ToInt32(ViewState["EmployeeId"]); }
            set { ViewState["EmployeeId"] = value; }
        }
        public int RoleId
        {
            get { return Convert.ToInt32(ViewState["RoleId"]); }
            set { ViewState["RoleId"] = value; }
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
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }

        public void loadDdlRole()
        {
            BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
            DataTable dt = new DataTable();
            ddlRole.Items.Clear();
            ddlRole.DataSource = null;
            ddlRole.DataBind();
            dt = objBl.GetAll_RoleMaster(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlRole.DataSource = dt;
                ddlRole.DataTextField = "RoleDescription";
                ddlRole.DataValueField = "RoleId";
                ddlRole.DataBind();
            }
            InsertFirstItem(ddlRole,"-----Select Item-----");
        }

        public void loadHotel()
        {
            BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
            DataTable dt = new DataTable();
            ddlRole.DataSource = null;
            ddlRole.DataBind();
            dt = objBl.GetAll_HotelMaster();
            if (dt.Rows.Count > 0)
            {
                CheckBoxListHotel.DataSource = dt;
                CheckBoxListHotel.DataTextField = "HotelName";
                CheckBoxListHotel.DataValueField = "HotelId";
                CheckBoxListHotel.DataBind();
            }
        }

        public void loadType()
        {
            //if (Session["Type"]=="S")
            //{
            //    ddlType.Items.Add("Super Admin");
            //    ddlType.Items.Add("Local Admin");
            //    ddlType.Items.Add("User");
            //}
            //if (Session["Type"] == "L")
            //{
            //    ddlType.Items.Add("Local Admin");
            //    ddlType.Items.Add("User");
            //}
            //if (Session["Type"] == "U")
            //{
            //    ddlType.Items.Add("User");
            //}
            ddlType.Items.Clear();
            ddlType.Items.Add("Super Admin");
            ddlType.Items.Add("Local Admin");
            ddlType.Items.Add("User");
        }

        public void loadDGrid()
        {
            BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
            DataTable dt = new DataTable();
            gdvEmployee.DataSource = null;
            gdvEmployee.DataBind();
            dt = objBl.GetAll_EmployeeMaster();
            if (dt.Rows.Count > 0)
            {
                gdvEmployee.DataSource = dt;

                gdvEmployee.DataBind();
            }
           
        }
        public void RefreshControls()
        {
            txtFnm.Text = "";
            txtLnm.Text = "";
            txtLoginName.Text = "";
            txtAddr.Text = "";
            txtaddr2.Text = "";
            txtCity.Text = "";
            txtCountry.Text = "";
            txtPhno.Text = "";
            txtPin.Text = "";
            txtState.Text = "";
            txtPass.Text = "";
            loadType();
            loadDdlRole();
        }
        public bool Validation()
        {

            if (txtFnm.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Provide First Name Properly!";
               // ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Provide First Name Properly!');</script>", false);    
                return false;
            }

            else if (txtLnm.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Provide Last Name Properly!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Provide Last Name Properly!');</script>", false);  
                return false;
            }
            else if (txtAddr.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Provide Address Properly!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Provide Address Properly!');</script>", false);  
                return false;
            }
            else if (txtPhno.Text == "")
            {
                
                lblError.Visible = true;
                lblError.Text = "Phone No Can't Left Blank!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Phone No Can't Left Blank!');</script>", false);  
                return false;
            }
            else if (txtCity.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "City Can't Left Blank!";
               // ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('City Can't Left Blank!');</script>", false);  
                return false;
            }
            else if (txtState.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "State Can't Left Blank!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('State Can't Left Blank!');</script>", false);  
                return false;
            }
           
            else if (txtCountry.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Country Can't Left Blank!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Country Can't Left Blank!');</script>", false);  
                return false;
            }
            else if (ddlRole.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Designation Properly!";
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Designation Properly!');</script>", false);  
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
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "EmployeeMaster.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("../testing.aspx");
                    }
                }
                //-------------------
                lblError.Visible = false;
                loadDdlRole();
                loadDGrid();
                loadType();
                loadHotel();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string addr = "";
                BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
                Entity.Master.EmployeeMaster objEt = new Entity.Master.EmployeeMaster();
                DataTable dt = new DataTable();

                objEt.EmployeeId = EmployeeId;
                objEt.FirstName = txtFnm.Text;
                objEt.LastName = txtLnm.Text;
                addr = txtAddr.Text + txtaddr2.Text;
                objEt.Address1 = addr.ToString();
                objEt.Address2 = txtaddr2.Text;
                objEt.Phone = txtPhno.Text;
                objEt.Pin = txtPin.Text;
                objEt.City = txtCity.Text;
                objEt.State = txtState.Text;
                objEt.Country = txtCountry.Text;
                objEt.RoleId = RoleId;
                objEt.LoginName = txtLoginName.Text;
                objEt.Password = txtPass.Text;
                if (Convert.ToString(ddlType.Text) == "Super Admin")
                    objEt.Type = "S";
                else if (Convert.ToString(ddlType.Text) == "Local admin")
                    objEt.Type = "L";
                else
                    objEt.Type = "U";
                
                objEt.LoggedOn = "N";
                if (Validation())
                {
                    dt=objBl.Save(objEt);
                    if (dt.Rows.Count > 0)
                    {
                        objEt.EmployeeId = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                    objEt.RoleId = 0;
                    objEt.Type = "";
                    for (int i = 0; i < CheckBoxListHotel.Items.Count; i++) 
                    {
                        if (CheckBoxListHotel.Items[i].Selected)
                        {
                            objEt.HotelId = Convert.ToInt32(CheckBoxListHotel.Items[i].Selected);
                            dt=objBl.Save(objEt);
                        }
                    }
                    objEt.EmployeeId = 0;
                    loadDGrid();
                    //ShowMessage("Record Saved Successfully!");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    RefreshControls();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);    
            }
        }

        protected void gdvEmployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //int _roleId = 0;
            EmployeeId = Convert.ToInt32(gdvEmployee.DataKeys[e.NewEditIndex].Value);
            BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
            DataSet dt = new DataSet();
            dt = objBl.GetAll_Employee_Master_ById(EmployeeId);
            if (dt.Tables[0].Rows.Count > 0)
            {
                txtFnm.Text = dt.Tables[0].Rows[0]["FirstName"].ToString();
                txtLnm.Text = dt.Tables[0].Rows[0]["LastName"].ToString();
                txtLoginName.Text = dt.Tables[0].Rows[0]["LoginName"].ToString();
                txtAddr.Text = dt.Tables[0].Rows[0]["Address1"].ToString();
                txtaddr2.Text = dt.Tables[0].Rows[0]["Address2"].ToString();
                txtPhno.Text = dt.Tables[0].Rows[0]["Phone"].ToString();
                txtPin.Text = dt.Tables[0].Rows[0]["PIN"].ToString();
                txtCity.Text = dt.Tables[0].Rows[0]["City"].ToString();
                txtState.Text = dt.Tables[0].Rows[0]["State"].ToString();
                txtCountry.Text = dt.Tables[0].Rows[0]["Country"].ToString();
                ddlRole.SelectedValue = dt.Tables[0].Rows[0]["RoleId"].ToString();
                if (dt.Tables[0].Rows[0]["Type"].ToString() == "S")
                {
                    ddlType.SelectedItem.Text="Super Admin";
                }
                else if (dt.Tables[0].Rows[0]["Type"].ToString() == "L")
                {
                    ddlType.SelectedItem.Text="Local Admin";
                }
                else
                {
                    ddlType.SelectedItem.Text="User";
                }
                txtPass.Text = dt.Tables[0].Rows[0]["Password"].ToString();
                //RoleId = Convert.ToInt32(dt.Rows[0]["RoleId"]);
            }
            if (dt.Tables[1].Rows.Count > 0)
            {
                for (int i = 0; i < CheckBoxListHotel.Items.Count; i++)
                {
                    for (int j = 0; j < dt.Tables[1].Rows.Count; j++)
                    {
                        if (Convert.ToInt32(CheckBoxListHotel.Items[i].Value) == Convert.ToInt32(dt.Tables[1].Rows[j][0]))
                        {
                            CheckBoxListHotel.Items[i].Selected = true;
                        }
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
                Entity.Master.EmployeeMaster objEt = new Entity.Master.EmployeeMaster();
                DataTable dt = new DataTable();
                objEt.EmployeeId = EmployeeId;
                objEt.FirstName = txtFnm.Text;
                objEt.LastName = txtLnm.Text;
                //addr = txtAddr.Text + txtaddr2.Text;
                objEt.Address1 = txtAddr.Text.ToString();
                objEt.Address2 = txtaddr2.Text.ToString();
                objEt.Phone = txtPhno.Text;
                objEt.Pin = txtPin.Text;
                objEt.City = txtCity.Text;
                objEt.State = txtState.Text;
                objEt.Country = txtCountry.Text;
                objEt.RoleId = RoleId;
                objEt.LoginName = txtLoginName.Text;
                objEt.Password = txtPass.Text;
                if (Convert.ToString(ddlType.Text) == "Super Admin")
                    objEt.Type = "S";
                else if (Convert.ToString(ddlType.Text) == "Local admin")
                    objEt.Type = "L";
                else
                    objEt.Type = "U";

                objEt.LoggedOn = "N";
                if (Validation())
                {
                    dt = objBl.Save(objEt);
                    if (dt.Rows.Count > 0)
                    {
                        objEt.EmployeeId = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                    objEt.RoleId = 0;
                    objEt.Type = "";
                    for (int i = 0; i < CheckBoxListHotel.Items.Count; i++)
                    {
                        if (CheckBoxListHotel.Items[i].Selected)
                        {
                            objEt.HotelId = Convert.ToInt32(CheckBoxListHotel.Items[i].Selected);
                            dt = objBl.Save(objEt);
                        }
                    }
                    objEt.EmployeeId = 0;
                    loadDGrid();
                    //ShowMessage("Record Updated Successfully!");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
                    RefreshControls();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);
            }
        }

        protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                RoleId = Convert.ToInt32(ddlRole.SelectedValue);
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);    
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            EmployeeId = 0;
            RoleId = 0;
            RefreshControls();
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.EmployeeMaster objBl = new BusinessLayer.Master.EmployeeMaster();
            objBl.Delete(EmployeeId); 
            EmployeeId = 0;
            loadDGrid();
            //ShowMessage("Record Deleted Successfuly!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
        }

        protected void gdvEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}
