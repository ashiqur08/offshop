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
    public partial class MeasureWiseReport : System.Web.UI.Page
    {
        int TypeId = 0;
        public int CatagoryId
        {
            get { return Convert.ToInt32(ViewState["CatagoryId"]); }
            set { ViewState["CatagoryId"] = value; }
        }
        public int SubCatagoryId
        {
            get { return Convert.ToInt32(ViewState["SubCatagoryId"]); }
            set { ViewState["SubCatagoryId"] = value; }
        }
        public int ProductId
        {
            get { return Convert.ToInt32(ViewState["ProductId"]); }
            set { ViewState["ProductId"] = value; }
        }
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
                load_ddlCatagory();
                load_ddlSubCatagory();
                load_ddlSizeOfBottle();
            }
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.MeasureWiseReport objBl = new BusinessLayer.MeasureWiseReport();
                DataTable dt = new DataTable();
                DateFrom = Convert.ToDateTime(txtdateFrm.Text);
                DateTo = Convert.ToDateTime(txtDateTo.Text);
                gdvReport.DataSource = null;
                gdvReport.DataBind();
                DateFrom = Convert.ToDateTime(txtdateFrm.Text);
                DateTo = Convert.ToDateTime(txtDateTo.Text);
                dt = objBl.GetAllSaleReport_By_Subcategory_Measure(CatagoryId, SubCatagoryId, ProductId, BtlSize, Convert.ToInt32(Session["HotelId"]),DateFrom,DateTo);
                if (dt.Rows.Count > 0)
                {
                    gdvReport.DataSource = dt;
                    gdvReport.DataBind();
                }
                gridCal();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }
        }
        public void gridCal()
        {
            decimal TotAmt = 0;
            int TotQuantity = 0;
            for (int i = 0; i < gdvReport.Rows.Count; i++)
            {
                Label lblAmt = (Label)gdvReport.Rows[i].FindControl("lblAmount");
                Label lblQty1 = (Label)gdvReport.Rows[i].FindControl("lblQty");
                TotQuantity = TotQuantity + Convert.ToInt32(lblQty1.Text);
                TotAmt = TotAmt + Convert.ToDecimal(lblAmt.Text);
                lblTotalAmount.Text = TotAmt.ToString();
                Label2.Text = TotQuantity.ToString();
                //lblTotal.Visible = true;
            }
        }
        public void load_ddlCatagory()
        {
            TypeId = 2;
            BusinessLayer.MeasureWiseReport objBl = new BusinessLayer.MeasureWiseReport();
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
                ddlCatagory.Items.Insert(0, "-----SelectCatagory------");
            }
        }
        public void load_ddlSubCatagory()
        {
            BusinessLayer.MeasureWiseReport objBl = new BusinessLayer.MeasureWiseReport();
            DataTable dt = new DataTable();
            ddlSubCatagory.DataSource = null;
            ddlSubCatagory.DataBind();
            dt = objBl.GetAll_ProductSubCategoryName(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlSubCatagory.DataSource = dt;
                ddlSubCatagory.DataTextField = "SubCategoryName";
                ddlSubCatagory.DataValueField = "SubCategoryId";
                ddlSubCatagory.DataBind();
                ddlSubCatagory.Items.Insert(0, "-----SelectSubCatagory------");
            }
        }
        public void load_ddlProduct()
        {
            BusinessLayer.MeasureWiseReport objBl = new BusinessLayer.MeasureWiseReport();
            DataTable dt = new DataTable();
            ddlProductName.DataSource = null;
            ddlProductName.DataBind();
            dt = objBl.GetAll_ProductName(CatagoryId, SubCatagoryId, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlProductName.DataSource = dt;
                ddlProductName.DataTextField = "ProductName";
                ddlProductName.DataValueField = "ProductId";
                ddlProductName.DataBind();
                ddlProductName.Items.Insert(0, "-------SelectProduct------");
            }
        }
        public void load_ddlSizeOfBottle()
        {
            BusinessLayer.MeasureWiseReport objBl = new BusinessLayer.MeasureWiseReport();
            DataTable dt = new DataTable();
            ddlBtlSize.DataSource = null;
            ddlBtlSize.DataBind();
            dt = objBl.GetAll_SizeOfBottle();
            if (dt.Rows.Count > 0)
            {
                ddlBtlSize.DataSource = dt;
                ddlBtlSize.DataTextField = "SizeOfBottle";
                ddlBtlSize.DataValueField = "CaseId";
                ddlBtlSize.DataBind();
                ddlBtlSize.Items.Insert(0, "-----SelectBottleSize-----");
            }
        }
        public void load_gdvReport()
        {
            BusinessLayer.MeasureWiseReport objBl = new BusinessLayer.MeasureWiseReport();
            DataTable dt = new DataTable();
            gdvReport.DataSource = null;
            gdvReport.DataBind();
            dt = objBl.GetAllSaleReport_By_Subcategory_Measure(CatagoryId, SubCatagoryId, ProductId, BtlSize, Convert.ToInt32(Session["HotelId"]), DateFrom, DateTo);
            if (dt.Rows.Count > 0)
            {
                gdvReport.DataSource = dt;
                
                gdvReport.DataBind();
               
            }
        }

        protected void ddlSubCatagory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SubCatagoryId = Convert.ToInt32(ddlSubCatagory.SelectedValue);
                load_ddlProduct();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                CatagoryId = Convert.ToInt32(ddlCatagory.SelectedValue);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void ddlProductName_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ProductId = Convert.ToInt32(ddlProductName.SelectedValue);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void ddlBtlSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                BtlSize = Convert.ToInt32(ddlBtlSize.SelectedItem.Text);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}
