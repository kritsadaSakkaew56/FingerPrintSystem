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

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FingerPrintSystem.WebUI.User
{
    public partial class Home : PageBase

    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack) // เมื่อเกิดเหตุการณ์ คลิก จะทำงานเก็บค่าไว้ใน labgps.Text  และ labc.Text
            {

                labgps.Text = Request.Form[hfvaluegps.UniqueID];
                labc.Text = Request.Form[hfvaluetemp.UniqueID];
              

            }
            else
            {


                if (this.DecryptQueryString("id") != null)
                {
                    ViewState["user_id"] = this.DecryptQueryString("id").ToString();
                    string userid = ViewState["user_id"].ToString();
                    BindData(userid);
                }
                else
                {

                    Response.Redirect("/Login.aspx");
                }

            }

        }
        private void BindData(string Userid)
        {

            string query = "sp_User_Select_ByID";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@userid", Int32.Parse(Userid));
    
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                bool is_active = (bool)dt.Rows[0]["is_active"];

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
              
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalFingerprint", "$('#myModalFingerprint').modal();", true); // กรณีที่ไม่ได้เพิ่มลายนิ้วมือ
                    labstatusup.Text = "ยังไม่ได้ทำการเพิ่มลายนิ้วมือ";
                        labstatusdown.Text = "ยังไม่ได้ทำการเพิ่มลายนิ้วมือ";
                    
                }
            }

        }
    }
}