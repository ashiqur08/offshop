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
    public partial class CatagoryWiseSaleReport : System.Web.UI.Page
    {
        int TypeId = 2;
        public int Catagory
        {
            get { return Convert.ToInt32(ViewState["Catagory"]); }
            set { ViewState["Catagory"] = value; }
        }
        public int SubCatagory
        {
            get { return Convert.ToInt32(ViewState["SubCatagory"]); }
            set { ViewState["SubCatagory"] = value; }
        }
        public int ProductId
        {
            get { return Convert.ToInt32(ViewState["ProductId"]); }
            set { ViewState["ProductId"] = value; }
        }
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
        public void loadCatagory()
        {
            BusinessLayer.CatagoryWiseSaleReport objBl = new BusinessLayer.CatagoryWiseSaleReport();
            DataTable dt = new DataTable();
            ddlCatagory.DataSource = null;
            ddlCatagory.DataBind();
           
            dt = objBl.GetAllProductCategoryMaster(Convert.ToInt32(Session["HotelId"]), TypeId);
            if (dt.Rows.Count > 0)
            {
                ddlCatagory.DataSource = dt;
                ddlCatagory.DataTextField = "CategoryName";
                ddlCatagory.DataValueField = "CategoryId";
                ddlCatagory.DataBind();
            }
            ddlCatagory.Items.Insert(0,"----Select Catagory----");
        }
        public void loadSubCatagory()
        {
            BusinessLayer.CatagoryWiseSaleReport objBl = new BusinessLayer.CatagoryWiseSaleReport();
            DataTable dt = new DataTable();
            ddlSubCatagory.DataSource = null;
            ddlSubCatagory.DataBind();
            
            dt = objBl.GetAllProductSubCategoryMaster(Convert.ToInt32(Session["HotelId"]), TypeId);
            if (dt.Rows.Count > 0)
            {
                ddlSubCatagory.DataSource = dt;
                ddlSubCatagory.DataTextField = "SubCategoryName";
                ddlSubCatagory.DataValueField = "SubCategoryId";
                ddlSubCatagory.DataBind();
            }
            ddlSubCatagory.Items.Insert(0, "----Select SubCatagory----");
        }
        public void loadProduct()
        {
            BusinessLayer.CatagoryWiseSaleReport objBl = new BusinessLayer.CatagoryWiseSaleReport();
            DataTable dt = new DataTable();
            ddlProduct.DataSource = null;
            ddlProduct.DataBind();

            dt = objBl.GetAll_ProductMaster(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlProduct.DataSource = dt;
                ddlProduct.DataTextField = "ProductName";
                ddlProduct.DataValueField = "ProductId";
                ddlProduct.DataBind();
            }
            ddlProduct.Items.Insert(0, "----Select Product----");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadCatagory();
                loadSubCatagory();
                loadProduct();
            }
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.CatagoryWiseSaleReport objBl = new BusinessLayer.CatagoryWiseSaleReport();
                DataTable dt = new DataTable();
                gdvReport.DataSource = null;
                gdvReport.DataBind();
                FromDate = Convert.ToDateTime(txtDateFrm.Text);
                ToDate = Convert.ToDateTime(txtDateTo.Text);
                if (ddlProduct.SelectedIndex == 0)
                {
                    ProductId = 0;
                }
                else
                {
                    ProductId = Convert.ToInt32(ddlProduct.SelectedValue);
                }
                dt = objBl.GetCatagoryWiseSaleReport(Convert.ToInt32(ddlCatagory.SelectedValue), Convert.ToInt32(ddlSubCatagory.SelectedValue),ProductId, FromDate, ToDate, Convert.ToInt32(Session["HotelId"]));
                if (dt.Rows.Count > 0)
                {
                    gdvReport.DataSource = dt;
                    gdvReport.DataBind();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Date Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
           // gridCal();
        }

        
    }
}
