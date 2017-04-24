using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Admin
{
    public partial class _default : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (this.DecryptQueryString("adminid") != null)
                {
                    string data = DecryptQueryString("adminid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
            }


        }
    }
}