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
    public partial class Requition : System.Web.UI.Page
    {
        public string Barcode
        {
            get { return Convert.ToString(ViewState["Barcode"]); }
            set { ViewState["Barcode"] = value; }
        }
        public int GodownStockId
        {
            get { return Convert.ToInt32(ViewState["GodownStockId"]); }
            set { ViewState["GodownStockId"] = value; }
        }
        public int Offshop_GodownStockId
        {
            get { return Convert.ToInt32(ViewState["Offshop_GodownStockId"]); }
            set { ViewState["Offshop_GodownStockId"] = value; }
        }
        public int ProductId
        {
            get { return Convert.ToInt32(ViewState["ProductId"]); }
            set { ViewState["ProductId"] = value; }
        }
        public int MRP
        {
            get { return Convert.ToInt32(ViewState["MRP"]); }
            set { ViewState["MRP"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "Requition.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("testing.aspx");
                    }
                }
                //-------------------
                LoadgdvStockDisp();
                LoadgdvDateWise();
            }
        }
        public void LoadgdvStockDisp()
        {
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            gdvStockDisp.DataSource = null;
            gdvStockDisp.DataBind();
            DataTable dt = new DataTable();
            dt = objBl.GetAll_GodownLastQty(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvStockDisp.DataSource = dt;
                gdvStockDisp.DataBind();
                
            }
        }
        public void LoadgdvProduct()
        {
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            gdvProduct.DataSource = null;
            gdvProduct.DataBind();
            DataTable dt = new DataTable();
            dt = objBl.GetAll_Offshop_Stock(System.DateTime.Today, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvProduct.DataSource = dt;
                gdvProduct.DataBind();

            }
        }
        public void LoadgdvDateWise()
        {
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            gdvDateWise.DataSource = null;
            gdvDateWise.DataBind();
            DataTable dt = new DataTable();
            dt = objBl.GetAllOffshopStock_By_Date();
            if (dt.Rows.Count > 0)
            {
                gdvDateWise.DataSource = dt;
                gdvDateWise.DataBind();

            }
        }

        protected void gdvStockDisp_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //ProductId = Convert.ToInt32(gdvStockDisp.DataKeys[e.NewEditIndex].Value);
            //BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            //DataTable dt = new DataTable();
            //dt = objBl.GetProductDetails_By_Id_Requisition(ProductId,Convert.ToInt32(Session["HotelId"]));
            //if (dt.Rows.Count > 0)
            //{
            //    txtProductName.Text = dt.Rows[0]["ProductName"].ToString();
            //    txtBarcode.Text = dt.Rows[0]["BarCode"].ToString();
            //    txtBtlSize.Text = dt.Rows[0]["SizeOfBottle"].ToString();
            //    MRP = Convert.ToInt32(dt.Rows[0]["Rate"]);
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            Entity.Requition objEt = new Entity.Requition();
            objEt.GodownStockId = GodownStockId;
            objEt.ProductId = ProductId;
            objEt.SizeOfBottle = Convert.ToInt32(txtBtlSize.Text);
            objEt.Qty = Convert.ToInt32(txtIssued.Text.Trim());
            objEt.BarCode = txtBarcode.Text.Trim();
            objEt.PurchaseRate = 0;
            objEt.MRP = MRP;
            objEt.TotalAmount = 0;
            objEt.Status = 'R';
            objEt.MainId = 0;
            // objEt.FirstEnteredOn = "NULL";
            objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
            objBl.Save(objEt);
            LoadgdvProduct();
            LoadgdvDateWise();
        }

        protected void gdvStockDisp_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void gdvStockDisp_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            ProductId = Convert.ToInt32(gdvStockDisp.DataKeys[e.NewEditIndex].Value);
            Label l = (Label)gdvStockDisp.Rows[e.NewEditIndex].FindControl("lblBarcode1");
            Barcode = l.Text;
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            DataTable dt = new DataTable();
            dt = objBl.GetProductDetails_By_Id_Requisition(ProductId, Barcode, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                txtProductName.Text = dt.Rows[0]["ProductName"].ToString();
                txtBarcode.Text = dt.Rows[0]["BarCode"].ToString();
                txtBtlSize.Text = dt.Rows[0]["SizeOfBottle"].ToString();
                MRP = Convert.ToInt32(dt.Rows[0]["Rate"]);
            }
        }

        

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GridViewRow gvr = (GridViewRow)((ImageButton)sender).Parent.Parent;
            Label lbldt = (Label)gvr.FindControl("lblDate");
            DataTable dt = new DataTable();
            gdvProduct.DataSource = dt;
            gdvProduct.DataBind();
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            dt = objBl.GetAll_Offshop_Stock_DateWise(Convert.ToDateTime(lbldt.Text), Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvProduct.DataSource = dt;
                gdvProduct.DataBind();
            }
        }

        protected void gdvProduct_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Offshop_GodownStockId = Convert.ToInt32(gdvProduct.DataKeys[e.NewEditIndex].Value);
            BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            objBl.Delete_OffshopStock_GodownStock(Offshop_GodownStockId,Convert.ToInt32(Session["HotelId"]));
            LoadgdvProduct();
            LoadgdvDateWise();
        }

        protected void btnSaveGodown_Click(object sender, EventArgs e)
        {
            //BusinessLayer.Requition objBl = new BusinessLayer.Requition();
            //objBl.Save_GodownStock_From_Requisition(System.DateTime.Today);
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadgdvProduct();
            LoadgdvDateWise();
            txtProductName.Text = "";
            txtBarcode.Text = "";
            txtBtlSize.Text = "";
            txtIssued.Text = "";
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("testing.aspx");
        }

       
    }
}
