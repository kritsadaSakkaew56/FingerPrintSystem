using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using uPLibrary.Networking.M2Mqtt;
using System.Net;
using System.Net.Sockets;
using System.Threading;

namespace FingerPrintSystem.WebUI.User
{
    public partial class Home : PageBase

    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                labgps.Text = Request.Form[hfvaluegps.UniqueID];
                labc.Text = Request.Form[hfvaluetemp.UniqueID];

                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["user_id"] = this.DecryptQueryString("id").ToString();
                    string userid = ViewState["user_id"].ToString();
                }
                else
                {

                    Response.Redirect("../User/RegisterUser.aspx");
                }
            }


        }
    }
}