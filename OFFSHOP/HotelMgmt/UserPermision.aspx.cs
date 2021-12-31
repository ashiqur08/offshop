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
    public partial class UserPermision : System.Web.UI.Page
    {
        public char Visibility
        {
            get { return Convert.ToChar(ViewState["Visibility"]); }
            set { ViewState["Visibility"] = value; }
        }
        public int MenuId
        {
            get { return Convert.ToInt32(ViewState["MenuId"]); }
            set { ViewState["MenuId"] = value; }
        }
        public int EmployeeId
        {
            get { return Convert.ToInt32(ViewState["EmployeeId"]); }
            set { ViewState["EmployeeId"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------------
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                DataTable dt = new DataTable();
                dt = objBl.PermissionUser(Convert.ToInt32(Session["HotelId"]), Convert.ToInt32(Session["UserId"]), "UserPermision.aspx");
                if (dt.Rows.Count >= 0)
                {
                    if (Convert.ToChar(dt.Rows[0][0]) == 'N')
                    {
                        Response.Redirect("testing.aspx");
                    }
                }
                //-------------------
                LoadddlLogin();
            }
        }
        public void LoadddlLogin()
        {
            BusinessLayer.UserPermision objBl = new BusinessLayer.UserPermision();
            DataTable dt = new DataTable();
            ddlLogin.DataSource = null;
            ddlLogin.DataBind();
            dt = objBl.GetAll_Employee_LoginName();
            if (dt.Rows.Count > 0)
            {
                ddlLogin.DataSource = dt;
                ddlLogin.DataTextField = "LoginName";
                ddlLogin.DataValueField = "EmployeeId";
                ddlLogin.DataBind();
            }
            ddlLogin.Items.Insert(0,"---Select User---");
        }
        public void LoadchkBoxListMenu()
        {
            BusinessLayer.UserPermision objBl = new BusinessLayer.UserPermision();
            DataTable dt = new DataTable();
            chkBoxListMenu.DataSource = null;
            chkBoxListMenu.DataBind();
            dt = objBl.GetAll_ById_PermissionUser(EmployeeId, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                chkBoxListMenu.DataSource = dt;
                chkBoxListMenu.DataTextField = "MenuText";
                chkBoxListMenu.DataValueField = "MenuId";
                chkBoxListMenu.DataBind();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (Convert.ToChar(dt.Rows[i]["Visibility"]) == 'Y')
                    {
                        chkBoxListMenu.Items[i].Selected = true;
                    }
                }
                
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EmployeeId = Convert.ToInt32(ddlLogin.SelectedValue);
            LoadchkBoxListMenu();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BusinessLayer.UserPermision objBl = new BusinessLayer.UserPermision();
            Entity.UserPermision objEt = new Entity.UserPermision();

            for (int i = 0; i < chkBoxListMenu.Items.Count;i++ )
            {
                objEt.EmployeeId = EmployeeId;
                objEt.MenuId = Convert.ToInt32(chkBoxListMenu.Items[i].Value);
                if (chkBoxListMenu.Items[i].Selected)
                {
                    objEt.Visibility = 'Y';
                }
                else
                {
                    objEt.Visibility ='N';
                }
                objBl.Save(objEt);
            }
        }
    }
}
