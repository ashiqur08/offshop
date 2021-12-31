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
    public partial class OffshopBreakage : System.Web.UI.Page
    {
        public int OffshopBreakageId
        {
            get { return Convert.ToInt32(ViewState["OffshopBreakageId"]); }
            set { ViewState["OffshopBreakageId"] = value; }
        }
        public int ProductId
        {
            get { return Convert.ToInt32(ViewState["ProductId"]); }
            set { ViewState["ProductId"] = value; }
        }
        public int CaseId
        {
            get { return Convert.ToInt32(ViewState["CaseId"]); }
            set { ViewState["CaseId"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "BreakageOffshop.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("testing.aspx");
                    }
                }
                //-------------------
                lblError.Visible = false;
                ImgSave.Enabled = true;
                ImgUpdate.Enabled = false;
                ImgDelete.Enabled = false;
                load_ddlProduct();
                load_ddlBottleSize();
                load_GridView1();
            }
            //ImgSave.Attributes.Add("onclick", "javascript:return ValidateForm('" + txtDate.ClientID + "')");
        }
        public void load_ddlProduct()
        {
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            DataTable dt = new DataTable();
            ddlProduct.DataSource = null;
            ddlProduct.DataBind();
            dt = objBl.GetAll_ProductName_OffshopBreakage(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlProduct.DataSource = dt;
                ddlProduct.DataTextField = "ProductName";
                ddlProduct.DataValueField = "ProductId";
                ddlProduct.DataBind();
                ddlProduct.Items.Insert(0, "-----SelectProduct------");
            }
        }

        public void load_ddlBottleSize()
        {
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            DataTable dt = new DataTable();
            ddlBottleSize.DataSource = null;
            ddlBottleSize.DataBind();
            dt = objBl.GetAll_BottlePerCase();
            if (dt.Rows.Count > 0)
            {
                ddlBottleSize.DataSource = dt;
                ddlBottleSize.DataTextField = "SizeOfBottle";
                ddlBottleSize.DataValueField = "CaseId";
                ddlBottleSize.DataBind();
                ddlBottleSize.Items.Insert(0, "Select Bottle Size");
            }
        }
        public bool Validation()
        {

            if (ddlProduct.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Product Properly!";
                return false;
            }
            if (ddlBottleSize.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select BottleSize Properly!";
                return false;
            }
            else if (txtGodownQty.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Offshop Qty Can't Left Blank!";
                return false;
            }
            else if (txtBreakageQty.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "BreakageQty Can't Left Blank!!";
                return false;
            }
            else if (txtDate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Date Can't Left Blank!!!";
                return false;
            }
            else
            {
                lblError.Visible = false;
                return true;
            }
        }

        protected void ImgSave_Click(object sender, ImageClickEventArgs e)
        {
            if (txtBarCode.Text.Trim() == "")
            {
                lblError.Visible = true;
                //Response.Write("<script language='javascript'>alert('Barcode cannot be blank');</script>");
                lblError.Text = "Barcode cannot be blank";
                //txtBarCode.Focus();
                return;
            }
            if (txtBreakageQty.Text == "")
            {
                //Response.Write("<script language='javascript'>alert('Breakage quantity  cannot be blank');</script>");
                lblError.Text = "Breakage quantity  cannot be blank";
                //txtBreakageQty.Focus();
                return;
            }
            if (ddlProduct.SelectedItem.Value == "-----SelectProduct------")
            {
                lblError.Text = "Select a product";
                //Response.Write("<script language='javascript'>alert('Select a product');</script>");
                return;
            }
            if (ddlBottleSize.Text == "Select Bottle Size")
            {
                lblError.Text = "Select size of bottle";
                //Response.Write("<script language='javascript'>alert('Select size of bottle');</script>");
                return;
            }
            if (Convert.ToInt32(txtBreakageQty.Text) >= Convert.ToInt32(txtGodownQty.Text))
            {
                lblError.Text = "BreakageQty Cannot Exceed GodownQty";
                //Response.Write("<script language='javascript'>alert('BreakageQty Cannot Exceed GodownQty');</script>");
                return;
            }
            if (txtDate.Text == "")
            {
                lblError.Text = "Date field canot be blank";
                //Response.Write("<script language='javascript'>alert('Date field canot be blank');</script>");
                return;
            }
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            Entity.BreakageOffshop objEt = new Entity.BreakageOffshop();
            if (Validation())
            {
                objEt.OffshopBreakageId = OffshopBreakageId;
                objEt.BarCode = txtBarCode.Text;
                objEt.BreakageDate = Convert.ToDateTime(txtDate.Text);
                objEt.ProductId = Convert.ToInt32(ddlProduct.SelectedValue.ToString());
                objEt.CaseId = Convert.ToInt32(ddlBottleSize.SelectedValue.ToString());
                objEt.BreakageQty = Convert.ToInt32(txtBreakageQty.Text);
                objEt.TypeId = 2;
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                objBl.Save(objEt);
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Saved Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
                load_GridView1();
                txtGodownQty.Text = "";
                txtBreakageQty.Text = "";
                txtDate.Text = "";

            }
        }
        public void load_GridView1()
        {
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            DataTable dt = new DataTable();
            gvDetails.DataSource = null;
            gvDetails.DataBind();
            dt = objBl.GetAll_OffshopBreakage(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gvDetails.DataSource = dt;
                gvDetails.DataBind();
            }
        }


        protected void ddlBottleSize_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImgDelete_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            objBl.Delete(OffshopBreakageId);
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Record Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message                 because after using update panel ajax control,it was not working.
            OffshopBreakageId = 0;
            load_GridView1();
            load_ddlProduct();
            load_ddlBottleSize();
            txtGodownQty.Text = "";
            txtBreakageQty.Text = "";
            txtDate.Text = "";
            ImgSave.Enabled = true;
            ImgUpdate.Enabled = false;
            ImgDelete.Enabled = false;

        }

        protected void ImgUpdate_Click(object sender, ImageClickEventArgs e)
        {
            //if (txtBarCode.Text == "")
            //{
            //    Response.Write("<script language='javascript'>alert('Barcode cannot be blank');</script>");
            //    //txtBarCode.Focus();
            //    return;
            //}
            //if (txtBreakageQty.Text == "")
            //{
            //    Response.Write("<script language='javascript'>alert('Breakage quantity  cannot be blank');</script>");
            //    //txtBreakageQty.Focus();
            //    return;
            //}
            //if (ddlProduct.SelectedItem.Value == "-----SelectProduct------")
            //{
            //    Response.Write("<script language='javascript'>alert('Select a product');</script>");
            //    return;
            //}
            //if (ddlBottleSize.Text == "Select Bottle Size")
            //{
            //    Response.Write("<script language='javascript'>alert('Select size of bottle');</script>");
            //    return;
            //}
            //if (Convert.ToInt32(txtBreakageQty.Text) >= Convert.ToInt32(txtGodownQty.Text))
            //{
            //    Response.Write("<script language='javascript'>alert('BreakageQty Cannot Exceed GodownQty');</script>");
            //    return;
            //}
            //if (txtDate.Text == "")
            //{
            //    Response.Write("<script language='javascript'>alert('Date field canot be blank');</script>");
            //    return;
            //}
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            Entity.BreakageOffshop objEt = new Entity.BreakageOffshop();
            if (Validation())
            {
                objEt.OffshopBreakageId = OffshopBreakageId;
                objEt.BarCode = txtBarCode.Text;
                objEt.BreakageDate = Convert.ToDateTime(txtDate.Text);
                objEt.ProductId = Convert.ToInt32(ddlProduct.SelectedValue.ToString());
                objEt.CaseId = Convert.ToInt32(ddlBottleSize.SelectedValue.ToString());
                objEt.BreakageQty = Convert.ToInt32(txtBreakageQty.Text);
                objEt.TypeId = 2;
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                objBl.Save(objEt);
                load_GridView1();
                load_ddlProduct();
                load_ddlBottleSize();
                txtGodownQty.Text = "";
                txtBreakageQty.Text = "";
                txtDate.Text = "";
                ImgSave.Enabled = true;
                ImgUpdate.Enabled = false;
                ImgDelete.Enabled = false;
            }

        }

        protected void gvDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {

            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            //BreakageId=Convert.ToInt32(gvDetails
            OffshopBreakageId = Convert.ToInt32(gvDetails.DataKeys[e.NewEditIndex].Value);
            DataTable dt = new DataTable();
            dt = objBl.GetAll_ById_OffshopBreakage(OffshopBreakageId);
            if (dt.Rows.Count > 0)
            {
                ddlProduct.SelectedValue = dt.Rows[0]["ProductId"].ToString();
                ddlBottleSize.SelectedValue = dt.Rows[0]["CaseId"].ToString();
                txtBreakageQty.Text = dt.Rows[0]["BreakageQty"].ToString();
                txtDate.Text = Convert.ToDateTime(dt.Rows[0]["BreakageDate"]).Date.ToShortDateString();
                txtBarCode.Text = dt.Rows[0]["BarCode"].ToString();

            }
        }

        protected void imgEdit_Click(object sender, ImageClickEventArgs e)
        {
            //GridViewRow gvr = (GridViewRow)((ImageButton)sender).Parent.Parent;
            //Label lblbrkid = (Label)gvr.FindControl("lblBreakageId");
            //BreakageId = Convert.ToInt32(lblbrkid.Text);
            //BusinessLayer.Breakage objBl = new BusinessLayer.Breakage();
            //DataTable dt = new DataTable();
            //dt = objBl.GetAll_ById_GodownBreakage(BreakageId);
            //if (dt.Rows.Count > 0)
            //{
            //    ddlProduct.SelectedValue = dt.Rows[0]["ProductId"].ToString();
            //    ddlBottleSize.SelectedValue = dt.Rows[0]["CaseId"].ToString();
            //    txtBreakageQty.Text = dt.Rows[0]["BreakageQty"].ToString();
            //    txtBarCode.Text = dt.Rows[0]["BarCode"].ToString();

            //}

            ImgUpdate.Enabled = true;
            ImgDelete.Enabled = true;
            ImgSave.Enabled = false;
        }

        //protected void ddlBottleSize_SelectedIndexChanged1(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        CaseId = Convert.ToInt32(ddlBottleSize.SelectedValue);
        //    }
        //    catch (Exception ex)
        //    {
        //        //lblError.Visible = true;
        //        //lblError.Text = ex.Message.ToString();
        //        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Item Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
        //    }
        //}

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ProductId = Convert.ToInt32(ddlProduct.SelectedValue);
                load_Qty();

            }
            catch (Exception ex)
            {
                //lblError.Visible = true;
                //lblError.Text = ex.Message.ToString();
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Item Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        public void load_Qty()
        {
            BusinessLayer.BreakageOffshop objBl = new BusinessLayer.BreakageOffshop();
            DataTable dt = new DataTable();
            dt = objBl.GetRate(Convert.ToInt32(ProductId), Convert.ToString(txtBarCode.Text.Trim()), Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                txtRate.Text = Convert.ToString(dt.Rows[0]["Rate"]);
            }
            DataTable dt1 = new DataTable();
            dt1 = objBl.GetQty(Convert.ToInt32(ProductId), Convert.ToString(txtBarCode.Text.Trim()), Convert.ToDecimal(txtRate.Text), Convert.ToInt32(Session["HotelId"]));
            if (dt1.Rows.Count > 0)
            {
                txtGodownQty.Text = Convert.ToString(dt1.Rows[0]["LastQty"]);
            }
        }

        protected void ddlBottleSize_SelectedIndexChanged1(object sender, EventArgs e)
        {
            try
            {
                CaseId = Convert.ToInt32(ddlBottleSize.SelectedValue);
            }
            catch (Exception ex)
            {
                //lblError.Visible = true;
                //lblError.Text = ex.Message.ToString();
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Item Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }
    }
}
