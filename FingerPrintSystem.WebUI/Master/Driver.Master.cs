using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Master
{
    public partial class Driver : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase page = new PageBase(); 

            int userid = Convert.ToInt32(page.DecryptQueryString("userid"));
            int driverid = Convert.ToInt32(page.DecryptQueryString("driverid"));

            changepassword.Attributes["href"] = ResolveUrl("../Driver/default.aspx" + page.EncryptQueryString("driverid=" + driverid));
            fingerprintscan.Attributes["href"] = ResolveUrl("../Driver/FingerPrintscan.aspx" + page.EncryptQueryString("userid=" + userid + "&driverid=" + driverid));
            childuser.Attributes["href"] = ResolveUrl("../Driver/Schoolgohome.aspx" + page.EncryptQueryString("driverid=" + driverid));
            video.Attributes["href"] = ResolveUrl("../Driver/Videosteaming.aspx" + page.EncryptQueryString("driverid=" + driverid));
        }
    }
}