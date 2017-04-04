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
using System.Web.Security;

using System.Data;
using FingerPrintSystem.DataAccess;


namespace FingerPrintSystem.WebUI.User
{
    public partial class Home : PageBase

    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack) // เมื่อเกิดเหตุการณ์ คลิก จะทำงานเก็บค่าไว้ใน labgps.Text  และ labc.Text
            {

                //labgps.Text = Request.Form[hfvaluegps.UniqueID];
                labc.Text = Request.Form[hfvaluetemp.UniqueID];

            }
            else
            {
                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["member_id"] = this.DecryptQueryString("id").ToString();
                    int memberid = Convert.ToInt32(ViewState["member_id"].ToString());
                    BindData(memberid);
                }
                else
                {

                    Response.Redirect("../Login.aspx");
                }



                //HttpCookie userid = Request.Cookies["userid"];
                //try
                //{
                //    if (userid.Value != null)
                //    {

                //        int memberid = Convert.ToInt32(this.DecryptQueryString(userid.Value));
                //        BindData(memberid);

                //    }
                //}

                //catch
                //{
                //    Response.Redirect("/Login.aspx");

                //}

            }


        }
        
        private void BindData(int memberid)
        {

            DataTable dt = new UserDAO().GetUserByMember(memberid);
            DataTable dt_active = new MemberDAO().GetMember(memberid);
            if (dt.Rows.Count > 0 && dt_active.Rows.Count > 0)
            {
                UserAddress(memberid); //แสดงที่อยู่ของเด็ก

                bool is_active = (bool)dt_active.Rows[0]["is_active"];
                Imgstudent.ImageUrl = dt.Rows[0]["photo"].ToString();

                labid.Text = dt.Rows[0]["id"].ToString();
                labfullname.Text = dt.Rows[0]["fullname"].ToString();
                labschool.Text = dt.Rows[0]["school"].ToString();
                if (is_active == true)
                {

                    labstatusup.Text = "ยังไม่ได้สแกนลายนิ้วมือ";
                    labstatusup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF9900");

                    labstatusdown.Text = "ยังไม่ได้สแกนลายนิ้วมือ";
                    labstatusdown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF9900");

                }
                else if (is_active == false)
                {
                   
                    labstatusup.Text = "ยังไม่ได้ทำการเพิ่มลายนิ้วมือ";
                    labstatusdown.Text = "ยังไม่ได้ทำการเพิ่มลายนิ้วมือ";
                    
                }
            }

            
        }
        private void UserAddress(int memberid)
        {
            // แสดงที่อยู่บ้านของเด็กนักเรียน
            DataTable dt = new UserAddressDAO().GetUserAddressByMember(memberid);
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();


        }

        protected void imgyoutube_Click(object sender, ImageClickEventArgs e)
        {

            //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalFingerprint", "$('#myModalFingerprint').modal();", true); // กรณีที่ไม่ได้เพิ่มลายนิ้วมือ

            string memberid = this.DecryptQueryString("id").ToString();
            Response.Redirect("../User/Video.aspx"+ this.EncryptQueryString("id=" + memberid));

        }
    }
}