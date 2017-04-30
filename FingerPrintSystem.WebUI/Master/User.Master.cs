using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Master
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                PageBase page = new PageBase();
                int userid = Convert.ToInt32(page.DecryptQueryString("userid"));
                scanlist.Attributes["href"] = ResolveUrl("../User/ScanListaspx.aspx" + page.EncryptQueryString("userid=" + userid));
                home.Attributes["href"] = ResolveUrl("../User/Home.aspx" + page.EncryptQueryString("userid=" + userid));
            }
        }
    }
}