using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Master
{
    public partial class RegisterDriver : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase page = new PageBase();
            int userid = Convert.ToInt32(page.DecryptQueryString("iduser"));

            //ChangePassword.Attributes["href"] = ResolveUrl("../Driver/default.aspx"+ page.EncryptQueryString("userid="+ userid));

               
        }
    }
}