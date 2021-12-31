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
    public partial class Brand_Qty_wise_saleReport : System.Web.UI.Page
    {
        
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Brand_Qty_wise_saleReport objBl = new BusinessLayer.Brand_Qty_wise_saleReport();
                DataTable dt = new DataTable();
                DateFrom = Convert.ToDateTime(txtDtFrm.Text);
                DateTo = Convert.ToDateTime(txtDtTo.Text);               
                gdvReport.DataSource = null;
                gdvReport.DataBind();                
                dt = objBl.Get_Brand_Qty_wise_saleReport(DateFrom, DateTo,Convert.ToInt32(Session["HotelId"]));
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

