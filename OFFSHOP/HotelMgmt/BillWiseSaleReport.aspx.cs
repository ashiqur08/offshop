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
    public partial class BillWiseSaleReport : System.Web.UI.Page
    {
        public DateTime FromDate
        {
            get { return Convert.ToDateTime(ViewState["FromDate"]); }
            set { ViewState["FromDate"] = value; }
        }
        public DateTime ToDate
        {
            get { return Convert.ToDateTime(ViewState["ToDate"]); }
            set { ViewState["ToDate"] = value; }
        }
        public bool Validation()
        {

            if (txtDateFrm.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Give The Initial Date!";
                return false;
            }
            else if (txtDateTo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Give The End Date!";
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
                lblError.Visible = false;
            }
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.BillWiseSaleReport objBl = new BusinessLayer.BillWiseSaleReport();
                DataTable dt = new DataTable();
                // if (Validation())
                // {
                gdvSaleReport.DataSource = null;
                gdvSaleReport.DataBind();
                FromDate = Convert.ToDateTime(txtDateFrm.Text);
                ToDate = Convert.ToDateTime(txtDateTo.Text);
                dt = objBl.GetBillwise_Sale_Report(Convert.ToDateTime(FromDate), Convert.ToDateTime(ToDate), Convert.ToInt32(Session["HotelId"]));
                if (dt.Rows.Count > 0)
                {
                    gdvSaleReport.DataSource = dt;
                    gdvSaleReport.DataBind();
                }
                //}
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Date Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
         
        }
    }
}
