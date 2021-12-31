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
    public partial class DrinksPurchase : System.Web.UI.Page
    {
        decimal SalTax = 0;
        decimal SpecialDisc = 0;
        decimal BillTotal = 0;
        public int PurchaseId
        {
            get { return Convert.ToInt32(ViewState["PurchaseId"]); }
            set { ViewState["PurchaseId"] = value; }
        }
        public int PurchaseDetailsId
        {
            get { return Convert.ToInt32(ViewState["PurchaseDetailsId"]); }
            set { ViewState["PurchaseDetailsId"] = value; }
        }
        public int TotRebateBottle
        {
            get { return Convert.ToInt32(ViewState["TotRebateBottle"]); }
            set { ViewState["TotRebateBottle"] = value; }
        }
        public int TotNoOfBtl
        {
            get { return Convert.ToInt32(ViewState["TotNoOfBtl"]); }
            set { ViewState["TotNoOfBtl"] = value; }
        }
        public decimal TotRate
        {
            get { return Convert.ToInt32(ViewState["TotRate"]); }
            set { ViewState["TotRate"] = value; }
        }
        public decimal Discount
        {
            get { return Convert.ToInt32(ViewState["Discount"]); }
            set { ViewState["Discount"] = value; }
        }
        public decimal TotDiscount
        {
            get { return Convert.ToInt32(ViewState["TotDiscount"]); }
            set { ViewState["TotDiscount"] = value; }
        }
        public decimal TotMrp
        {
            get { return Convert.ToInt32(ViewState["TotMrp"]); }
            set { ViewState["TotMrp"] = value; }
        }
        public decimal GrandTotalMRP
        {
            get { return Convert.ToInt32(ViewState["GrandTotalMRP"]); }
            set { ViewState["GrandTotalMRP"] = value; }
        }
        public int TotNoOfBtlWithRebate
        {
            get { return Convert.ToInt32(ViewState["TotNoOfBtlWithRebate"]); }
            set { ViewState["TotNoOfBtlWithRebate"] = value; }
        }
        public void loadCreditorsName() // load Creditor's name on ddlCreditor DropdownList.
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            DataTable dt = new DataTable();
            ddlCreditor.DataSource = null;
            ddlCreditor.DataBind();
            dt = objBl.GetAll_LedgerMaster();
            if (dt.Rows.Count > 0)
            {
                ddlCreditor.DataSource = dt;
                ddlCreditor.DataTextField = "Ledger_Nm";
                ddlCreditor.DataValueField = "Ledger_Id";
                ddlCreditor.DataBind();
            }
            ddlCreditor.Items.Insert(0,"Creditors");
        }
        public void gridCalculation() //Perform calculation in gdvPurchaseDetails Gridview for summation.
        {
            int grandtotbtl = 0;
            decimal grandTotMrp = 0;
            decimal grossTotal = 0;
            decimal totDiscount = 0;
            //decimal saleTaxOntotMrp = 0;
            //decimal billTotal = 0;
            //decimal tcs = 0;
            //decimal tcs_edu = 0;
            //decimal netAmount = 0;
            for (int i = 0; i < gdvPurchaseDetails.Rows.Count; i++)
            {
                Label lblGrandtotbtl = (Label)gdvPurchaseDetails.Rows[i].FindControl("lblTotBtl");
                Label lblGrandTotMrp = (Label)gdvPurchaseDetails.Rows[i].FindControl("lblTotMRP");
                Label lblGrossTotal = (Label)gdvPurchaseDetails.Rows[i].FindControl("lblAmount");
                Label lblDisc = (Label)gdvPurchaseDetails.Rows[i].FindControl("lblTotDisc");
                grossTotal = grossTotal + Convert.ToDecimal(lblGrossTotal.Text);
                grandtotbtl = grandtotbtl + Convert.ToInt32(lblGrandtotbtl.Text);
                grandTotMrp = grandTotMrp + Convert.ToDecimal(lblGrandTotMrp.Text);
                //saleTaxOntotMrp = grossTotal + Convert.ToDecimal(lblGrossTotal.Text);
                totDiscount = totDiscount + Convert.ToDecimal(lblDisc.Text);
                ViewState["GrossTotal"] = Convert.ToString(grossTotal);
            }
            GrandTotalMRP = grandTotMrp;//total mrp of total bottles.
            txtTotalBtl.Text = Convert.ToString(grandtotbtl);   //total no. of bottles including  rebate bottles.
            txtTotalMrp.Text = Convert.ToString(GrandTotalMRP); //total grand mrp of total bottles including rebate bottles
            txtGrossTotal.Text = Convert.ToString(grossTotal);  //Gross Total Amount.
            txtDiscRebate.Text = Convert.ToString(totDiscount);
            //----------------calculating Total bill in every aspects.----------------
            ViewState["BillTotal"] = (Convert.ToDecimal(txtGrossTotal.Text) - Convert.ToDecimal(txtDiscRebate.Text)).ToString();

            txtSurcharge.Text = ((Convert.ToDecimal(ViewState["BillTotal"]) * Convert.ToDecimal(txtSurchargePer.Text)) / 100).ToString();
            ViewState["BillTotal"] = Convert.ToDecimal(ViewState["BillTotal"]) - Convert.ToDecimal(txtSpclDisc.Text);
            
            txtTcsPer.Text = ((Convert.ToDecimal(ViewState["BillTotal"]) * 1) / 100).ToString();
            txtSalTax.Text = ((GrandTotalMRP * Convert.ToDecimal(txtSaleTaxPer.Text)) / 100).ToString();
            ViewState["BillTotal"] = Convert.ToDecimal(ViewState["BillTotal"]) + Convert.ToDecimal(txtSalTax.Text);
            txtBill.Text = ViewState["BillTotal"].ToString();
            txtNetAmount.Text = Convert.ToString(Convert.ToDecimal(ViewState["BillTotal"]) + Convert.ToDecimal(txtTcsPer.Text) + Convert.ToDecimal(txtSurcharge.Text));
            
        }
        public void loadProductName() //Load Product Name on ddlProductName DropdownList.
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            DataTable dt = new DataTable();
            ddlProductName.DataSource = null;
            ddlProductName.DataBind();
            dt = objBl.GetAll_ProductMaster(Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                ddlProductName.DataSource = dt;
                ddlProductName.DataTextField = "ProductName";
                ddlProductName.DataValueField = "ProductId";
                ddlProductName.DataBind();
            }
            ddlProductName.Items.Insert(0, "Product");
        }

        public void loadPurchase()  //Fill all the Textfield with data from PurchaseMaster as well as Gridview gdvPurchaseDetails from PurchaseDetails Table repectively when we coming through SearchDrinksPurchase.aspx page.
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            DataSet ds = new DataSet();
            gdvPurchaseDetails.DataSource = null;
            gdvPurchaseDetails.DataBind();
            ds = objBl.GetAll_ById_PurchaseMaster(PurchaseId);
            if (ds.Tables[1].Rows.Count > 0)
            {
                gdvPurchaseDetails.DataSource = ds.Tables[1];
                gdvPurchaseDetails.DataBind();
            }
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtpurDate.Text = ds.Tables[0].Rows[0]["PurchaseDate"].ToString();
                txtInvDate.Text = ds.Tables[0].Rows[0]["InvoiceDate"].ToString();
                ddlCreditor.SelectedValue= ds.Tables[0].Rows[0]["LedgerId"].ToString();
                txtInvNo.Text = ds.Tables[0].Rows[0]["InvoiceNo"].ToString();
                txtPassNo.Text = ds.Tables[0].Rows[0]["ExcisePassNo"].ToString();
                txtTotalBtl.Text = ds.Tables[0].Rows[0]["TotalBottle"].ToString();
                txtTotalMrp.Text = ds.Tables[0].Rows[0]["TotalMRP"].ToString();
                txtGrossTotal.Text = ds.Tables[0].Rows[0]["TotalGross"].ToString();
                txtDiscRebate.Text = ds.Tables[0].Rows[0]["TotalDiscount"].ToString();
                txtSaleTaxPer.Text = ds.Tables[0].Rows[0]["STaxOnTotalMRPPer"].ToString();
                txtSalTax.Text = ds.Tables[0].Rows[0]["STaxOnTotalMRPAmt"].ToString();
                txtSpclDisc.Text = ds.Tables[0].Rows[0]["SpecialDiscount"].ToString();
                // txtBill.Text = dt.Rows[0]["PurchaseDate"].ToString();
                txtTcsPer.Text = ds.Tables[0].Rows[0]["TCS"].ToString();
                txtSurcharge.Text = ds.Tables[0].Rows[0]["EduCessAmt"].ToString();
                txtSurchargePer.Text = ds.Tables[0].Rows[0]["EduCessPer"].ToString();
                txtNetAmount.Text = ds.Tables[0].Rows[0]["NetAmount"].ToString();
            }
        }

        public void loadPurchaseDetails()   //Load Gridview gdvPurchaseDetails with data from PurchaseDetail Table whenever we insert the data from DrinksPurchaseMaster.aspx.
        {
           // int no =14;
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            DataTable dt = new DataTable();
            gdvPurchaseDetails.DataSource = null;
            gdvPurchaseDetails.DataBind();
            dt = objBl.GetAll_PurchaseDetails(PurchaseId);
            if (dt.Rows.Count > 0)
            {
                gdvPurchaseDetails.DataSource = dt;
               
                gdvPurchaseDetails.DataBind();
            }
           
        }
        public void loadPurchaseMaster()
        {
            //BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            //DataTable dt = new DataTable();
            //gdvPurchaseDetails.DataSource = null;
            //gdvPurchaseDetails.DataBind();
            //dt = objBl.GetAll_ById_PurchaseMaster(PurchaseId);
            //if (dt.Rows.Count > 0)
            //{
            //    txtpurDate.Text = dt.Rows[0]["PurchaseDate"].ToString();
            //    txtInvDate.Text = dt.Rows[0]["InvoiceDate"].ToString();
            //    ddlCreditor.SelectedItem.Text = dt.Rows[0]["LedgerId"].ToString();
            //    txtInvNo.Text = dt.Rows[0]["InvoiceNo"].ToString();
            //    txtPassNo.Text = dt.Rows[0]["ExcisePassNo"].ToString();
            //    txtTotalBtl.Text = dt.Rows[0]["TotalBottle"].ToString();
            //    txtTotalMrp.Text = dt.Rows[0]["TotalMRP"].ToString();
            //    txtGrossTotal.Text = dt.Rows[0]["TotalGross"].ToString();
            //    txtDiscRebate.Text = dt.Rows[0]["TotalDiscount"].ToString();
            //    txtSaleTaxPer.Text = dt.Rows[0]["STaxOnTotalMRPPer"].ToString();
            //    txtSalTax.Text = dt.Rows[0]["STaxOnTotalMRPAmt"].ToString();
            //    txtSpclDisc.Text = dt.Rows[0]["SpecialDiscount"].ToString();
            //   // txtBill.Text = dt.Rows[0]["PurchaseDate"].ToString();
            //    txtTcsPer.Text = dt.Rows[0]["TCS"].ToString();
            //    txtSurcharge.Text = dt.Rows[0]["EduCessAmt"].ToString();
            //    txtSurchargePer.Text = dt.Rows[0]["EduCessPer"].ToString();
            //    txtNetAmount.Text = dt.Rows[0]["NetAmount"].ToString();
            //}

        }
        public void loadBottlePerCase() //Load size of bottles in DropdownList ddlBtl.
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            DataTable dt = new DataTable();
            ddlBtl.DataSource = null;
            ddlBtl.DataBind();
            dt = objBl.GetAll_BottlePerCase();
            if (dt.Rows.Count > 0)
            {
                ddlBtl.DataSource = dt;
                ddlBtl.DataTextField = "SizeOfBottle";
                ddlBtl.DataValueField = "CaseId";
                ddlBtl.DataBind();
            }
            ddlBtl.Items.Insert(0, "Ml/Btl");
        }
        public void Reset()
        {
            txtpurDate.Text = "";
            txtInvDate.Text = "";
            ddlCreditor.SelectedIndex = 0;
            txtInvNo.Text = "";
            txtPassNo.Text = "";
            txtTotalBtl.Text = "0";
            txtTotalMrp.Text = "0";
            txtGrossTotal.Text = "0";
            txtDiscRebate.Text = "0";
            txtSaleTaxPer.Text = "0";
            txtSalTax.Text = "0";
            txtSpclDisc.Text = "0";
            txtBill.Text = "0";
            txtTcsPer.Text = "0";
            txtSurcharge.Text = "0.00";
            txtSurchargePer.Text = "0";
            txtNetAmount.Text = "0";
        }
        public void ResetPurchaseDetails()
        {
            txtBarcode.Text = "";
            ddlProductName.SelectedIndex = 0;
            ddlBtl.SelectedIndex = 0;
            txtBatchNo.Text = "";
            txtPurcase.Text = "0";
            txtPerBtl.Text = "0";
            txtRebCase.Text = "0";
            txtRebBtl.Text = "0";
            txtMrp.Text = "0";
            txtRatePerCase.Text = "0";
            txtDiscPerCase.Text = "0";
        }
        public bool Validation()
        {

            if (ddlCreditor.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Creditor Properly!";
                return false;
            }
           
            else if (txtpurDate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Purchase Date Can't Left Blank!";
                return false;
            }
            else if (txtInvDate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Invoice Date Can't Left Blank!";
                return false;
            }

            else if (txtInvNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Invoice Can't Be Blank!";
                return false;
            }
            else if (txtPassNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "ExPass Can't Be Blank!";
                return false;
            }
            else
            {
                return true;
            }
        }
        public bool Validation2()
        {

            if (ddlCreditor.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Creditor Properly!";
                return false;
            }

            else if (txtpurDate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Purchase Date Can't Left Blank!";
                return false;
            }
            else if (txtInvDate.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Invoice Date Can't Left Blank!";
                return false;
            }

            else if (txtInvNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "Invoice Can't Be Blank!";
                return false;
            }
            else if (txtPassNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "ExPass Can't Be Blank!";
                return false;
            }
            else if (txtBarcode.Text.Trim() == "")
            {
                lblError.Visible = true;
                lblError.Text = "Barcode Can't Be Blank!";
                return false;
            }
            if (ddlProductName.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select ProductName Properly!";
                return false;
            }
            if (ddlBtl.SelectedIndex == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Select Bottle Properly!";
                return false;
            }

            else if (txtBatchNo.Text == "")
            {
                lblError.Visible = true;
                lblError.Text = "BatchNo Can't Be Blank!";
                return false;
            }
            else
            {
                return true;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = Convert.ToString(DateTime.Today.ToLongDateString());
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "DrinksPurchase.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("testing.aspx");
                    }
                }
                //-------------------
                lblError.Visible = false;
                loadCreditorsName();
                loadProductName();
                loadBottlePerCase();

                PurchaseId = Convert.ToInt32(Request.QueryString["pId"]);
                if (PurchaseId != 0)
                {
                    loadPurchase();
                }
            }
        }

        protected void ddlBtl_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            DataTable dt = new DataTable();
            try
            {
                dt = objBl.GetNoOfBottle(Convert.ToInt32(ddlBtl.SelectedValue));
                if (dt.Rows.Count > 0)
                {
                    ViewState["NoOfBottle"] = Convert.ToInt32(dt.Rows[0]["NoOfBottlePerCase"].ToString());  // Storing no. of bottles in each case.
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Select Item Properly!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
            
        }

        protected void txtMrp_TextChanged(object sender, EventArgs e)
        {

            //ViewState["price"] = Convert.ToDecimal(txtMrp.Text) * Convert.ToInt32(ViewState["NoOfBottle"]);
            //txtRatePerCase.Text = Convert.ToString(ViewState["price"]);
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            Entity.Master.DrinksPurchase objEt = new Entity.Master.DrinksPurchase();
            DataTable dt = new DataTable();
            decimal RatePerBtl = 0;
            decimal discountPerbtl = 0;
            try
            {
                TotNoOfBtlWithRebate = (Convert.ToInt32(txtPurcase.Text) * Convert.ToInt32(ViewState["NoOfBottle"])) + Convert.ToInt32(txtPerBtl.Text) + (Convert.ToInt32(txtRebCase.Text) * Convert.ToInt32(ViewState["NoOfBottle"])) + (Convert.ToInt32(txtRebBtl.Text)); // Total no of bottles including Rebate Bottles.(for PurchaseDetails)
                TotNoOfBtl = Convert.ToInt32(txtPurcase.Text) * Convert.ToInt32(ViewState["NoOfBottle"]) + Convert.ToInt32(txtPerBtl.Text); //total no of purchaed bottles(excluding Rebate bottles.)(for PurchaseDetails).
                TotRebateBottle = Convert.ToInt32(txtRebCase.Text) * Convert.ToInt32(ViewState["NoOfBottle"]) + Convert.ToInt32(txtRebBtl.Text); // total no of Rebate bottles.(for PurchaseDetails)
                TotMrp = Convert.ToDecimal(txtMrp.Text) * Convert.ToInt32(ViewState["TotNoOfBtlWithRebate"]);   //total mrp on total no of bottles including rebate bottles for PurchaseDetails.
                RatePerBtl = Convert.ToDecimal(txtRatePerCase.Text) / Convert.ToInt32(ViewState["NoOfBottle"]); //rate per bottle.(on purchased bottles)
                TotRate = RatePerBtl * Convert.ToInt32(TotNoOfBtl); //Total purchased rate .
                discountPerbtl = Convert.ToDecimal(txtDiscPerCase.Text) / Convert.ToInt32(ViewState["NoOfBottle"]);
                TotDiscount = discountPerbtl * TotNoOfBtl;
            }
            catch(ArithmeticException ae)
            {
                lblError.Text = ae.Message;
            }
            //-----------------------Parameters for PurchaseMaster-------------------------
            if (Validation2())
            {
            objEt.PurchaseId = Convert.ToInt32(PurchaseId);
            objEt.PurchaseDate = Convert.ToDateTime(txtpurDate.Text);
            objEt.LedgerId = Convert.ToInt32(ddlCreditor.SelectedValue);
            objEt.InvoiceNo = txtInvNo.Text;
            objEt.InvoiceDate = Convert.ToDateTime(txtInvDate.Text);
            objEt.ExcisePassNo = txtPassNo.Text;
            objEt.GrandTotalBottle = 0;
            objEt.GrandTotalMRP =0;
            objEt.TotGross = 0;
            objEt.GrandDisc = 0;
            objEt.STaxOnTotalMRPPer = 0;
            objEt.STaxOnTotalMRPAmt =0;
            objEt.SpecialDiscount =0;
            objEt.TCS = 0;
            objEt.EduCess =0;
            objEt.EduCessAmt =0;
            objEt.NetAmount = 0;  //Convert.ToDecimal(txtNetAmount.Text);
            //-----------------------Parameters for PurchaseDetails-------------------------
            objEt.ProductId = Convert.ToInt32(ddlProductName.SelectedValue);
            objEt.CaseId = Convert.ToInt32(ddlBtl.SelectedValue);
            objEt.BatchNo = txtBatchNo.Text;
            objEt.BarCode = txtBarcode.Text;
            objEt.PurchaseCase = Convert.ToInt32(txtPurcase.Text);
            objEt.PurchaseBottle = Convert.ToInt32(txtPerBtl.Text);
            objEt.TotNoOfBtl = TotNoOfBtl;
            objEt.RebateCase = Convert.ToInt32(txtRebCase.Text);
            objEt.RebateBottle = Convert.ToInt32(txtRebBtl.Text);
            objEt.TotRebateBottle = TotRebateBottle;
            objEt.MRPBottle = Convert.ToDecimal(txtMrp.Text);   //Convert.ToDecimal(txtMrp.Text);
            objEt.Rate = Convert.ToDecimal(txtRatePerCase.Text);
            objEt.Discount = Convert.ToDecimal(txtDiscPerCase.Text);
            objEt.TotNoOfBtlWithRebate = TotNoOfBtlWithRebate;
            objEt.TotMrp = TotMrp;
            objEt.TotDiscount = TotDiscount;
            objEt.TotRate = TotRate;

            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
            objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
           
                dt = objBl.SavePurchaseDetails(objEt);
                if (dt.Rows.Count > 0)
                {
                    PurchaseId = Convert.ToInt32(dt.Rows[0][0]);
                }
                loadPurchaseDetails();
                gridCalculation();
                ResetPurchaseDetails();
            }
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DrinksPurchase oblBl = new BusinessLayer.DrinksPurchase();
            Entity.Master.DrinksPurchase objEt = new Entity.Master.DrinksPurchase();
            DataTable dt = new DataTable();
            //-----------------------Parameters for PurchaseMaster---------------------
            if (Validation())
            {
            objEt.PurchaseId = Convert.ToInt32(PurchaseId);
            objEt.PurchaseDate = Convert.ToDateTime(txtpurDate.Text);
            objEt.LedgerId = Convert.ToInt32(ddlCreditor.SelectedValue);
            objEt.InvoiceNo = txtInvNo.Text;
            objEt.InvoiceDate = Convert.ToDateTime(txtInvDate.Text);
            objEt.ExcisePassNo = txtPassNo.Text;
            objEt.GrandTotalBottle = Convert.ToInt32(txtTotalBtl.Text);
            objEt.GrandTotalMRP = Convert.ToDecimal(txtTotalMrp.Text);
            objEt.TotGross = Convert.ToDecimal(txtGrossTotal.Text);
            objEt.GrandDisc = Convert.ToDecimal(txtDiscRebate.Text);
            objEt.STaxOnTotalMRPPer = Convert.ToDecimal(txtSaleTaxPer.Text);
            objEt.STaxOnTotalMRPAmt = Convert.ToDecimal(txtSalTax.Text);
            objEt.SpecialDiscount = Convert.ToDecimal(txtSpclDisc.Text);
            objEt.TCS = Convert.ToDecimal(txtTcsPer.Text);
            objEt.EduCess = Convert.ToDecimal(txtSurchargePer.Text);
            objEt.EduCessAmt = Convert.ToDecimal(txtSurcharge.Text);
            //objEt.NetAmount = 2000;  //Convert.ToDecimal(txtNetAmount.Text);
            objEt.NetAmount = Convert.ToDecimal(txtNetAmount.Text);
            //-----------------------Parameters for PurchaseDetails-------------------------
            objEt.ProductId = 0;
            objEt.CaseId =0;
            objEt.BatchNo ="";
            objEt.BarCode = "";
            objEt.PurchaseCase = 0;
            objEt.PurchaseBottle = 0;
            objEt.TotNoOfBtl = 0;
            objEt.RebateCase = 0;
            objEt.RebateBottle = 0;
            objEt.TotRebateBottle = 0;
            objEt.MRPBottle = 0;   
            objEt.Rate =0;
            objEt.Discount =0;
            objEt.TotNoOfBtlWithRebate = 0;
            objEt.TotMrp = 0;
            objEt.TotDiscount = 0;
            objEt.TotRate = 0;

            objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
            objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
            
                oblBl.SavePurchaseDetails(objEt);
                PurchaseId = 0;
                loadPurchaseDetails();
                Reset();
            }
        }

        protected void ImgDel_Click(object sender, ImageClickEventArgs e)
        {
            //gridCalculation();
            //loadPurchaseDetails();
        }

        protected void gdvPurchaseDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            PurchaseDetailsId = Convert.ToInt32(gdvPurchaseDetails.DataKeys[e.RowIndex].Value);
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            objBl.Delete(PurchaseDetailsId);
           
            loadPurchaseDetails();
            gridCalculation();

        }

        protected void txtSaleTaxPer_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //txtSalTax.Text = ((GrandTotalMRP * Convert.ToDecimal(txtSaleTaxPer.Text)) / 100).ToString();
                //ViewState["BillTotal"] = Convert.ToDecimal(ViewState["BillTotal"]) + Convert.ToDecimal(txtSalTax.Text);
                gridCalculation();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void txtSpclDisc_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //ViewState["BillTotal"] = Convert.ToDecimal(ViewState["BillTotal"]) - Convert.ToDecimal(txtSpclDisc.Text);
                //txtBill.Text = ViewState["BillTotal"].ToString();
                //txtTcsPer.Text = ((Convert.ToDecimal(ViewState["BillTotal"]) * 1) / 100).ToString();
                gridCalculation();
            }
            catch(Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void txtTcsPer_TextChanged(object sender, EventArgs e)
        {
           // txtTcsPer.Text = ((Convert.ToDecimal(ViewState["BillTotal"]) * 1) / 100).ToString();
            gridCalculation();
        }

        protected void txtSurchargePer_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //txtSurcharge.Text = ((Convert.ToDecimal(ViewState["BillTotal"]) * Convert.ToDecimal(txtSurchargePer.Text)) / 100).ToString();
                gridCalculation();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Plz Provide Proper Input!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DrinksPurchase oblBl = new BusinessLayer.DrinksPurchase();
            Entity.Master.DrinksPurchase objEt = new Entity.Master.DrinksPurchase();
            DataTable dt = new DataTable();
            try
            {
                //-----------------------Parameters for PurchaseMaster---------------------
                objEt.PurchaseId = Convert.ToInt32(PurchaseId);
                objEt.PurchaseDate = Convert.ToDateTime(txtpurDate.Text);
                objEt.LedgerId = Convert.ToInt32(ddlCreditor.SelectedValue);
                objEt.InvoiceNo = txtInvNo.Text;
                objEt.InvoiceDate = Convert.ToDateTime(txtInvDate.Text);
                objEt.ExcisePassNo = txtPassNo.Text;
                objEt.GrandTotalBottle = Convert.ToInt32(txtTotalBtl.Text);
                objEt.GrandTotalMRP = Convert.ToDecimal(txtTotalMrp.Text);
                objEt.TotGross = Convert.ToDecimal(txtGrossTotal.Text);
                objEt.GrandDisc = Convert.ToDecimal(txtDiscRebate.Text);
                objEt.STaxOnTotalMRPPer = Convert.ToDecimal(txtSaleTaxPer.Text);
                objEt.STaxOnTotalMRPAmt = Convert.ToDecimal(txtSalTax.Text);
                objEt.SpecialDiscount = Convert.ToDecimal(txtSpclDisc.Text);
                objEt.TCS = Convert.ToDecimal(txtTcsPer.Text);
                objEt.EduCess = Convert.ToDecimal(txtSurchargePer.Text);
                objEt.EduCessAmt = Convert.ToDecimal(txtSurcharge.Text);
                objEt.NetAmount = 2000;  //Convert.ToDecimal(txtNetAmount.Text);
                //-----------------------Parameters for PurchaseDetails-------------------------
                objEt.ProductId = 0;
                objEt.CaseId = 0;
                objEt.BatchNo = "";
                objEt.BarCode = "";
                objEt.PurchaseCase = 0;
                objEt.PurchaseBottle = 0;
                objEt.TotNoOfBtl = 0;
                objEt.RebateCase = 0;
                objEt.RebateBottle = 0;
                objEt.TotRebateBottle = 0;
                objEt.MRPBottle = 0;   //Convert.ToDecimal(txtMrp.Text);
                objEt.Rate = 0;
                objEt.Discount = 0;
                objEt.TotNoOfBtlWithRebate = 0;
                objEt.TotMrp = 0;
                objEt.TotDiscount = 0;
                objEt.TotRate = 0;

                objEt.HotelId = Convert.ToInt32(Session["HotelId"]);
                objEt.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                oblBl.SavePurchaseDetails(objEt);
                gridCalculation();
                //PurchaseId = 0;
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Provide Proper Input For Updation!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            objBl.DeleteTempPurchaseMaster(PurchaseId);
            loadPurchaseDetails();
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SearchDrinksPurchase.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            BusinessLayer.DrinksPurchase objBl = new BusinessLayer.DrinksPurchase();
            objBl.DeleteTempPurchaseMaster(PurchaseId);
            loadPurchaseDetails();
        }

        protected void txtSurcharge_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
