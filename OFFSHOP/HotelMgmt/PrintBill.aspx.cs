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
    public partial class PrintBill : System.Web.UI.Page
    {
        
        public void loadBill()
        {
            BusinessLayer.PrintBill objBl = new BusinessLayer.PrintBill();
            DataSet ds = new DataSet();
            ds = objBl.GetBill(Convert.ToInt32(Request.QueryString["Bill"]), Convert.ToInt32(Session["HotelId"]));
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblBillNo.Text = ds.Tables[0].Rows[0]["BillNo"].ToString();
                lblDate.Text = ds.Tables[0].Rows[0]["Date"].ToString();
                lblTime.Text = System.DateTime.Now.ToShortTimeString();
                lblGross.Text = ds.Tables[0].Rows[0]["BillAmt"].ToString();
                lblNet.Text = ds.Tables[0].Rows[0]["ReceivableAmt"].ToString();
            }
            gdvBill.DataSource = null;
            gdvBill.DataBind();
            if (ds.Tables[1].Rows.Count > 0)
            {
                gdvBill.DataSource = ds.Tables[1];
                gdvBill.DataBind();
            }
        }
        public  void TotelItem() //To find Total No Of Items.
        {
            int Tot = 0;

            for (int i = 0; i < gdvBill.Rows.Count; i++)
            {

                Label TotItem = (Label)gdvBill.Rows[i].FindControl("lblQty");
                Tot = Convert.ToInt32(TotItem.Text);
                lblTotItem.Text = Convert.ToString(Convert.ToInt32(lblTotItem.Text) + Tot);
            }
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadBill();
                TotelItem();
                Response.Write("<script language='JavaScript'>window.print()</script>");
            }
        }
    }
}
