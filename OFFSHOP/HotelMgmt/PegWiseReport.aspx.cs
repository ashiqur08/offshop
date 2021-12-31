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
    public partial class PegWiseReport : System.Web.UI.Page
    {
        public int BtlSize
        {
            get { return Convert.ToInt32(ViewState["BtlSize"]); }
            set { ViewState["BtlSize"] = value; }
        }
        public DateTime DateFrom
        {
            get { return Convert.ToDateTime(ViewState["DateFrom"]); }
            set { ViewState["DateFrom"] = value; }
        }
        public DateTime DateTo
        {
            get { return Convert.ToDateTime(ViewState["DateTo"]); }
            set { ViewState["DateTo"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_ddlSizeOfBottle();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.PegWiseReport objBl = new BusinessLayer.PegWiseReport();
                DataTable dt = new DataTable();
                DateFrom = Convert.ToDateTime(txtdateFrm.Text);
                DateTo = Convert.ToDateTime(txtDateTo.Text);
                BtlSize = Convert.ToInt32(ddlSizeOfBottle.SelectedItem.Text);
                gdvReport.DataSource = null;
                gdvReport.DataBind();
                DateFrom = Convert.ToDateTime(txtdateFrm.Text);
                DateTo = Convert.ToDateTime(txtDateTo.Text);
                dt = objBl.usp_GetAllSaleReport_By_Peg(BtlSize, Convert.ToInt32(Session["HotelId"]), DateFrom, DateTo);
                if (dt.Rows.Count > 0)
                {
                    gdvReport.DataSource = dt;
                    gdvReport.DataBind();
                }
               
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }
        }
        public void load_ddlSizeOfBottle()
        {
            BusinessLayer.PegWiseReport objBl = new BusinessLayer.PegWiseReport();
            DataTable dt = new DataTable();
            ddlSizeOfBottle.DataSource = null;
            ddlSizeOfBottle.DataBind();
            dt = objBl.GetAll_SizeOfBottle();
            if (dt.Rows.Count > 0)
            {
                ddlSizeOfBottle.DataSource = dt;
                ddlSizeOfBottle.DataTextField = "SizeOfBottle";
                ddlSizeOfBottle.DataValueField = "CaseId";
                ddlSizeOfBottle.DataBind();
                ddlSizeOfBottle.Items.Insert(0, "-----SelectBottleSize-----");
            }
        }
    }
}
