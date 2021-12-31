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
    public partial class Measure_AllBrand_Wise_SaleReport : System.Web.UI.Page
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
        public void load_ddlSizeOfBottle()
        {
            BusinessLayer.Measure_AllBrand_Wise_SaleReport objBl = new BusinessLayer.Measure_AllBrand_Wise_SaleReport();
            DataTable dt = new DataTable();
            ddlSize.DataSource = null;
            ddlSize.DataBind();
            dt = objBl.GetAll_SizeOfBottle();
            if (dt.Rows.Count > 0)
            {
                ddlSize.DataSource = dt;
                ddlSize.DataTextField = "SizeOfBottle";
                ddlSize.DataValueField = "CaseId";
                ddlSize.DataBind();
                ddlSize.Items.Insert(0, "-----SelectBottleSize-----");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
              try
            {
                BusinessLayer.Measure_AllBrand_Wise_SaleReport objBl = new BusinessLayer.Measure_AllBrand_Wise_SaleReport();
                DataTable dt = new DataTable();
                BtlSize = Convert.ToInt32(ddlSize.SelectedItem.Text);
                DateFrom = Convert.ToDateTime(txtDtFrm.Text);
                DateTo = Convert.ToDateTime(txtDtTo.Text);               
                gdvReport.DataSource = null;
                gdvReport.DataBind();
                dt = objBl.Get_Measure_AllBrand_Wise_SaleReport(BtlSize,DateFrom, DateTo, Convert.ToInt32(Session["HotelId"]));
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
        
    }
}
