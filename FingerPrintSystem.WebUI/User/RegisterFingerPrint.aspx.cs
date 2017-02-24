﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterFingerPrint : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bthlogin_Click(object sender, EventArgs e)
        {

            Response.Redirect("../FingerPrint/FingerPrintscan.aspx");

        }

        protected void chkscan_CheckedChanged(object sender, EventArgs e)
        {
            if (chkscan.Checked==true)
            {

                txtusername.Visible = true;
                txtpassword.Visible = true;
                bthlogin.Visible = true;

                chknoscan.Checked = false;

            }

           if(chkscan.Checked == false)
            {
                txtusername.Visible = false;
                txtpassword.Visible = false;
                bthlogin.Visible = false;

                
            }
        }

        protected void chknoscan_CheckedChanged(object sender, EventArgs e)
        {

            if(chknoscan.Checked==true)
            {

                txtusername.Visible = false;
                txtpassword.Visible = false;
                bthlogin.Visible = false;
                chkscan.Checked = false;
            }
           

        }
    }
}