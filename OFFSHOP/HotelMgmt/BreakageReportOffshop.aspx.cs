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
    public partial class BreakageReportOffshop : System.Web.UI.Page
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

            if (TextBox1.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Give The Initial Date!";
                return false;
            }
            else if (TextBox2.Text == "")
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

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.AllReportOffshop objBl = new BusinessLayer.AllReportOffshop();
                DataTable dt = new DataTable();
                // if (Validation())
                // {
                GridView1.DataSource = null;
                GridView1.DataBind();
                FromDate = Convert.ToDateTime(TextBox1.Text);
                ToDate = Convert.ToDateTime(TextBox2.Text);
                dt = objBl.usp_BreakageReportOffshop(Convert.ToDateTime(FromDate), Convert.ToDateTime(ToDate), Convert.ToInt32(Session["HotelId"]));
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                //}
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Date Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }
    }
}
