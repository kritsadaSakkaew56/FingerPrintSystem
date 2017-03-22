using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class DriverLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bthexit_Click(object sender, EventArgs e)
        {

            Response.Redirect("../User/Home.aspx");
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Driver/default.aspx");


        }
    }
}