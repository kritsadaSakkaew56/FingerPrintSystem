﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterGooglemap : PageBase
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {

                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["member_id"] = this.DecryptQueryString("id").ToString();
                    string memberid = ViewState["member_id"].ToString();
                }
                else
                {

                    Response.Redirect("../User/RegisterUser.aspx");
                }

                
            }

        }

 
        protected void bthsave_Click(object sender, EventArgs e)
        {

            if (address.Text =="" || txtcomment.Text=="" || latitude.Text=="" || longitude.Text=="")
            {
                labaddress.Visible = true;
                labaddress.Text = "กรุณากรอกข้อมูลให้ครบถ้วย";


            }
            else
            {

                int memberid = Int32.Parse(ViewState["member_id"].ToString());
                UserAddressDAO User = new UserAddressDAO();
                User.AddUserAddress(memberid, latitude.Text.Trim(), longitude.Text.Trim(), address.Text.Trim(), txtcomment.Text.Trim());
            

                Response.Redirect("../User/RegisterFingerPrint.aspx" + this.EncryptQueryString("id="+ memberid));

            }

        }
    }
}