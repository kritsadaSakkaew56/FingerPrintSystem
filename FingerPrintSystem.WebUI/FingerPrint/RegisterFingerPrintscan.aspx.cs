using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using System.IO;
using System.Data;



namespace FingerPrintSystem.WebUI.FingerPrint
{
    public partial class RegisterFingerPrintscan : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

               Imgfingerprint.ImageUrl= "~/Images/false.png";
              

                if (this.DecryptQueryString("userid") != null && this.DecryptQueryString("driverid") != null)
                {
                    ViewState["MemberUser_id"] = this.DecryptQueryString("userid").ToString();
                    string memberuserid = ViewState["MemberUser_id"].ToString();

                    ViewState["MemberDriver_id"] = this.DecryptQueryString("driverid").ToString();
                    string memberDriverid = ViewState["MemberDriver_id"].ToString();
                }
                else
                {

                    Response.Redirect("../User/RegisterFingerPrint.aspx");
                }

            }
        }

     
        protected void btnshow_Click(object sender, EventArgs e)
        {

        }

       /* protected void bthfinish_Click(object sender, EventArgs e)
        {
            int userscanid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());
            int memberDriverid = Convert.ToInt32(ViewState["MemberDriver_id"].ToString());

            DataTable dt = new DriverDAO().GetDriverByIDMember(memberDriverid);
            if (dt.Rows.Count > 0)
            {
                string fullnamedriver = dt.Rows[0]["fullname_driver"].ToString();

                UserScanDAO User = new UserScanDAO();
                User.AddUserScanByIDMember(userscanid, "", "ยังไม่ได้สแกน", "ยังไม่ได้สแกน", fullnamedriver);

                MemberDAO Member = new MemberDAO();
                Member.UpdateMember(userscanid, true);


                labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
                Imgfingerprint.ImageUrl = "~/Images/true.png";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalScan", "$('#myModalScan').modal();", true);
            }
        }

        protected void bthok_Click(object sender, EventArgs e)
        {

            Response.Redirect("../Login.aspx");

        }*/
    }
}