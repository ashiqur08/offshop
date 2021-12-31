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
    public partial class EditSalBill : System.Web.UI.Page
    {
        public int BillNo
        {
            get { return Convert.ToInt32(ViewState["BillNo"]); }
            set { ViewState["BillNo"] = value; }
        }
        public int SaveProductMasterId
        {
            get { return Convert.ToInt32(ViewState["SaveProductMasterId"]); }
            set { ViewState["SaveProductMasterId"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadgdvBillNo();
            }
        }
        public void LoadgdvBillNo()
        {
            DataTable dt = new DataTable();
            gdvBillNo.DataSource = null;
            gdvBillNo.DataBind();
            BusinessLayer.EditSalBill objBl = new BusinessLayer.EditSalBill();
            dt =  objBl.GetBill_Today(System.DateTime.Today,Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvBillNo.DataSource = dt;
                gdvBillNo.DataBind();
            }
        }

        protected void gdvBillNo_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label lBillNo = (Label)gdvBillNo.Rows[e.NewEditIndex].FindControl("lblBillNo");
            SaveProductMasterId = Convert.ToInt32(gdvBillNo.DataKeys[e.NewEditIndex].Value);
            Response.Redirect("SaleBill.aspx?bill=" + lBillNo.Text + "&spm=" + SaveProductMasterId);
           
        }
    }
}
