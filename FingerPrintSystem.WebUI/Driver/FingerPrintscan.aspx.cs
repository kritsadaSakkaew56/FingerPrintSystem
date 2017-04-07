using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using FingerPrintSystem.DataAccess;
using FingerPrintSystem.MQTT;
using System.Threading;
using System.Diagnostics;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class FingerPrintscan : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!this.IsPostBack)
            {
                Imgfingerprint.ImageUrl = "~/Images/false.png";

                int driverid = Convert.ToInt32(DecryptQueryString("driverid"));

                if (Convert.ToInt32(DecryptQueryString("userid")) > 0 && Convert.ToInt32(DecryptQueryString("driverid")) > 0)
                {

                    ViewState["MemberUser_id"] = this.DecryptQueryString("userid").ToString();
                    int memberuserid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());
                    CheckIsactive(memberuserid);


                    ViewState["MemberDriver_id"] = this.DecryptQueryString("driverid").ToString();
                    string MemberDriverid = ViewState["MemberDriver_id"].ToString();

                }
                else
                {
                    Response.Redirect("/Driver/LoginUser.aspx" + this.EncryptQueryString("driverid=" + driverid));

                }

            }


        }
        private void CheckIsactive(int memberuserid)
        {

            MemberDAO Member = new MemberDAO();
            DataTable dt = Member.GetMember(memberuserid);
            if (dt.Rows.Count > 0)
            {
                bool isactive = (bool)dt.Rows[0]["is_active"];
                if (isactive == true)
                {
                    labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
                    Imgfingerprint.ImageUrl = "~/Images/true.png";
                    bthSaveFinish.Visible = false;

                }

            }
        }

        protected void bthok_Click(object sender, EventArgs e)
        {

            Response.Redirect("../Login.aspx");
        }

        protected void bthSaveFinish_Click(object sender, EventArgs e)
        {


                PublishDAO Publish = new PublishDAO();
                Publish.GetPublish("/test", "111"); // สั่งเปิดสแกนลายนิ้วมือ
                Debug.WriteLine("Sleep for 3 seconds.");
                Thread.Sleep(3000);
                Debug.WriteLine("Sleep for 3 OK.");

                //....................................................................................//
           
                labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
                Imgfingerprint.ImageUrl = "~/Images/true.png";

                int memberuserid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());


                UserScanDAO User = new UserScanDAO();
                User.AddUserScanByIDMember(memberuserid, "", "ยังไม่ได้สแกน", "ยังไม่ได้สแกน");

                MemberDAO Member = new MemberDAO();
                Member.UpdateMember(memberuserid, true);


                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalScan", "$('#myModalScan').modal();", true);


        }
    }
}