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
    public partial class SubCatagoryWiseReportaspx : System.Web.UI.Page
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.SubCatagoryWiseReport objBl = new BusinessLayer.SubCatagoryWiseReport();
                DataTable dt = new DataTable();
                gdvReport.DataSource = null;
                gdvReport.DataBind();
                FromDate = Convert.ToDateTime(txtDateFrm.Text);
                ToDate = Convert.ToDateTime(txtDateTo.Text);
                dt = objBl.GetSubCatagoryWiseSaleReport(Convert.ToInt32(Session["HotelId"]),Convert.ToDateTime(FromDate), Convert.ToDateTime(ToDate));
                if (dt.Rows.Count > 0)
                {
                    gdvReport.DataSource = dt;
                    gdvReport.DataBind();
                }
                gridCal();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }
        }
        public void gridCal()
        {
            decimal TotAmt = 0;
            for (int i = 0; i < gdvReport.Rows.Count; i++)
            {
                Label lblAmt = (Label)gdvReport.Rows[i].FindControl("lblAmount");
                TotAmt = TotAmt + Convert.ToDecimal(lblAmt.Text);
                lblTotalAmount.Text = TotAmt.ToString();
                //lblTotal.Visible = true;
            }
        }
    }
}
