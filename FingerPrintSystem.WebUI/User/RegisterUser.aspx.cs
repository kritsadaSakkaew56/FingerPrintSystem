using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterUser : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   


        }

        private void cookiesdata()
        {

            HttpCookie id = new HttpCookie("id");

            id.Value = txtid.Text;

            Response.Cookies.Add(id);
            Response.RedirectPermanent("../User/RegisterGooglemap.aspx");


        }

        protected void bthnext_Click(object sender, EventArgs e)
        {
            cookiesdata();


        }
    }
}