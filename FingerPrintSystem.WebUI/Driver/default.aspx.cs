using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class _default : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!this.IsPostBack)
            {
                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["driver_id"] = this.DecryptQueryString("id").ToString();
                    string driverid = ViewState["driver_id"].ToString();
  
                }
                else
                {

                    Response.Redirect("/Login.aspx");
                }


            }

        }
    }
}