using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintClinic.WebUI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("User/Home.aspx");
        }

        protected void bthregister_Click(object sender, EventArgs e)
        {


            Response.Redirect("/User/default.aspx");

        }

        protected void bthforget_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Driver/HomegoSchool.aspx");
        }
    }
}