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
    public partial class SaleBill : System.Web.UI.Page
    {
        string c1 = "";
        public long QBillNo
        {
            get { return Convert.ToInt64(ViewState["QBillNo"]); }
            set { ViewState["QBillNo"] = value; }
        }
        public long BillNo
        {
            get { return Convert.ToInt64(ViewState["BillNo"]); }
            set { ViewState["BillNo"] = value; }
        }
        public int SaveProductMasterId
        {
            get { return Convert.ToInt32(ViewState["SaveProductMasterId"]); }
            set { ViewState["SaveProductMasterId"] = value; }
        }
        public int SaveProductDetailsId
        {
            get { return Convert.ToInt32(ViewState["SaveProductDetailsId"]); }
            set { ViewState["SaveProductDetailsId"] = value; }
        }

        public string ProductCode
        {
            get { return ViewState["ProductCode"].ToString(); }
            set { ViewState["ProductCode"] = value; }
        }
        public decimal BillAmount
        {
            get { return Convert.ToDecimal(ViewState["BillAmount"]); }
            set { ViewState["BillAmount"] = value; }
        }
        public decimal GridAmount
        {
            get { return Convert.ToDecimal(ViewState["GridAmount"]); }
            set { ViewState["GridAmount"] = value; }
        }
        public decimal GridRate
        {
            get { return Convert.ToDecimal(ViewState["GridRate"]); }
            set { ViewState["GridRate"] = value; }
        }
        public decimal GridQuantity
        {
            get { return Convert.ToInt32(ViewState["GridQuantity"]); }
            set { ViewState["GridQuantity"] = value; }
        }
        public decimal DiscAmt
        {
            get { return Convert.ToDecimal(ViewState["DiscAmt"]); }
            set { ViewState["DiscAmt"] = value; }
        }
        public decimal Cash
        {
            get { return Convert.ToDecimal(ViewState["Cash"]); }
            set { ViewState["Cash"] = value; }
        }
        public decimal ExtraChargeOnCard
        {
            get { return Convert.ToDecimal(ViewState["ExtraChargeOnCard"]); }
            set { ViewState["ExtraChargeOnCard"] = value; }
        }
        public decimal Due
        {
            get { return Convert.ToDecimal(ViewState["Due"]); }
            set { ViewState["Due"] = value; }
        }
        public decimal Card
        {
            get { return Convert.ToDecimal(ViewState["Card"]); }
            set { ViewState["Card"] = value; }
        }
        public void GetSaveProductMasterByBillNo()
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            dt = objBl.Getall_SaveProductMaster_By_BillNo(BillNo,Convert.ToInt32(Session["HotelId"]));
            BillNo = Convert.ToInt64(dt.Rows[0][0]);
            txtBillNo.Text = BillNo.ToString();
            txtBill.Text = dt.Rows[0]["BillAmt"].ToString();
            txtDiscPer.Text = dt.Rows[0]["DiscPer"].ToString();
            txtDisc.Text = dt.Rows[0]["DiscAmt"].ToString();
            txtLS.Text = dt.Rows[0]["LSDiscAmt"].ToString();
            txtRecievable.Text = dt.Rows[0]["ReceivableAmt"].ToString();
            
            txtCash.Text = dt.Rows[0]["Cash"].ToString();
            c1 = dt.Rows[0]["Cash"].ToString();
            txtCard.Text = dt.Rows[0]["Card"].ToString();
            txtDue.Text = dt.Rows[0]["Due"].ToString();
            txtExtraChrgAmount.Text = dt.Rows[0]["ExtraChargeOnCard"].ToString();

        }
        public void loadProductName()
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            lbxProduct.DataSource = null;
            lbxProduct.DataBind();
            dt = objBl.GetAll_SaveProductName(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                lbxProduct.DataSource = dt;
                lbxProduct.DataTextField = "ProductName";
                lbxProduct.DataValueField = "ProductId";
                
                lbxProduct.DataBind();
            }

        }
        public void GetBillNo()
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            dt = objBl.GetAll_MaxBill(Convert.ToInt32(Session["HotelId"]));
            BillNo = Convert.ToInt64(dt.Rows[0][0]);
            txtBillNo.Text = BillNo.ToString();
        }
        public void loadSaveProductDetailsGrid()
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            gdvItem.DataSource = null;
            gdvItem.DataBind();
            dt = objBl.GetAll_SaveProductDetails(SaveProductMasterId);
            if (dt.Rows.Count > 0)
            {
                gdvItem.DataSource = dt;
                gdvItem.DataBind();
            }
            
        }

        public void loadSaveProductGridOccupied()
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            gdvOccupied.DataSource = null;
            gdvOccupied.DataBind();
            dt = objBl.GetAll_BillNo_ById_SaveProductMaster(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvOccupied.DataSource = dt;
                gdvOccupied.DataBind();
            }
        }
        public void GetGodownLastQty()
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            gdvStock.DataSource = null;
            gdvStock.DataBind();
            dt = objBl.GetLastQty(Convert.ToDateTime(System.DateTime.Today), Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                gdvStock.DataSource = dt;
                gdvStock.DataBind();
            }
        }
        public  void gridCalculation() //Perform calculation in gdvPurchaseDetails Gridview for summation.
        {
            decimal disc = 0;
            decimal totQty = 0;
            decimal totRate = 0;
            decimal totAmount = 0;

            for (int i = 0; i < gdvItem.Rows.Count; i++)
            {
                Label lblRate = (Label)gdvItem.Rows[i].FindControl("lblRate");
                Label lblAmount = (Label)gdvItem.Rows[i].FindControl("lblAmount");
                TextBox txtQty1 = (TextBox)gdvItem.Rows[i].FindControl("txtQty");
                
                totQty = totQty + Convert.ToDecimal(txtQty1.Text);
                GridQuantity = Convert.ToInt32(txtQty1.Text);
                GridRate = Convert.ToDecimal(txtQty1.Text) * Convert.ToDecimal(lblRate.Text);
                GridAmount = Convert.ToDecimal(lblAmount.Text);
                totRate = totRate + Convert.ToDecimal(lblRate.Text);
                lblAmount.Text = Convert.ToString(Convert.ToDecimal(lblRate.Text) * Convert.ToDecimal(txtQty1.Text));
                totAmount = totAmount + Convert.ToDecimal(lblAmount.Text);
                txtQty1.Focus();
            }
            BillAmount = totAmount;
            disc = (BillAmount * Convert.ToDecimal(txtDiscPer.Text)) / 100;
            txtBill.Text = BillAmount.ToString();
            txtDisc.Text = disc.ToString();
            ViewState["currentAmount"] = BillAmount - disc - Convert.ToDecimal(txtLS.Text);
            txtRecievable.Text = ViewState["currentAmount"].ToString();
            txtCash.Text = txtRecievable.Text;
            
        }
        public void Payment()       // To calculate Cash,Card,Due,Recieved,Refund amount.
        {
            decimal ExtraChargeOnCard;
            if (txtDue.Text.Trim() == "")
                txtDue.Text = "0";
            if (txtCard.Text.Trim() == "")
                txtCard.Text = "0";
            if (txtExtraChrgAmount.Text.Trim() == "")
                txtExtraChrgAmount.Text = "0";
            if (txtCash.Text.Trim() == "")
                txtCash.Text = "0";
            Due = Convert.ToDecimal(txtDue.Text);
            Card = Convert.ToDecimal(txtCard.Text);
            ExtraChargeOnCard = (Card * Convert.ToDecimal(txtCardPur.Text)) / 100;
            txtExtraChrgAmount.Text = Convert.ToString(ExtraChargeOnCard);
           // txtCard.Text = Convert.ToString(ExtraChargeOnCard + Convert.ToDecimal(txtCard.Text));
            txtRecievable.Text = Convert.ToString(Convert.ToDecimal(ViewState["currentAmount"]) + ExtraChargeOnCard);
            Cash = Convert.ToDecimal(ViewState["currentAmount"]) - (Due + Card);
           // txtCash.Text = Cash.ToString(); 
            txtCash.Text = Convert.ToString(Convert.ToInt32((Cash)));
            
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string c = "";
            if (!IsPostBack)
            {

                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "SaleBill.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("testing.aspx");
                    }
                }
                //-------------------
                txtBarcode.Focus();
                txtDate.Text = System.DateTime.Now.ToShortDateString();
                txtTime.Text = System.DateTime.Now.ToShortTimeString();
                Label2.Text = Convert.ToString(DateTime.Today.ToLongDateString());
                if (Convert.ToString(Request.QueryString["bill"]) != null)
                {
                    BillNo = Convert.ToInt64(Request.QueryString["bill"]);
                    
                    SaveProductMasterId = Convert.ToInt32(Request.QueryString["spm"]);
                    //SaveProductMasterId = Convert.ToInt32(BillNo);
                    txtBillNo.Text = BillNo.ToString();
                    loadProductName();                                      //to load items in ListBox lbxProduct.
                    loadSaveProductDetailsGrid();
                    GetSaveProductMasterByBillNo();
                    gridCalculation();
                    Payment();
                    GetGodownLastQty();
                    //c = c1;
                }
                else
                {
                    GetBillNo();                                            //to get the current bill no.
                    loadProductName();                                      //to load items in ListBox lbxProduct.
                    loadSaveProductDetailsGrid();
                    loadSaveProductGridOccupied();
                    GetGodownLastQty();
                }
            }   
        }

        protected void txtCode_TextChanged(object sender, EventArgs e)
        {
            ProductCode = txtCode.Text;
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            DataTable dt = new DataTable();
            lbxProduct.DataSource = null;
            lbxProduct.DataBind();
            dt = objBl.GetProductByCode(ProductCode, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                lbxProduct.DataSource = dt;
                lbxProduct.DataTextField = "ProductName";
                lbxProduct.DataValueField = "ProductId";
                lbxProduct.DataBind();
            }
        }

        protected void txtDiscPer_TextChanged(object sender, EventArgs e)
        {
            try
            {
                gridCalculation();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void txtLS_TextChanged(object sender, EventArgs e)
        {
            try
            {
                gridCalculation();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void lbxProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            //BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            //Entity.SaleBill objEt = new Entity.SaleBill();
            //DataTable dt = new DataTable();
            //DataTable dt1 = new DataTable();

            //////----------------For SaveProductMaster-------------------
            //objEt.SaveProductMasterId = SaveProductMasterId;
            //objEt.BillNo = BillNo;
            //objEt.BillDate = Convert.ToDateTime(txtDate.Text);
            //objEt.BillAmount = 0;
            //objEt.DiscPer = 0;
            //objEt.DiscAmt = 0;
            //objEt.LSDiscAmt = 0;
            //objEt.DiscRemarks = "Special";
            //objEt.Complemantry_Remarks = "";
            //objEt.RecievableAmount = 0;
            //objEt.Occupy = 'N';
            //objEt.Cash = Cash;
            //objEt.Card = Card;
            //objEt.Due = Due;
            //objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            //objEt.HotelId = 0;
            //////-------------For SaveProductDetails---------------
            //objEt.ProductId = Convert.ToInt32(lbxProduct.SelectedValue);
            //dt1 = objBl.GetRate(objEt.ProductId);
            ////dt1 = GetRate(objEt.ProductId, txtBarcode.Text);
            //if (dt1.Rows.Count > 0)
            //{
            //    objEt.GridRate = Convert.ToDecimal(dt1.Rows[0][0]);
            //}
            //objEt.BarCode = txtBarcode.Text;
            //objEt.GridQuantity = 1;
            //objEt.GridAmount = objEt.GridRate;
            ////---------------------------------------------------------
            //dt = objBl.Save(objEt);
            //if (dt.Rows.Count > 0)
            //{
            //    SaveProductMasterId = Convert.ToInt32(dt.Rows[0][0]);
            //}

            //loadSaveProductDetailsGrid();
            //gridCalculation(); 
        }

        protected void imgBtnSave_Click(object sender, ImageClickEventArgs e)
        {


            try
            {
                BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
                Entity.SaleBill objEt = new Entity.SaleBill();

                ////----------------For ProductMaster-------------------
                objEt.SaveProductMasterId = SaveProductMasterId;
                //objEt.BillNo = Convert.ToInt64(txtBillNo.Text);
                objEt.BillNo = 0;
                objEt.BillDate = System.DateTime.Today;
                objEt.BillAmount = BillAmount;
                objEt.DiscPer = Convert.ToDecimal(txtDiscPer.Text);
                objEt.DiscAmt = Convert.ToDecimal(txtDisc.Text);
                objEt.LSDiscAmt = Convert.ToDecimal(txtLS.Text);
                objEt.DiscRemarks = "";
                objEt.Complemantry_Remarks = txtComplemantry_Remarks.Text;
                objEt.RecievableAmount = Convert.ToDecimal(txtRecievable.Text);
                objEt.Occupy = 'N';
                objEt.Cash = Convert.ToDecimal(txtCash.Text);
                objEt.Card = Convert.ToDecimal(txtCard.Text);
                objEt.ExtraChargeOnCard = Convert.ToDecimal(txtExtraChrgAmount.Text);
                objEt.Due = Convert.ToDecimal(txtDue.Text);

                //objEt.FirstEnteredOn = "";
                //objEt.FirstEnteredBy = "";
                //objEt.lastModifiedOn = "";
                objEt.LastModifiedBy = Convert.ToInt32(Session["UserId"]);
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);

                ////-------------For SaveProductDetails---------------

                objEt.ProductId = 0;


                objEt.BarCode = txtBarcode.Text;
                objEt.GridRate = 0;
                objEt.GridQuantity = 0;
                objEt.GridAmount = 0;
                //objEt.FirstEnteredBy = "";
                objBl.Save(objEt);
                GetGodownLastQty();
                string bl = txtBillNo.Text;
                SaveProductMasterId = 0;
                loadSaveProductGridOccupied();
                txtBarcode.Text = "";
                txtBarcode.Focus();
                gdvItem.DataSource = null;
                gdvItem.DataBind();
                txtBill.Text = "";
                txtCash.Text = "0";
                txtDiscPer.Text = "0";
                txtRecievable.Text = "";
                txtCardPur.Text = "0";
                txtExtraChrgAmount.Text = "0";
                txtCard.Text = "0";
                //Response.Redirect("PrintBill.aspx?Bill=" + bl);
                GetBillNo(); 
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Somthing Wrong!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void gdvItem_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtQty_TextChanged(object sender, EventArgs e)
        {
            try
            {
                
                
                    BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
                    Entity.SaleBill objEt = new Entity.SaleBill();
                    decimal AmountIndvsl = 0;

                    GridViewRow gvr = (GridViewRow)((TextBox)sender).Parent.Parent;
                    TextBox txtQty = (TextBox)gvr.FindControl("txtQty");
                    Label LblRate = (Label)gvr.FindControl("lblRate");
                    Label LblSaveProductDetailsId = (Label)gvr.FindControl("lblSaveProductDetailsId");
                    Label Amount = (Label)gvr.FindControl("lblAmount");
                    AmountIndvsl = Convert.ToDecimal(LblRate.Text) * Convert.ToDecimal(txtQty.Text);
                    Amount.Text = Convert.ToString(AmountIndvsl);
                    ViewState["txtQty"] = txtQty.Text;

                    SaveProductDetailsId = Convert.ToInt32(LblSaveProductDetailsId.Text);
                    //objEt.SaveProductDetailsId = Convert.ToInt32(gvr.data);
                    //objEt.SaveProductDetailsId = 1;
                    objEt.SaveProductDetailsId = SaveProductDetailsId;
                    objEt.Qty = Convert.ToInt32(txtQty.Text);
                    objEt.GridAmount = Convert.ToDecimal(Amount.Text);
                   
                        objBl.Update_SaveProductDetails(objEt.SaveProductDetailsId, objEt.Qty, objEt.GridAmount);

                        loadSaveProductDetailsGrid();
                        gridCalculation();                              //Perform calculation inside the gdvItem girdview.
                        txtBarcode.Focus();

                   
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
            
            //-------------------------------------------------------------------------------
            //BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            //Entity.SaleBill objEt = new Entity.SaleBill();
            //DataTable dt = new DataTable();
            //DataTable dt1 = new DataTable();

            //////----------------For SaveProductMaster-------------------
            //objEt.SaveProductMasterId = SaveProductMasterId;
            //objEt.BillNo = BillNo;
            //objEt.BillDate = Convert.ToDateTime(txtDate.Text);
            //objEt.BillAmount = 0;
            //objEt.DiscPer = 0;
            //objEt.DiscAmt = 0;
            //objEt.LSDiscAmt = 0;
            //objEt.DiscRemarks = "Special";
            //objEt.Complemantry_Remarks = "";
            //objEt.RecievableAmount = 0;
            //objEt.Occupy = 'N';
            //objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            //objEt.HotelId = 0;
            //////-------------For SaveProductDetails---------------
            //objEt.ProductId = Convert.ToInt32(lbxProduct.SelectedValue);
            //dt1 = objBl.GetRate(objEt.ProductId);
            //if (dt1.Rows.Count > 0)
            //{
            //    objEt.GridRate = Convert.ToDecimal(dt1.Rows[0][0]);
            //}
            //objEt.BarCode = txtBarcode.Text;
            //objEt.GridQuantity = 1;
            //objEt.GridAmount = objEt.GridRate;
            ////--------------SaveProductMOP---------------------
            //objEt.Cash = 0;
            //objEt.Card = 0;
            //objEt.Due = 0;
            //dt = objBl.Save(objEt);
            //if (dt.Rows.Count > 0)
            //{
            //    SaveProductMasterId = Convert.ToInt32(dt.Rows[0][0]);
            //}
            //loadSaveProductDetailsGrid();
        }

        protected void gdvItem_RowEditing(object sender, GridViewEditEventArgs e)
        {
            SaveProductDetailsId = Convert.ToInt32(gdvItem.DataKeys[e.NewEditIndex].Value);
        }

        protected void gdvItem_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SaveProductDetailsId = Convert.ToInt32(gdvItem.DataKeys[e.RowIndex].Value);
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            objBl.Delete(SaveProductDetailsId);
            loadSaveProductDetailsGrid();
            gridCalculation();
            
        }

        protected void txtCash_TextChanged(object sender, EventArgs e)
        {
            try
            {
                Payment();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void txtCard_TextChanged(object sender, EventArgs e)
        {
            try
            {
                Payment();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void txtRecieved_TextChanged(object sender, EventArgs e)
        {
            try
            {
                txtRefund.Text = Convert.ToString(Convert.ToDecimal(txtRecieved.Text) - Convert.ToDecimal(txtRecievable.Text));
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void imgBtnOccupy_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            Entity.SaleBill objEt = new Entity.SaleBill();
            GetBillNo();
           // objEt.Occupy = 'N';
            objBl.Update_SaveProductMaster_For_Occupy(SaveProductMasterId);
            SaveProductMasterId = 0;
            //loadSaveProductDetailsGrid();
            gdvItem.DataSource = null;
            gdvItem.DataBind();
            loadSaveProductGridOccupied();
            gridCalculation();
            txtBarcode.Text = "";
            txtBarcode.Focus();
            
        }

        protected void gdvOccupied_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            GridViewRow gvr = (GridViewRow)((ImageButton)sender).Parent.Parent;
            Label lblProductMasterId = (Label)gvr.FindControl("lblSavePrdctMrId");
            Label lblBillForPrint = (Label)gvr.FindControl("lblBillNo");
            SaveProductMasterId = Convert.ToInt32(lblProductMasterId.Text);
            // BillNoForPrint = Convert.ToInt64(lblBillForPrint.Text);
            txtBillNo.Text = lblBillForPrint.Text;
            DataSet ds = new DataSet();
            gdvItem.DataSource = null;
            gdvItem.DataBind();

            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            ds = objBl.GetAll_ById_SaveProductMaster(Convert.ToInt32(lblProductMasterId.Text));
            if (ds.Tables[1].Rows.Count > 0)
            {
                gdvItem.DataSource = ds.Tables[1];
                gdvItem.DataBind();
            }
            gridCalculation();
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void imgBtnDue_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            Entity.SaleBill objEt = new Entity.SaleBill();
            

            ////----------------For ProductMaster-------------------
            objEt.SaveProductMasterId = SaveProductMasterId;
            objEt.BillNo = 0;
            objEt.BillDate = System.DateTime.Today;
            objEt.BillAmount = BillAmount;
            objEt.DiscPer = Convert.ToDecimal(txtDiscPer.Text);
            objEt.DiscAmt = Convert.ToDecimal(txtDisc.Text);
            objEt.LSDiscAmt = Convert.ToDecimal(txtLS.Text);
            objEt.DiscRemarks = "";
            objEt.Complemantry_Remarks = txtComplemantry_Remarks.Text;
            objEt.RecievableAmount = Convert.ToDecimal(txtRecievable.Text);
            objEt.Occupy = 'N';
            objEt.Cash = Convert.ToDecimal(txtCash.Text);
            objEt.Card = Convert.ToDecimal(txtCard.Text);
            objEt.ExtraChargeOnCard = Convert.ToDecimal(txtExtraChrgAmount.Text);
            objEt.Due = Convert.ToDecimal(txtDue.Text);

            //objEt.FirstEnteredOn = "";
            //objEt.FirstEnteredBy = "";
            //objEt.lastModifiedOn = "";
            objEt.LastModifiedBy = Convert.ToInt32(Session["UserId"]);
            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);

            ////-------------For SaveProductDetails---------------

            objEt.ProductId = 0;


            objEt.BarCode = txtBarcode.Text;
            objEt.GridRate = 0;
            objEt.GridQuantity = 0;
            objEt.GridAmount = 0;
            //objEt.FirstEnteredBy = "";
            objBl.Save(objEt);
            int mi=SaveProductMasterId;
            SaveProductMasterId = 0;
            loadSaveProductGridOccupied();
            txtBarcode.Text = "";
            txtBarcode.Focus();
            gdvItem.DataSource = null;
            gdvItem.DataBind();
            txtBill.Text = "";
            txtDiscPer.Text = "0";
            txtRecievable.Text = "";
            string bl = txtBillNo.Text;

            //string dt = "";
            //string due = "";
            //string billNo = "";
            //dt = txtDate.Text.ToString();
            //due = txtDue.Text.ToString();
           // billNo = txtBill.Text.ToString();
            Session["bill2"] = txtBillNo.Text.ToString();
            Session["due"] = txtDue.Text.ToString();
            Session["dt"] = txtDate.Text.ToString();
            //Response.Redirect("Master/DueDetails.aspx?dt1 = " + dt + "& due1 =" + due + "& bill1 = " + billNo);
            Response.Redirect("Master/DueDetails.aspx?SMID=" + mi);
            //Response.Redirect("PrintBill.aspx?Bill=" + bl);
        }

        protected void txtBarcode_TextChanged(object sender, EventArgs e)
        {
            
            BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            Entity.SaleBill objEt = new Entity.SaleBill();
            
            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            try
            {
                if (txtBarcode.Text.Trim() == "")
                {
                    imgBtnSave.Focus();
                }
                else
                {
                    // if (validation("Can't Left Blank!"))
                    //{
                    dt2 = objBl.GetAll_SaveProductNameBY_Barcode(txtBarcode.Text.Trim(), Convert.ToInt32(Session["HotelId"]));
                    ////----------------For SaveProductMaster-------------------
                    objEt.SaveProductMasterId = SaveProductMasterId;
                    objEt.BillNo = BillNo;
                    objEt.BillDate = Convert.ToDateTime(txtDate.Text);
                    objEt.BillAmount = 0;
                    objEt.DiscPer = 0;
                    objEt.DiscAmt = 0;
                    objEt.LSDiscAmt = 0;
                    objEt.DiscRemarks = "";
                    objEt.Complemantry_Remarks = "";
                    objEt.RecievableAmount = 0;
                    objEt.Occupy = 'N';
                    objEt.Cash = Cash;
                    objEt.Card = Card;
                    objEt.ExtraChargeOnCard = ExtraChargeOnCard;
                    objEt.Due = Due;
                    objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                    //objEt.HotelId = 0;
                    objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                    //objEt.GridRate = Convert.ToDecimal(dt2.Rows[0]["Rate"]);

                    ////-------------For SaveProductDetails---------------
                    objEt.ProductId = Convert.ToInt32(dt2.Rows[0]["ProductId"]);
                    dt1 = objBl.GetRate(objEt.ProductId, txtBarcode.Text);
                    if (dt1.Rows.Count > 0)
                    {
                        objEt.GridRate = Convert.ToDecimal(dt1.Rows[0][0]);
                    }
                    objEt.BarCode = txtBarcode.Text;
                    objEt.GridQuantity = 1;
                    objEt.GridAmount = objEt.GridRate;
                    //---------------------------------------------------------
                    dt = objBl.Save(objEt);
                    if (dt.Rows.Count > 0)
                    {
                        SaveProductMasterId = Convert.ToInt32(dt.Rows[0][0]);
                    }

                    loadSaveProductDetailsGrid();
                    gridCalculation();
                    
                    txtBarcode.Focus();
                    txtBarcode.Text = "";
                }
            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('No Item Found!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void txtComplemantry_Remarks_TextChanged(object sender, EventArgs e)
        {
            if (txtComplemantry_Remarks.Text.Trim() == "")
            {
                txtCash.Text = txtRecievable.Text.ToString();
            }
            else
            {
                txtCash.Text = "0";
                txtCard.Text = "0";
                txtDue.Text = "0";
                
            }
        }

        protected void txtDue_TextChanged(object sender, EventArgs e)
        {
            Payment();
        }

        protected void gdvOccupied_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //try
            //{
            //    BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
            //    GridViewRow row = (GridViewRow)gdvOccupied.Rows[e.RowIndex];
            //    Label lblSaveProductMasterId = (Label)row.FindControl("lblSavePrdctMrId");
            //    objBl.DeleteOccupiedItem(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(lblSaveProductMasterId.Text));
            //    loadSaveProductGridOccupied();
            //    loadSaveProductDetailsGrid();
            //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Item Deleted Successfully!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            //}
            //catch (Exception)
            //{
            //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Somthing Is Wrong There!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            //}
        }

        protected void imgBtnEdit_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EditSalBill.aspx");
        }

        

        protected void imgBtnPrint_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                BusinessLayer.SaleBill objBl = new BusinessLayer.SaleBill();
                Entity.SaleBill objEt = new Entity.SaleBill();

                ////----------------For ProductMaster-------------------
                objEt.SaveProductMasterId = SaveProductMasterId;
                //objEt.BillNo = Convert.ToInt64(txtBillNo.Text);
                objEt.BillNo = 0;
                objEt.BillDate = System.DateTime.Today;
                objEt.BillAmount = BillAmount;
                objEt.DiscPer = Convert.ToDecimal(txtDiscPer.Text);
                objEt.DiscAmt = Convert.ToDecimal(txtDisc.Text);
                objEt.LSDiscAmt = Convert.ToDecimal(txtLS.Text);
                objEt.DiscRemarks = "";
                objEt.Complemantry_Remarks = txtComplemantry_Remarks.Text;
                objEt.RecievableAmount = Convert.ToDecimal(txtRecievable.Text);
                objEt.Occupy = 'N';
                objEt.Cash = Convert.ToDecimal(txtCash.Text);
                objEt.Card = Convert.ToDecimal(txtCard.Text);
                objEt.Due = Convert.ToDecimal(txtDue.Text);

                //objEt.FirstEnteredOn = "";
                //objEt.FirstEnteredBy = "";
                //objEt.lastModifiedOn = "";
                objEt.LastModifiedBy = Convert.ToInt32(Session["UserId"]);
                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);

                ////-------------For SaveProductDetails---------------

                objEt.ProductId = 0;


                objEt.BarCode = txtBarcode.Text;
                objEt.GridRate = 0;
                objEt.GridQuantity = 0;
                objEt.GridAmount = 0;
                //objEt.FirstEnteredBy = "";
                objBl.Save(objEt);
                string bl = txtBillNo.Text;
                SaveProductMasterId = 0;
                loadSaveProductGridOccupied();
                txtBarcode.Text = "";
                txtBarcode.Focus();
                gdvItem.DataSource = null;
                gdvItem.DataBind();
                txtBill.Text = "";
                txtDiscPer.Text = "0";
                txtRecievable.Text = "";
                Response.Redirect("PrintBill.aspx?Bill=" + bl);
                //GetBillNo(); 
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Somthing Is Wrong There!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            txtTime.Text = Convert.ToString(DateTime.Now.ToShortTimeString());
           // Label2.Text = Convert.ToString(DateTime.Today.ToLongDateString());
        }
    }
}

