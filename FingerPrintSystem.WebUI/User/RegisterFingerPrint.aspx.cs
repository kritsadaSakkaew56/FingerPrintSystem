using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterFingerPrint : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (this.DecryptQueryString("id") != null)
                //{
                //    ViewState["user_id"] = this.DecryptQueryString("id").ToString();
                //    string userid = ViewState["user_id"].ToString();
                //}
                //else
                //{

                //    Response.Redirect("../User/RegisterUser.aspx");
                //}

                ViewState["user_id"] = "3";
            }
        }

        protected void bthlogin_Click(object sender, EventArgs e)
        {

            Response.Redirect("../Driver/default.aspx");
      

        }

        protected void chkscan_CheckedChanged(object sender, EventArgs e)
        {
            if (chkscan.Checked==true)
            {
                bthfinish.Visible = false;
                txtusername.Visible = true;
                txtpassword.Visible = true;
                bthlogin.Visible = true;

                chknoscan.Checked = false;

            }

           if(chkscan.Checked == false)
            {
                bthfinish.Visible = false;
                txtusername.Visible = false;
                txtpassword.Visible = false;
                bthlogin.Visible = false;

                
            }
        }

        protected void chknoscan_CheckedChanged(object sender, EventArgs e)
        {

            if(chknoscan.Checked==true)
            {
                bthfinish.Visible = true;
                txtusername.Visible = false;
                txtpassword.Visible = false;
                bthlogin.Visible = false;
                chkscan.Checked = false;
            }
           

        }

        protected void bthfinish_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalSave", "$('#myModalSave').modal();", true);
           

          
        }

        protected void bthOKSave_Click(object sender, EventArgs e)
        {


            Response.Redirect("../Login.aspx");

            //UserDAO User = new UserDAO();
            //int Userid = Int32.Parse(ViewState["user_id"].ToString());
           // User.UpdateUser(Userid, true);
        }
    }
}