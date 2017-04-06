using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class Videosteaming : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                 //Connect1("192.168.1.44");
                // Connect2("192.168.1.44:81");

                if (this.DecryptQueryString("driverid") != null)
                {
                    string data = DecryptQueryString("driverid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
            }

          
        }
        private void Connect1(string IPAddress)
        {

             imgphoto1.Attributes["src"] = ResolveUrl("http://"+ IPAddress + "/?action=stream");

        }
        private void Connect2(string IPAddress)
        {

            imgphoto2.Attributes["src"] = ResolveUrl("http://" + IPAddress + "/?action=stream");

        }

    }
}