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
    public partial class Ledger : System.Web.UI.Page
    {
        public int Ledger_Group_Id
        {
            get { return Convert.ToInt32(ViewState["Ledger_Group_Id"]); }
            set { ViewState["Ledger_Group_Id"] = value; }
        }
        public int Ledger_Id
        {
            get { return Convert.ToInt32(ViewState["Ledger_Id"]); }
            set { ViewState["Ledger_Id"] = value; }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "Ledger.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("../testing.aspx");
                    }
                }
                //-------------------
                btnSave.Enabled = true;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                ledgerGroupMaster();
                loadDdlledgerGroupMaster();
                loadGrid();
            }
        }
        public static void ledgerGroupMaster()
        {
            BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
            objBl.SaveLedgerGroupMAster();
        }
        public  void loadGrid()
        {
            BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
            DataTable dt = new DataTable();
            gdvLedger.DataSource = null;
            gdvLedger.DataBind();
            dt = objBl.GetAll_LedgerMaster();
            if (dt.Rows.Count > 0)
            {
                gdvLedger.DataSource = dt;
                
                gdvLedger.DataBind();
            }
        }
       
        public void loadDdlledgerGroupMaster()
        {
            BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
            DataTable dt = new DataTable();
            ddlLedgerGroup.DataSource = null;
            ddlLedgerGroup.DataBind();
            dt = objBl.GetAll_LedgerGroupMaster();
            if (dt.Rows.Count > 0)
            {
                ddlLedgerGroup.DataSource = dt;
                ddlLedgerGroup.DataTextField = "Ledger_Group_Nm";
                ddlLedgerGroup.DataValueField = "Ledger_Group_Id";
                ddlLedgerGroup.DataBind();
            }
            InsertFirstItem(ddlLedgerGroup,"----Select Item----");
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
        public bool Validation()
        {

            if (ddlLedgerGroup.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select LedgerGroup Properly!";
                return false;
            }

            else if (txtLedger.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Ledger Can't Be 0!";
                return false;
            }
            else if (txtPhNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Phone No  Can't Be 0!";
                return false;
            }
            else if (txtAddress.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Address Can't Be 0!";
                return false;
            }
            else if (txtAddress2.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Address Can't Be 0!";
                return false;
            }
            else if (txtOpeningBl.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "OpeningBtl Can't Be 0!";
                return false;
            }
            else
            {
                lblError.Visible = false;
                return true;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
                Entity.Master.Ledger objEt = new Entity.Master.Ledger();
                if (Validation())
                {
                    objEt.Ledger_Id = Ledger_Id;
                    objEt.Ledger_Group_Id = Ledger_Group_Id;
                    objEt.Ledger_Nm = txtLedger.Text;
                    objEt.Ledger_Op_Bal = Convert.ToDecimal(txtOpeningBl.Text);
                    objEt.Creditor_Add = txtAddress.Text;
                    objEt.Creditor_Add2 = txtAddress2.Text;
                    objEt.Creditor_Phno = txtPhNo.Text;
                    objEt.creditor_Remarks = txtRemarks.Text;
                    objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                    objBl.Save_LedgerMaster(objEt);
                    objEt.Ledger_Id = 0;
                    loadGrid();
                    //ShowMessage("Record Saved Successfully!");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    txtLedger.Text = "";
                    txtAddress.Text = "";
                    txtOpeningBl.Text = "";
                    txtPhNo.Text = "";
                    txtRemarks.Text = "";
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Provide Data Properly!');</script>", false);    
            }
        }

        protected void ddlLedgerGroup_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Ledger_Group_Id = Convert.ToInt32(ddlLedgerGroup.SelectedValue);
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);     
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
                Entity.Master.Ledger objEt = new Entity.Master.Ledger();
                objEt.Ledger_Id = Ledger_Id;
                objEt.Ledger_Group_Id = Ledger_Group_Id;
                objEt.Ledger_Nm = txtLedger.Text;
                objEt.Ledger_Op_Bal = Convert.ToDecimal(txtOpeningBl.Text);
                objEt.Creditor_Add = txtAddress.Text;
                objEt.Creditor_Add2 = txtAddress2.Text;
                objEt.Creditor_Phno = txtPhNo.Text;
                objEt.creditor_Remarks = txtRemarks.Text;
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                objBl.Save_LedgerMaster(objEt);
                loadGrid();
                Ledger_Id = 0;

                //ShowMessage("Record Updated Successfully!");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                btnSave.Enabled = true;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);     
            }
        }
        
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            btnSave.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
            BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
            objBl.Delete(Ledger_Id);
            Ledger_Id = 0;
            loadGrid();
            //ShowMessage("Record Deleted successfully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            txtLedger.Text = "";
            txtAddress.Text = "";
            txtOpeningBl.Text = "";
            txtPhNo.Text = "";
            txtRemarks.Text = "";
        }

        protected void imgEdit_Click(object sender, ImageClickEventArgs e)
        {
            btnSave.Enabled = false;
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;
        }

        protected void gdvLedger_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Ledger_Id = Convert.ToInt32(gdvLedger.DataKeys[e.NewEditIndex].Value);
            BusinessLayer.Master.Ledger objBl = new BusinessLayer.Master.Ledger();
            DataTable dt = new DataTable();
            dt = objBl.GetAll_LedgerMasterById(Ledger_Id);
            if (dt.Rows.Count > 0)
            {
                ddlLedgerGroup.SelectedItem.Text = dt.Rows[0]["Ledger_Group_Nm"].ToString();
                txtLedger.Text = dt.Rows[0]["Ledger_Nm"].ToString();
                txtAddress.Text = dt.Rows[0]["Creditor_Add"].ToString();
                txtAddress2.Text = dt.Rows[0]["Creditor_Add2"].ToString();
                txtPhNo.Text = dt.Rows[0]["Creditor_Phno"].ToString();
                txtOpeningBl.Text = Convert.ToString(dt.Rows[0]["Ledger_Op_Bal"].ToString());
                txtRemarks.Text = dt.Rows[0]["Creditor_Remarks"].ToString();
            }
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            Ledger_Id = 0;
            Ledger_Group_Id = 0;
            btnSave.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;           
            loadDdlledgerGroupMaster();
            loadGrid();
            txtLedger.Text = "";
            txtAddress.Text = "";
            txtOpeningBl.Text = "";
            txtPhNo.Text = "";
            txtRemarks.Text = "";
            
        }
    }
}
