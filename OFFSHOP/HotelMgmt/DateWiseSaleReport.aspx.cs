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
    public partial class DateWiseSaleReport : System.Web.UI.Page
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

        protected void btnReport_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.DateWiseSaleReport objBl = new BusinessLayer.DateWiseSaleReport();
                DataTable dt = new DataTable();
                gdvSaleReport.DataSource = null;
                gdvSaleReport.DataBind();
                FromDate = Convert.ToDateTime(txtDateFrm.Text);
                ToDate = Convert.ToDateTime(txtDateTo.Text);
                //dt = objBl.GetDateWiseSaleReport(Convert.ToDateTime(FromDate), Convert.ToDateTime(ToDate), Convert.ToInt32(Session["HotelId"]));
                dt = objBl.GetDateWiseSaleReport(FromDate,ToDate,Convert.ToInt32(Session["HotelId"]));
                if (dt.Rows.Count > 0)
                {
                    gdvSaleReport.DataSource = dt;
                    gdvSaleReport.DataBind();
                }
            }
            catch (Exception ex)
            {
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Date Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                Label1.Text = ex.Message;
            }
            gridCal();
        }
        public void gridCal()
        {
            decimal TotAmt = 0;
            for (int i = 0; i < gdvSaleReport.Rows.Count; i++)
            {
                Label lblAmt = (Label)gdvSaleReport.Rows[i].FindControl("lblAmount");
                TotAmt = TotAmt + Convert.ToDecimal(lblAmt.Text);
                lblTotalAmount.Text = TotAmt.ToString();
                //lblTotal.Visible = true;
            }
        }
        
        protected void gdvSaleReport_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
