﻿using System;
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
            if (!this.IsPostBack)
            {
                if (this.DecryptQueryString("driverid") != null)
                {
                    labdlogin.Text = "ยินดีต้อนรับเข้าสู่ระบบ";
                    labdatetimelogin.Text = DateTime.Now.ToString("dd MMMM yyyy เวลา HH:mm:ss");
                    string data = DecryptQueryString("driverid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
            }
        }
    }
}