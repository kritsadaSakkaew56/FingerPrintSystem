
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Web.UI;
using System.Web.UI.WebControls;
using FingerPrintSystem.DataAccess;

//SQL Server
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// GEN Password
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace FingerPrintSystem.WebUI
{
    public partial class Login : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {   
                // Delete cookie id
                if (Request.Cookies["id"] != null)
                {
                    HttpCookie myCookie = new HttpCookie("id");
                    myCookie.Expires = DateTime.Now.AddDays(-1d); 
                    Response.Cookies.Add(myCookie);
                }
            }

        }
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
        SqlCommand cmd;

        protected void btnSignin_Click(object sender, EventArgs e)
        {
                txtusername_password.Text = "";
        
                string query = "sp_Member_Select_ByValidating";
                cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@password", Encrypt(txtPassword.Text.Trim()));

                con.Open();
                int memberid = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();


            switch (memberid)
            {
                case -1:
                    txtusername_password.Text = "Username and/or password is incorrect.";
                    break;
                default:
                    Checkstatus(memberid);
                    break;

            }


        }
        private void Checkstatus(int memberid)
        {
            string query = "sp_Member_Select_ByID";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@memberid", memberid);

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);

            if(dt.Rows.Count>0)
            {
                string status = dt.Rows[0]["createdby"].ToString();

                if (status == "User")
                {
                    //Response.Redirect("User/Home.aspx" + this.EncryptQueryString("id=" + memberid));
                    cookiesdata(memberid);
                }
                else if(status== "Driver")
                {
                    Response.Redirect("Driver/default.aspx" + this.EncryptQueryString("id=" + memberid));
                }

            }

        }
        private void cookiesdata(int Memberid)
        {

            HttpCookie id = new HttpCookie("id");     // cookies คือการส่งค่าไปอีก pagefrom หนึ่ง
            id.Value = Memberid.ToString(); ;
            Response.Cookies.Add(id);
            Response.RedirectPermanent("/User/Home.aspx");


        }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }
        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
        protected void bthregister_Click(object sender, EventArgs e)
        {

            Response.Redirect("/User/default.aspx");


        }

        protected void bthforget_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Driver/default.aspx");
        }
    }
}