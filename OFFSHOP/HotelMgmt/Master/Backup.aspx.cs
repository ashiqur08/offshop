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
    public partial class Backup : System.Web.UI.Page
    {
        protected void btnBackup_Click(object sender, EventArgs e)
        {
            try
            {
                BusinessLayer.AllReportOffshop objBl = new BusinessLayer.AllReportOffshop();

                objBl.Backup("OFFSHOP", "F");
                ShowMessage("Backup Successfull");
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "temp", "<script type='text/javascript'>alert('Backup not completed!');</script>", false);     // We have to use javaScript function in this way here to display the appropriate message because after using update panel ajax control,it was not working.
            }
        }

        public void ShowMessage(string message)
        {
            string script = "<script language='JavaScript'>alert('" + message + "')</script>";
            Page.RegisterStartupScript("PopUp", script);

        }
    }
}
