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
    public partial class SearchDrinksPurchase : System.Web.UI.Page
    {
        public int PurchaseId
        {
            get { return Convert.ToInt32(ViewState["PurchaseId"]); }
            set { ViewState["PurchaseId"] = value; }
        }
        public int CreditorsId
        {
            get { return Convert.ToInt32(ViewState["CreditorsId"]); }
            set { ViewState["CreditorsId"] = value; }
        }
        public int LedgerId
        {
            get { return Convert.ToInt32(ViewState["LedgerId"]); }
            set { ViewState["LedgerId"] = value; }
        }
        public void loadCreditors()
        {
            BusinessLayer.SearchDrinksPurchase objBl = new BusinessLayer.SearchDrinksPurchase();
            DataTable dt = new DataTable();
            ddlCreditors.DataSource = null;
            ddlCreditors.DataBind();
            dt = objBl.GetAllCreditors();
            if (dt.Rows.Count > 0)
            {
                ddlCreditors.DataSource = dt;
                ddlCreditors.DataTextField = "Ledger_Nm";
                ddlCreditors.DataValueField = "Ledger_Id";
                ddlCreditors.DataBind();
            }
            ddlCreditors.Items.Insert(0,"-------------------------------------Select Items------------------------------------------");
        }
        public void loadGrid()
        {
            BusinessLayer.SearchDrinksPurchase objBl = new BusinessLayer.SearchDrinksPurchase();
            DataTable dt = new DataTable();
            gdvPurchase.DataSource = null;
            gdvPurchase.DataBind();
            dt = objBl.GetAllPurchaseMaster(LedgerId,Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvPurchase.DataSource = dt;
                
                gdvPurchase.DataBind();
            }
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                loadCreditors();
                loadGrid();
            }
        }

        protected void ddlCreditors_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                LedgerId = Convert.ToInt32(ddlCreditors.SelectedValue);
                loadGrid();
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Item Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void gdvPurchase_RowEditing(object sender, GridViewEditEventArgs e)
        {
            PurchaseId = Convert.ToInt32(gdvPurchase.DataKeys[e.NewEditIndex].Value);
            Response.Redirect("DrinksPurchase.aspx?pId=" + PurchaseId);
        }
    }
}
