using System;
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
            //RequestCookiesid();

            if(!IsPostBack)
            {

                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["user_id"] = this.DecryptQueryString("id").ToString();
                    string userid = ViewState["user_id"].ToString();
                }
                else
                {

                    Response.Redirect("../User/RegisterUser.aspx");
                }

                //ViewState["user_id"] = "1";
            }

        }

      
        private void RequestCookiesid()
        {
            try
            {
                HttpCookie id = Request.Cookies["id"];

                if (id.Value != null)
                {
                    ViewState["id"] = id.Value;


                }
            }
            catch
            {

                Response.Redirect("../User/RegisterUser.aspx");
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
  

                int userid = Int32.Parse(ViewState["user_id"].ToString());
                UserDAO User = new UserDAO();
                User.AddUserAddress(userid,latitude.Text,longitude.Text,address.Text,txtcomment.Text);
                Response.Redirect("../User/RegisterFingerPrint.aspx" + this.EncryptQueryString("id="+ userid));




            }




        }
    }
}