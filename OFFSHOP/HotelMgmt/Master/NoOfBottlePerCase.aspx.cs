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
    public partial class NoOfBottlePerCase : System.Web.UI.Page
    {
        public int CaseId
        {
            get { return Convert.ToInt32(ViewState["CaseId"]); }
            set { ViewState["CaseId"] = value; }
        }
        public int Type
        {
            get { return Convert.ToInt32(ViewState["Type"]); }
            set { ViewState["Type"] = value; }
        }
        public bool Validation()
        {

            if (ddlType.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Type Properly!";
                return false;
            }

            else if (Convert.ToInt16(txtSizeOfBottle.Text) == 0) 
            {
                lblError.Visible = true;
                lblError.Text = "Size Can't Be 0!";
                return false;
            }
            else if (Convert.ToInt16(txtNoOfBottle.Text) == 0)
            {
                lblError.Visible = true;
                lblError.Text = "No of Btls. Can't Be 0!";
                return false;
            }
            else
            {
                lblError.Visible = false;
                return true;
            }
        }
        public bool Validation2()
        {


            if (txtSizeOfBottle.Text == "" || Convert.ToInt16(txtSizeOfBottle.Text) == 0  )
            {
                lblError.Visible = true;
                lblError.Text = "Size Can't Be 0!";
                return false;
            }
            else if (txtNoOfBottle.Text == "" || Convert.ToInt16(txtNoOfBottle.Text) == 0  )
            {
                lblError.Visible = true;
                lblError.Text = "No of Btls. Can't Be 0!";
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
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "NoOfBottlePerCase.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("../testing.aspx");
                    }
                }
                //-------------------
                lblError.Visible = false;
                //Session["UserId"] = 0;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                LoadNoOfBottlePerCase();

            }
           // btnSave.Attributes.Add("onclick", "javascript:return validation('" + txtSizeOfBottle.ClientID + "','" + txtNoOfBottle.ClientID + "')");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                try
                {
                    if (Convert.ToInt32(CaseId) == 0)
                    {
                        Entity.Master.BottlePerCase objEntityBtl = new Entity.Master.BottlePerCase();
                        BusinessLayer.Master.BottlePerCase objBusinessBtl = new BusinessLayer.Master.BottlePerCase();
                        if (Validation())
                        {
                            objEntityBtl.CaseId = CaseId;
                            objEntityBtl.Type = ddlType.SelectedItem.Text.ToString();
                            objEntityBtl.SizeOfBottle = Convert.ToInt32(txtSizeOfBottle.Text);
                            objEntityBtl.NoOfBottlePerCase = Convert.ToInt32(txtNoOfBottle.Text);

                            objBusinessBtl.Save(objEntityBtl);
                            // ShowMessage("Record Saved Successfully!");
                            objEntityBtl.CaseId = 0;
                            txtNoOfBottle.Text = "";
                            txtSizeOfBottle.Text = "";
                            ddlType.SelectedIndex = 0;
                            LoadNoOfBottlePerCase();
                            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                        }
                    }

                }

                catch (SqlException ex1)
                {
                    //ShowMessage("Dupplicate value is not allowed!");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Dupplicate value is not allowed!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
            
          }
        

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            btnSave.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
            
            BusinessLayer.Master.BottlePerCase objBottlePerCase = new BusinessLayer.Master.BottlePerCase();
            objBottlePerCase.Delete(CaseId);
            //ShowMessage("Record Deleted SuccessFully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it(JavaScript function)was not working.
            CaseId = 0;
            txtNoOfBottle.Text = "";
            txtSizeOfBottle.Text = "";
            ddlType.SelectedIndex = 0;
            LoadNoOfBottlePerCase();
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
        protected void LoadNoOfBottlePerCase()
        {
            try
            {
                BusinessLayer.Master.BottlePerCase objBottlePerCase = new BusinessLayer.Master.BottlePerCase();
                DataTable dt = new DataTable();
                dt = objBottlePerCase.GetAllSizeOfBottle();
                if (dt != null)
                {

                    gdvNoOfBtl.DataSource = dt;
                    gdvNoOfBtl.DataBind();
                }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message.ToString());
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
       {
            //try
            //{
                btnSave.Enabled = true;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                Entity.Master.BottlePerCase objEntityBtl = new Entity.Master.BottlePerCase();
                BusinessLayer.Master.BottlePerCase objBusinessBtl = new BusinessLayer.Master.BottlePerCase();
                if (Validation2())
                {
                objEntityBtl.CaseId = CaseId;
                objEntityBtl.Type = ddlType.SelectedItem.Text.ToString();
                objEntityBtl.SizeOfBottle = Convert.ToInt32(txtSizeOfBottle.Text);
                objEntityBtl.NoOfBottlePerCase = Convert.ToInt32(txtNoOfBottle.Text);
                objEntityBtl.LastModifiedBy = Convert.ToInt32(Session["UserId"].ToString());

                try
                {
                    objBusinessBtl.Save(objEntityBtl);
                    CaseId = 0;
                    //objEntityBtl.CaseId = 0;
                    btnSave.Enabled = true;
                    btnUpdate.Enabled = false;
                    btnDelete.Enabled = false;
                    txtNoOfBottle.Text = "";
                    txtSizeOfBottle.Text = "";
                    ddlType.SelectedIndex = 0;
                    //ShowMessage("Record Updated Successfully!");
                    LoadNoOfBottlePerCase();
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                }
                catch (SqlException ex)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Dupplicate Values Are Not Allowed!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                }
                catch (Exception)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false); 
                }
                    //ShowMessage("Record Updated Successfully!");
                    
                  
                }
        
            //}
            //catch (Exception ex2)
            //{
            //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Give The Input Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            //}
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            CaseId = 0;
            btnSave.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
            txtNoOfBottle.Text = "";
            txtSizeOfBottle.Text = "";
            ddlType.Items.Insert(0,"Select Type");
            ddlType.SelectedIndex = 0;
            LoadNoOfBottlePerCase();
        }

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            btnSave.Enabled = false;
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;
        }

        protected void gdvNoOfBtl_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CaseId = Convert.ToInt32(gdvNoOfBtl.DataKeys[e.NewEditIndex].Value);
            
            BusinessLayer.Master.BottlePerCase objBusinessBtl = new BusinessLayer.Master.BottlePerCase();
            DataTable dt = objBusinessBtl.GetAllSizeOfBottleById(CaseId);
            if (dt.Rows.Count > 0)
            {
                ddlType.SelectedItem.Text = dt.Rows[0]["Type"].ToString();

                txtSizeOfBottle.Text = dt.Rows[0][2].ToString();
                txtNoOfBottle.Text = dt.Rows[0][3].ToString();
            }
        }

        protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
