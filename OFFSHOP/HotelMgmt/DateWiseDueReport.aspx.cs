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
    public partial class DateWiseDueReport : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                lblTotal.Visible = false;
            }
        }
        //public bool Validation()
        //{

        //    if (txtFromdate.Text == "")
        //    {
        //        lblError.Visible = true;
        //        lblError.Text = "Give The Initial Date!";
        //        return false;
        //    }
        //    else if (txtToDate.Text == "")
        //    {
        //        lblError.Visible = true;
        //        lblError.Text = "Give The End Date!";
        //        return false;
        //    }
        //    else if (txtFromdate.Text.)
        //    {
        //        DateTime dt1 = Convert.ToDateTime(txtFromdate);
        //        DateTime dt2 = Convert.ToDateTime(txtToDate.Text);
        //        if (dt1 > dt2)
        //        {
        //            lblError.Text = "Give The Date In Proper Format! ";
        //            return false;
        //        }
        //    }
        //    return true;
        //}
        protected void btnReport_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.DateWiseDueReport objBl = new BusinessLayer.DateWiseDueReport();
                DataTable dt = new DataTable();
                //if (Validation())
                // {
                gdvDueReport.DataSource = null;
                gdvDueReport.DataBind();
                FromDate = Convert.ToDateTime(txtFromdate.Text);
                ToDate = Convert.ToDateTime(txtToDate.Text);
                dt = objBl.Get_DateWise_Due_Report(Convert.ToDateTime(FromDate), Convert.ToDateTime(ToDate), Convert.ToInt32(Session["HotelId"]));
                if (dt.Rows.Count > 0)
                {
                    gdvDueReport.DataSource = dt;
                    gdvDueReport.DataBind();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('No Data Found!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                }
                gridCal();
                // }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Date Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }
        public void gridCal()
        {
            decimal TotAmt = 0;
            for(int i = 0;i<gdvDueReport.Rows.Count;i++)
            {
                Label lblAmt = (Label)gdvDueReport.Rows[i].FindControl("lblDueAmount");
                TotAmt = TotAmt + Convert.ToDecimal(lblAmt.Text);
                lblTotal.Text = TotAmt.ToString();
                lblTotal.Visible = true;
            }
        }

        
    }
}
