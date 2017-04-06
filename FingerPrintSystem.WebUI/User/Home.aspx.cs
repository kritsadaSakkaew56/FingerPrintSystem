using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


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
                if (this.DecryptQueryString("userid") != null)
                {
                    ViewState["memberuser_id"] = this.DecryptQueryString("userid").ToString();
                    int memberuserid = Convert.ToInt32(ViewState["memberuser_id"].ToString());
                    BindData(memberuserid);
                }
                else
                {

                    Response.Redirect("../Login.aspx");
                }


            }


        }
        
        private void BindData(int memberuserid)
        {

            DataTable dt = new UserDAO().GetUserByMember(memberuserid);
            DataTable dt_active = new MemberDAO().GetMember(memberuserid);
            if (dt.Rows.Count > 0 && dt_active.Rows.Count > 0)
            {
                UserAddress(memberuserid); //แสดงที่อยู่ของเด็ก
                userScan(memberuserid); // แสดงการสแกน

                bool is_active = (bool)dt_active.Rows[0]["is_active"];
                Imgstudent.ImageUrl = dt.Rows[0]["photo"].ToString();

                labid.Text = dt.Rows[0]["id"].ToString();
                labfullname.Text = dt.Rows[0]["fullname"].ToString();
                labschool.Text = dt.Rows[0]["school"].ToString();

                //if (is_active == true)
                //{

                  

                //}
                //else if (is_active == false)
                //{
                   
                //    labstatusup.Text = "ยังไม่ได้ทำการเพิ่มลายนิ้วมือ";
                //    labstatusdown.Text = "ยังไม่ได้ทำการเพิ่มลายนิ้วมือ";
                    
                //}
            }

            
        }
        private void UserAddress(int memberid)
        {
            // แสดงที่อยู่บ้านของเด็กนักเรียน
            DataTable dt = new UserAddressDAO().GetUserAddressByMember(memberid);
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();


        }
        private void userScan(int memberid)
        {
            DataTable dt = new UserScanDAO().GetUserScanByIDMember(memberid);

            if(dt.Rows.Count>0)
            {

                labstatusup.Text = dt.Rows[0]["datetime_up"].ToString();
                labstatusup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");

                labstatusdown.Text = dt.Rows[0]["datetime_down"].ToString();
                labstatusdown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");

            }


        }

        protected void imgyoutube_Click(object sender, ImageClickEventArgs e)
        {

            //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalFingerprint", "$('#myModalFingerprint').modal();", true); // กรณีที่ไม่ได้เพิ่มลายนิ้วมือ

            string memberid = this.DecryptQueryString("userid").ToString();
            Response.Redirect("../User/Video.aspx"+ this.EncryptQueryString("userid=" + memberid));

        }
    }
}