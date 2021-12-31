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

namespace HotelMgmt.Login
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
                lblError.Visible = false;
                objBl.Save_PermissionMenuOffshop();
                loadHotel();
                ddlHotel.Focus();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if (ddlHotel.SelectedValue == 0)
            //{
            //    lblError.Visible = true;
            //    lblError.Text = "Please Select Hotel.!";
            //}

            BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
            Entity.LoginUser objEt = new Entity.LoginUser();
            DataTable dt = new DataTable();
            dt = objBl.Login(txtId.Text, txtPwd.Text, Convert.ToInt32(Session["HotelId"]));
            if (dt.Rows.Count > 0)
            {
                Session["UserId"] = dt.Rows[0]["EmployeeId"].ToString();
                Session["Type"] = dt.Rows[0]["Type"].ToString(); ;
                Response.Redirect("../testing.aspx");
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Invalid UserId Or Password.!";
            }
        }

        protected void txtPwd_TextChanged(object sender, EventArgs e)
        {
            
        }

        public void loadHotel()
        {
            BusinessLayer.LoginUser objBl = new BusinessLayer.LoginUser();
            DataTable dt = new DataTable();
            //DataTable dt1 = new DataTable();

            //dt1 = objBl.GetUserId(txtId.Text.Trim(), txtPwd.Text.Trim());
            //if (dt1.Rows.Count > 0)
            //{
            //    Session["UserId"] = dt1.Rows[0][0];
            //}

            ddlHotel.DataSource = null;
            ddlHotel.DataBind();
            //dt = objBl.GetAll_HotelForLogin(Convert.ToInt32(Session["UserId"]));
            dt = objBl.GetAll_HotelForLogin();
            if (dt.Rows.Count > 0)
            {
                ddlHotel.DataSource = dt;
                ddlHotel.DataTextField = "HotelName";
                ddlHotel.DataValueField = "HotelId";
                ddlHotel.DataBind();
            }
            ddlHotel.Items.Insert(0,"----Select Hotel----");
        }

        protected void ddlHotel_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["HotelId"] = ddlHotel.SelectedValue;
        }
    }
}
