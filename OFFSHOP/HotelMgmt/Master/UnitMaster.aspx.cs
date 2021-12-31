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
using System.Data.SqlClient;
namespace HotelMgmt.Master
{
    public partial class UnitMaster : System.Web.UI.Page
    {
        public int UnitId
        {
            get { return Convert.ToInt32(ViewState["UnitId"]); }
            set { ViewState["UnitId"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnInsert.Enabled = true;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                LoadUnitMaster();
            }
            btnInsert.Attributes.Add("onclick", "javascript:return validation('" + txtUnit.ClientID + "')");
            btnUpdate.Attributes.Add("onclick", "javascript:return validation('" + txtUnit.ClientID + "')");
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.UnitMaster UnitMasterLogic = new BusinessLayer.Master.UnitMaster();
                Entity.Master.UnitMaster UnitMasterEntity = new Entity.Master.UnitMaster();

                if (Convert.ToInt32(UnitId) == 0)
                {
                    //UnitMasterEntity.UnitId =0;
                    UnitMasterEntity.UnitName = txtUnit.Text.ToString().Trim();
                    UnitMasterEntity.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                    UnitMasterEntity.HotelId = Convert.ToInt32(Session["HotelId"]);
                    UnitMasterLogic.Save(UnitMasterEntity);

                    ShowMessage("Record Saved Sucessfully");

                    UnitMasterEntity.UnitId = 0;
                    txtUnit.Text = "";
                    btnInsert.Enabled = true;
                    btnUpdate.Enabled = false;
                    btnDelete.Enabled = false;
                    LoadUnitMaster();
                }
            }
            catch (SqlException ex)
            {
                ShowMessage("Can't Give Duplicate Values!");
               // Response.Write(ex.Message);
            }
        }

        public void CloseWindow()
        {
            //Button btnHidden = (Button)Master.FindControl("btnHidden"); // if its Button control
            string script = "<script language='JavaScript'>RefreshParent();</script>";
            Page.RegisterStartupScript("", script);

        }

        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }

        protected void dgvUnitName_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                BusinessLayer.Master.UnitMaster UnitMasterLogic = new BusinessLayer.Master.UnitMaster();
                DataTable dt = new DataTable();

                UnitId = Convert.ToInt32(dgvUnit.DataKeys[e.NewEditIndex].Value);

                dt = UnitMasterLogic.GetUnitMasterEditById(UnitId);
                txtUnit.Text = dt.Rows[0]["UnitName"].ToString();
                btnInsert.Enabled = false;
                btnUpdate.Enabled = true;
                btnDelete.Enabled = true;
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message.ToString());
            }
        }

        protected void LoadUnitMaster()
        {
            try
            {
                BusinessLayer.Master.UnitMaster UnitMasterLogic = new BusinessLayer.Master.UnitMaster();

                DataTable dt = new DataTable();
                dt = UnitMasterLogic.GetAllUnitMaster(Convert.ToInt32(Session["HotelId"]));
                if (dt != null)
                {
                    dgvUnit.DataSource = dt;
                    dgvUnit.DataBind();
                }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message.ToString());
            }
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            CloseWindow();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            Entity.Master.UnitMaster UnitMasterEntity = new Entity.Master.UnitMaster();
            UnitMasterEntity.UnitId = 0;
            txtUnit.Text = "";
            btnInsert.Enabled = true;
            btnUpdate.Enabled = false;
            btnDelete.Enabled = false;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.Master.UnitMaster UnitMasterLogic = new BusinessLayer.Master.UnitMaster();
                Entity.Master.UnitMaster UnitMasterEntity = new Entity.Master.UnitMaster();

                if (Convert.ToInt32(UnitId) != 0)
                    {
                        UnitMasterEntity.UnitId = Convert.ToInt32(UnitId);
                        UnitMasterEntity.UnitName = txtUnit.Text.ToString().Trim();
                        UnitMasterEntity.FirstEnteredBy = Convert.ToInt32(Session["UserId"]);
                        UnitMasterEntity.HotelId = Convert.ToInt32(Session["HotelId"]);
                        UnitMasterLogic.Save(UnitMasterEntity);

                        ShowMessage("Record Updated Sucessfully");

                        UnitId = 0;
                        txtUnit.Text = "";
                        btnInsert.Enabled = true;
                        btnUpdate.Enabled = false;
                        btnDelete.Enabled = false;
                        btnRefresh.Enabled = true;
                        btnExit.Enabled = true;
                        LoadUnitMaster();
                    }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message.ToString());
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            BusinessLayer.Master.UnitMaster UnitMasterLogic = new BusinessLayer.Master.UnitMaster();
            if (Convert.ToInt32(UnitId) != 0)
            {
                UnitMasterLogic.DeleteUnitMasterById(UnitId);

                ShowMessage("Record Deleted Sucessfully");

                UnitId = 0;
                txtUnit.Text = "";
                btnInsert.Enabled = true;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                btnRefresh.Enabled = true;
                btnExit.Enabled = true;
                LoadUnitMaster();
            }
        }

    }
}
