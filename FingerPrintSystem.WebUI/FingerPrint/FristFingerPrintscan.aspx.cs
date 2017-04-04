using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;



namespace FingerPrintSystem.WebUI.FingerPrint
{
    public partial class FristFingerPrintscan : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                     Imgfingerprint.ImageUrl= "~/Images/false.png";

                //HttpCookie userid = Request.Cookies["useridscan"];

                //try
                //{
                //    if (userid.Value != null)
                //    {

                //        int useridscan = Convert.ToInt32(userid.Value);
                //    }
                //}

                //catch
                //{
                //    Response.Redirect("/Login.aspx");

                //}

                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["MemberUser_id"] = this.DecryptQueryString("id").ToString();
                    string memberid = ViewState["MemberUser_id"].ToString();
                }
                else
                {

                    Response.Redirect("../User/RegisterUser.aspx");
                }

            }
        }

     
        protected void btnshow_Click(object sender, EventArgs e)
        {

        }

        protected void bthfinish_Click(object sender, EventArgs e)
        {
            labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
            Imgfingerprint.ImageUrl = "~/Images/true.png";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalScan", "$('#myModalScan').modal();", true);
        }

       
    }
}