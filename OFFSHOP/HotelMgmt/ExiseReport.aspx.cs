using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace HotelMgmt
{
    public partial class ExiseReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showExiseReport();
            }
        }
        public void showExiseReport()
        {
            try
            {
                BusinessLayer.ExiseReport objBl = new BusinessLayer.ExiseReport();
                DataTable dt = new DataTable();

                gdvExise.DataSource = null;
                gdvExise.DataBind();

                dt = objBl.Get_ExiseReport();
                if (dt.Rows.Count > 0)
                {
                    gdvExise.DataSource = dt;
                    gdvExise.DataBind();
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("testing.aspx");
        }

        
    }
}
