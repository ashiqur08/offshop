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

namespace HotelMgmt
{
    public partial class DueReceived : System.Web.UI.Page
    {
        public int DueDetailsId
        {
            get { return Convert.ToInt32(ViewState["DueDetailsId"]); }
            set { ViewState["DueDetailsId"] = value; }
        }
        public int DueId
        {
            get { return Convert.ToInt32(ViewState["DueId"]); }
            set { ViewState["DueId"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "DueReceived.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("testing.aspx");
                    }
                }
                //-------------------
               loadAllDueMaster();
               AllDueDetails();
            }
            imgbtDelete.Enabled = false;
            imgbtUpdate.Enabled = false;
            imgbtSave.Enabled = true;
            

        }
        public void loadAllDueMaster()
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            DataTable dt = new DataTable();
            gvDuelist.DataSource = null;
            gvDuelist.DataBind();
            dt = objBl.GetAll_DueMaster(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gvDuelist.DataSource = dt;
                gvDuelist.DataBind();
            }

            
        }
        public void AllDueDetails()
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            DataTable dt = new DataTable();
            gvDueSearch.DataSource = null;
            gvDueSearch.DataBind();
            dt = objBl.GetAll_DueDetails(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gvDueSearch.DataSource = dt;
                gvDueSearch.DataBind();
            }
        }
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }

        protected void imgbtReset_Click(object sender, ImageClickEventArgs e)
        {
            txtBillNo.Text = "";
            txtGuestName.Text = "";
            txtPhone.Text = "";
            txtDueAmount.Text = "";
            txtCheque.Text = "";
            txtCash.Text = "";
            txtBillDate.Text = "";
        }

        protected void imgbtSave_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            Entity.DueReceived objEt = new Entity.DueReceived();
            try
            {
                objEt.DueDetailsId = DueDetailsId;
                objEt.DueId = DueId;
                objEt.PaidCash = Convert.ToDecimal(txtCash.Text);
                objEt.PaidCard = Convert.ToDecimal(txtCheque.Text);
                objEt.LastPayDate = Convert.ToDateTime(txtBillDate.Text);
                objBl.Save_DueDetails(objEt);
                //ShowMessage("Data Saved Successfully");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                loadAllDueMaster();
                AllDueDetails();
                txtBillNo.Text = "";
                txtGuestName.Text = "";
                txtPhone.Text = "";
                txtDueAmount.Text = "";
                txtCheque.Text = "0";
                txtCash.Text = "0";
                txtBillDate.Text = "";
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
            
        }

        protected void imgbtUpdate_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            Entity.DueReceived objEt = new Entity.DueReceived();
            try
            {
                objEt.DueDetailsId = DueDetailsId;
                objEt.DueId = DueId;
                objEt.PaidCash = Convert.ToDecimal(txtCash.Text);
                objEt.PaidCard = Convert.ToDecimal(txtCheque.Text);
                objEt.LastPayDate = Convert.ToDateTime(System.DateTime.Now);
                objBl.Save_DueDetails(objEt);
                //ShowMessage("Data Saved Successfully");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                loadAllDueMaster();
                AllDueDetails();
                txtBillNo.Text = "";
                txtGuestName.Text = "";
                txtPhone.Text = "";
                txtDueAmount.Text = "";
                txtCheque.Text = "";
                txtCash.Text = "";
                txtBillDate.Text = "";
                imgbtDelete.Enabled = false;
                imgbtUpdate.Enabled = false;
                imgbtSave.Enabled = true;
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void imgbtDelete_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            objBl.Delete(DueDetailsId);
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            DueDetailsId = 0;
            loadAllDueMaster();
            AllDueDetails();
            txtBillNo.Text = "";
            txtGuestName.Text = "";
            txtPhone.Text = "";
            txtDueAmount.Text = "";
            txtCheque.Text = "";
            txtCash.Text = "";
            txtBillDate.Text = "";
            imgbtDelete.Enabled = false;
            imgbtUpdate.Enabled = false;
            imgbtSave.Enabled = true;

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            imgbtDelete.Enabled = true;
            imgbtUpdate.Enabled = true;
            imgbtSave.Enabled = false;
        }

        protected void gvDueSearch_RowEditing(object sender, GridViewEditEventArgs e)
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            //BreakageId=Convert.ToInt32(gvDetails
            DueDetailsId = Convert.ToInt32(gvDueSearch.DataKeys[e.NewEditIndex].Value);
            DataTable dt = new DataTable();
            dt = objBl.GetAll_ById_DueDetails(DueDetailsId);
            if (dt.Rows.Count > 0)
            {
                txtBillNo.Text = dt.Rows[0]["BillNo"].ToString();
                txtGuestName.Text = dt.Rows[0]["GuestName"].ToString();
                txtAddress.Text = dt.Rows[0]["Address"].ToString();
                txtPhone.Text = dt.Rows[0]["PhoneNo"].ToString();
                txtBillDate.Text = dt.Rows[0]["BillDate"].ToString();
                txtBillAmount.Text = dt.Rows[0]["ReceivableAmt"].ToString();
                txtCash.Text = dt.Rows[0]["PaidCash"].ToString();
                txtCheque.Text = dt.Rows[0]["PaidCard"].ToString();
                txtDueAmount.Text = (Convert.ToInt32(txtBillAmount.Text) - (Convert.ToInt32(txtCash.Text) + Convert.ToInt32(txtCheque.Text))).ToString();

            } 
        }

        protected void gvDuelist_RowEditing(object sender, GridViewEditEventArgs e)
        {
            BusinessLayer.DueReceived objBl = new BusinessLayer.DueReceived();
            DueId = Convert.ToInt32(gvDuelist.DataKeys[e.NewEditIndex].Value);
            DataTable dt = new DataTable();
            dt = objBl.GetAll_ById_DueMaster(DueId);
            if (dt.Rows.Count > 0)
            {
                txtBillNo.Text = dt.Rows[0]["BillNo"].ToString();
                txtGuestName.Text = dt.Rows[0]["GuestName"].ToString();
                txtAddress.Text = dt.Rows[0]["Address"].ToString();
                txtPhone.Text = dt.Rows[0]["PhoneNo"].ToString();
                txtBillDate.Text = dt.Rows[0]["BillDate"].ToString();
                txtBillAmount.Text = dt.Rows[0]["ReceivableAmt"].ToString();
                txtCash.Text = "0";
                txtCheque.Text = "0";
                txtDueAmount.Text = dt.Rows[0]["DueAmt"].ToString();

            } 

        }
    }
}
