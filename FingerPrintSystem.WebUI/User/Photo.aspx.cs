using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.User
{
    public partial class Photo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connect("10.59.100.5");
            string width = "100%";
            string height = "550";
            string videoId = "8q1c5kLpUwI";
            iframeDiv.Controls.Add(new LiteralControl("<iframe width="+width+ " height="+height+ " src=" + "https://www.youtube.com/embed/"+ videoId + "?autoplay=1&origin=http://example.com"+"></iframe><br />"));
        }
        private void Connect (string IPAddress)
        {

           // imgphoto1.Attributes["src"] = ResolveUrl("http://"+ IPAddress + "/?action=stream");

        }
    }
}