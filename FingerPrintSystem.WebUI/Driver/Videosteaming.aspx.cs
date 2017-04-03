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
            Connect("10.59.100.5");
        }
        private void Connect(string IPAddress)
        {

             imgphoto1.Attributes["src"] = ResolveUrl("http://"+ IPAddress + "/?action=stream");

        }

    }
}