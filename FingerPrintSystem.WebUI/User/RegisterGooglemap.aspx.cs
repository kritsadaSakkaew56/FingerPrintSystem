using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterGooglemap : PageBase
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
        SqlCommand cmd;
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

                string query = "sp_User_Address_Insert";
                cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@userid", userid);
                cmd.Parameters.AddWithValue("@latitude", latitude.Text.Trim());
                cmd.Parameters.AddWithValue("@longitude", longitude.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@detailaddress", txtcomment.Text.Trim());

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("../User/RegisterFingerPrint.aspx" + this.EncryptQueryString("id="+ userid));




            }




        }
    }
}