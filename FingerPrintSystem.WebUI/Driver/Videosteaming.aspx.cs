using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class Videosteaming : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Connect1("10.59.100.5");
            //Connect2("10.59.100.5");
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