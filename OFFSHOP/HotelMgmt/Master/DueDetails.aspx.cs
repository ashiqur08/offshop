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
    public partial class DueDetails : System.Web.UI.Page
    {
        public int GuestId
        {
            get { return Convert.ToInt32(ViewState["GuestId"]); }
            set { ViewState["GuestId"] = value; }
        }
        public int ProductMasterId
        {
            get { return Convert.ToInt32(ViewState["ProductMasterId"]); }
            set { ViewState["ProductMasterId"] = value; }
        }
        public bool Validation()
        {
            if (txtBillNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Bill No Can't Left Blank!";
                return false;
            }
            else if (txtDueAmount.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "DueAmount Can't Left Blank!";
                return false;
            }
            else if (txtDueDate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "DueDate Can't Left Blank!";
                return false;
            }
            else if (txtGuestName.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "GuestName Can't Left Blank!";
                return false;
            }
            else if (txtAddress.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Address Can't Left Blank!";
                return false;
            }
            else if (txtContactNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "ContactNo Can't Left Blank!";
                return false;
            }
            else if (txtRemarks.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Remarks.Text Can't Left Blank!";
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
                //string date = Request.QueryString["dt1"].ToString();
                //string due = Request.QueryString["due1"].ToString();
                //string bill = Request.QueryString["bill1"].ToString();
                //txtBillNo.Text = bill;
                //txtDueAmount.Text = due;
                //txtDueDate.Text = date;

                txtBillNo.Text = Session["bill2"].ToString();
                txtDueAmount.Text = Session["due"].ToString();
                txtDueDate.Text = Session["dt"].ToString();
                loadAllGuest();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.DueDetails objBl = new BusinessLayer.Master.DueDetails();
                Entity.Master.DueDetails objEt = new Entity.Master.DueDetails();
                if (Validation())
                {
                    objEt.GuestId = GuestId;
                    objEt.GuestName = txtGuestName.Text;
                    objEt.Address = txtAddress.Text.ToString();
                    objEt.PhoneNo = txtContactNo.Text.ToString();
                    objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                    objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                    objEt.SaveProductMasterId =Convert.ToInt32(Request.QueryString["SMID"].ToString()) ;
                    objEt.BillNo = Convert.ToInt32(txtBillNo.Text);
                    objEt.DueAmount = Convert.ToDecimal(txtDueAmount.Text);
                    objEt.DueDate = Convert.ToDateTime(txtDueDate.Text);
                    objEt.Remarks = txtRemarks.Text;
                    objBl.Save_DueMaster(objEt);
                    objEt.GuestId = 0;
                    loadAllGuest();
                    txtBillNo.Text = "0";
                    txtDueAmount.Text = "0";
                    txtDueDate.Text = "";
                    txtGuestName.Text = "";
                    txtContactNo.Text = "";
                    txtAddress.Text = "";
                    txtRemarks.Text = "";
                    //ShowMessage("Data save successfully");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);    
            }
        }
        public void loadAllGuest()
        {
            BusinessLayer.Master.DueDetails objBl = new BusinessLayer.Master.DueDetails();
            DataTable dt = new DataTable();
            lbExistingGuest.DataSource = null;
            lbExistingGuest.DataBind();
            dt = objBl.GetAll_GuestName(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                lbExistingGuest.DataSource = dt;
                lbExistingGuest.DataTextField = "GuestName";
                lbExistingGuest.DataValueField = "GuestId";
                lbExistingGuest.DataBind();
            }
        }

        protected void lbExistingGuest_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.DueDetails objBl = new BusinessLayer.Master.DueDetails();

                GuestId = Convert.ToInt32(lbExistingGuest.SelectedValue);
                DataTable dt = new DataTable();
                dt = objBl.GetAll_ById_GuestName(Convert.ToInt32(Session["HotelId"]), GuestId);
                if (dt.Rows.Count > 0)
                {
                    txtGuestName.Text = dt.Rows[0]["GuestName"].ToString();
                    txtAddress.Text = dt.Rows[0]["Address"].ToString();
                    txtContactNo.Text = dt.Rows[0]["PhoneNo"].ToString();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('There is a problem in the List!');</script>", false);    
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            GuestId = 0;
            txtBillNo.Text = "0";
            txtDueAmount.Text = "0";
            txtDueDate.Text = "0";
            txtGuestName.Text = "";
            txtContactNo.Text = "";
            txtAddress.Text = "";
            txtRemarks.Text = "";


        }
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Decimal DueAmount = Convert.ToDecimal(txtDueAmount.Text);
            long BillNo = Convert.ToInt64(txtBillNo.Text);
            BusinessLayer.Master.DueDetails objBl = new BusinessLayer.Master.DueDetails();
            objBl.Update_SaveProductMaster_OnExitDueDetails(BillNo, DueAmount);
            Response.Redirect("../SaleBill.aspx");
        }

        protected void txtBillNo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
