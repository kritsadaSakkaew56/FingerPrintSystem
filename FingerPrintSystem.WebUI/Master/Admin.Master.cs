using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Master
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase page = new PageBase();
            int adminid = Convert.ToInt32(page.DecryptQueryString("adminid"));

            childuser.Attributes["href"] = ResolveUrl("../Admin/Member.aspx" + page.EncryptQueryString("adminid=" + adminid));
            adduser.Attributes["href"] = ResolveUrl("../Admin/AddUser.aspx" + page.EncryptQueryString("adminid=" + adminid));
            //isactive.Attributes["href"] = ResolveUrl("../Admin/Active.aspx" + page.EncryptQueryString("adminid=" + adminid));
        }
    }
}