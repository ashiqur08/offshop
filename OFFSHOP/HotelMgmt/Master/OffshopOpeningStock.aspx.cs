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

namespace HotelMgmt.Master
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int TypeId
        {
            get { return Convert.ToInt32(ViewState["TypeId"]); }
            set { ViewState["TypeId"] = value; }
        }
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
        public int Offshop_GodownStockId
        {
            get { return Convert.ToInt32(ViewState["Offshop_GodownStockId"]); }
            set { ViewState["Offshop_GodownStockId"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "OffshopOpeningStock.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("../testing.aspx");
                    }
                }
                //-------------------
                load_ddlCatagory();
                load_ddlSubCatagory();
                load_ddlProduct();
                load_ddlSizeOfBottle();
            }

        }
        public void load_ddlCatagory()
        {
            TypeId = 2;
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
            DataTable dt = new DataTable();
            ddlCategory.DataSource = null;
            ddlCategory.DataBind();
            dt = objBl.GetAllProductCategoryMaster(Convert.ToInt32(Session["HotelId"]), TypeId);
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryId";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, "-----SelectCatagory------");
            }
        }

        public void load_ddlSubCatagory()
        {
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
            DataTable dt = new DataTable();
            ddlSubCategory.DataSource = null;
            ddlSubCategory.DataBind();
            dt = objBl.GetAll_ProductSubCategoryName(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "SubCategoryName";
                ddlSubCategory.DataValueField = "SubCategoryId";
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, "-----SelectSubCatagory------");
            }
        }
        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }

        public void load_Refresh()
        {
            load_ddlCatagory();
            load_ddlSubCatagory();
            load_ddlProduct();
            load_ddlSizeOfBottle();
            load_GridView1();
            txtTotalAmount.Text = "0.00";
            txtQty.Text = "0";
            txtBarcode.Text = "";
            txtPurchaseRate.Text = "0.00";

        }
        public void load_ddlProduct()
        {
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
            DataTable dt = new DataTable();
            ddlProduct.DataSource = null;
            ddlProduct.DataBind();
            dt = objBl.GetAll_ProductName(CatagoryId, SubCatagoryId, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlProduct.DataSource = dt;
                ddlProduct.DataTextField = "ProductName";
                ddlProduct.DataValueField = "ProductId";
                ddlProduct.DataBind();
                ddlProduct.Items.Insert(0, "-------SelectProduct------");
            }
            else
            {
                //ddlProduct.DataSource = null;
                //ddlProduct.DataBind();
                //ddlProduct.Items.Insert(0, "-------SelectProduct------");
            }

        }
        public bool Validation()
        {

            if (ddlCategory.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Category Properly!";
                return false;
            }
            else if (txtQty.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Qty Can't Be 0 Or Blank!";
                return false;
            }
            else if (ddlSubCategory.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select SubCategory Properly!";
                return false;
            }
            else if (txtPurchaseRate.Text == "" || txtPurchaseRate.Text == "0")
            {
                lblError.Visible = true;
                lblError.Text = "PurchaseRate  Can't Be 0 Or Blank!";
                return false;
            }
            else if (ddlProduct.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Product Properly!";
                return false;
            }
            else if (txtMrp.Text == "" || txtMrp.Text == "0")
            {
                lblError.Visible = true;
                lblError.Text = "Mrp Can't Be 0 Or Blank!";
                return false;
            }
            else if (ddlSizeOfBottle.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select SizeOfBottle Properly!";
                return false;
            }

            else if (txtTotalAmount.Text == "" || txtTotalAmount.Text == "0")
            {
                lblError.Visible = true;
                lblError.Text = "TotalAmount Can't Be 0 Or Blank!";
                return false;
            }
            else if (txtBarcode.Text.Trim() == "" || txtBarcode.Text == "0")
            {
                lblError.Visible = true;
                lblError.Text = "Bar Code Can't Be Blank";
                return false;
            }
            else
            {
                lblError.Visible = false;
                return true;
            }
        }
        public bool Validation2()
        {
            if (ddlSizeOfBottle.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select SizeOfBottle Properly!";
                return false;
            }
            else if (txtQty.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Qty Can't Be 0 Or Blank!";
                return false;
            }
            else if (txtPurchaseRate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "PurchaseRate  Can't Be 0 Or Blank!";
                return false;
            }
            else if (txtMrp.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Mrp Can't Be 0!";
                return false;
            }
            else if (txtTotalAmount.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "TotalAmount Can't Be 0!";
                return false;
            }

            else
            {
                lblError.Visible = false;
                return true;
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                CatagoryId = Convert.ToInt32(ddlCategory.SelectedValue);
                load_GridView1();
                load_ddlProduct();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);
            }

        }

        public void load_ddlSizeOfBottle()
        {
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
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
        public void load_GridView1()
        {
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
            DataTable dt = new DataTable();
            GridView1.DataSource = null;
            GridView1.DataBind();
            if (CatagoryId != 0 && SubCatagoryId != 0)
            {
                dt = objBl.GetAll_OffshopStock(CatagoryId, SubCatagoryId, Convert.ToInt32(Session["HotelId"]));
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    //dt.Rows.Add(dt.NewRow());
                    //GridView1.DataSource = dt;
                    //GridView1.DataBind();
                    //int columncount = GridView1.Rows[0].Cells.Count;
                    //GridView1.Rows[0].Cells.Clear();
                    //GridView1.Rows[0].Cells.Add(new TableCell());
                    //GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                    //GridView1.Rows[0].Cells[0].Text = "No Records Found";
                }
            }
        }

        protected void butnSave_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
                Entity.Master.OffshopOpeningStock objEt = new Entity.Master.OffshopOpeningStock();
                //objEt.GodownStockId = GodownStockId;

                objEt.ProductId = ProductId;
                objEt.SizeOfBottle = Convert.ToInt32(ddlSizeOfBottle.SelectedItem.Text);
                objEt.Qty = Convert.ToInt32(txtQty.Text);
                objEt.BarCode = txtBarcode.Text;
                objEt.PurchaseRate = Convert.ToInt32(txtPurchaseRate.Text);
                objEt.MRP = Convert.ToInt32(txtMrp.Text);
                objEt.TotalAmount = Convert.ToInt32(txtTotalAmount.Text);
                objEt.Status = 'O';
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                if (Validation())
                {
                    objBl.Save(objEt);
                    load_GridView1();
                    // ShowMessage("Save Successfully");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
                    load_ddlProduct();
                    load_ddlSizeOfBottle();
                    txtTotalAmount.Text = "";
                    txtQty.Text = "";
                    txtBarcode.Text = "";
                    txtPurchaseRate.Text = "";
                    txtMrp.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblError.Visible = true;
                lblError.Text = ex.Message.ToString();
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);     
            }

        }

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ProductId = Convert.ToInt32(ddlProduct.SelectedValue);
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Offshop_GodownStockId = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
            DataTable dt = new DataTable();
            dt = objBl.GetAll_ById_OffshopStock(Offshop_GodownStockId);
            if (dt.Rows.Count > 0)
            {
                ddlCategory.SelectedValue = dt.Rows[0]["CategoryId"].ToString();
                ddlSubCategory.SelectedValue = dt.Rows[0]["SubCategoryId"].ToString();
                ddlProduct.SelectedValue = dt.Rows[0]["ProductId"].ToString();
                ddlSizeOfBottle.SelectedItem.Text = dt.Rows[0]["SizeOfBottle"].ToString();
                txtQty.Text = dt.Rows[0]["Qty"].ToString();
                txtPurchaseRate.Text = dt.Rows[0]["PurchaseRate"].ToString();
                txtMrp.Text = dt.Rows[0]["MRP"].ToString();
                txtTotalAmount.Text = dt.Rows[0]["TotalAmount"].ToString();
                txtBarcode.Text = dt.Rows[0]["BarCode"].ToString();

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
            objBl.Delete(Offshop_GodownStockId);
            Offshop_GodownStockId = 0;
            load_GridView1();
            // ShowMessage("Record Deleted successfully!");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.

            load_ddlProduct();
            load_ddlSizeOfBottle();
            txtTotalAmount.Text = "";
            txtQty.Text = "";
            txtBarcode.Text = "";
            txtPurchaseRate.Text = "";
            txtMrp.Text = "";
        }

        protected void btnRefresh_Command(object sender, CommandEventArgs e)
        {
            Offshop_GodownStockId = 0;
            ProductId = 0;
            load_ddlCatagory();
            load_ddlSubCatagory();
            load_ddlProduct();
            load_ddlSizeOfBottle();
            //load_GridView1();
            txtTotalAmount.Text = "";
            txtQty.Text = "";
            txtBarcode.Text = "";
            txtPurchaseRate.Text = "";
            txtMrp.Text = "";
            lblError.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedRow.BackColor.ToString();

        }
        public void calc()
        {
            //if (txtQty.Text.Trim() == "")
            //    txtQty.Text = "0";
            //if (txtMrp.Text.Trim() == "")
            //    txtMrp.Text = "0";
            txtTotalAmount.Text = (Convert.ToInt32(txtQty.Text) * Convert.ToInt32(txtMrp.Text)).ToString();
        }

        protected void txtMrp_TextChanged(object sender, EventArgs e)
        {
            calc();
            txtBarcode.Focus();
        }

        protected void btnUpdae_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.OffshopOpeningStock objBl = new BusinessLayer.Master.OffshopOpeningStock();
                Entity.Master.OffshopOpeningStock objEt = new Entity.Master.OffshopOpeningStock();
                if (Validation2())
                {
                    objEt.Offshop_GodownStockId = Offshop_GodownStockId;
                    objEt.ProductId = Convert.ToInt32(ddlProduct.SelectedValue);

                    objEt.SizeOfBottle = Convert.ToInt32(ddlSizeOfBottle.SelectedItem.Text);
                    objEt.Qty = Convert.ToInt32(txtQty.Text);
                    objEt.BarCode = txtBarcode.Text;
                    objEt.PurchaseRate = Convert.ToInt32(txtPurchaseRate.Text);
                    objEt.MRP = Convert.ToInt32(txtMrp.Text);
                    objEt.TotalAmount = Convert.ToInt32(txtTotalAmount.Text);
                    objEt.Status = 'O';
                    objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                    objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                    objBl.Save(objEt);
                    load_GridView1();
                    // ShowMessage("Update Successfully");
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Updated Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
                    load_ddlProduct();
                    load_ddlSizeOfBottle();
                    txtTotalAmount.Text = "";
                    txtQty.Text = "";
                    txtBarcode.Text = "";
                    txtPurchaseRate.Text = "";
                    txtMrp.Text = "";
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);
            }
        }

        protected void imgEdit_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SubCatagoryId = Convert.ToInt32(ddlSubCategory.SelectedValue);
                load_GridView1();
                load_ddlProduct();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Data Properly!');</script>", false);
            }
        }

        protected void ddlSizeOfBottle_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtQty_TextChanged(object sender, EventArgs e)
        {
            calc();
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../testing.aspx");
        }
    }
}
