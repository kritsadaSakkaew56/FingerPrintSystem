using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterGooglemap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RequestCookiesid();

        }

        protected void bthnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("../User/RegisterFingerPrint.aspx");
        }
        private void RequestCookiesid()
        {
            try
            {
                HttpCookie id = Request.Cookies["id"];

                if (id.Value != null)
                {
                    ViewState["id"] = id.Value;


                }
            }
            catch
            {

                Response.Redirect("../User/RegisterUser.aspx");
            }



        }
    }
}