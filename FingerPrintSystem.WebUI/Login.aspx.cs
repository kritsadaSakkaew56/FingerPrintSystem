
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Web.UI;
using System.Web.UI.WebControls;
using FingerPrintSystem.DataAccess;

//SQL Server
using System.Data;


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
       
       

        protected void btnSignin_Click(object sender, EventArgs e)
        {
                txtusername_password.Text = "";
        
            MemberDAO member = new MemberDAO();
            int memberid = Convert.ToInt32(member.AddMemberValidating(txtUserName.Text.Trim(), Encrypt(txtPassword.Text.Trim())));

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

            DataTable dt = new MemberDAO().GetMember(memberid);
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
        // cookies คือการส่งค่าไปอีก pagefrom หนึ่ง
        private void cookiesdata(int Memberid)
        {
            HttpCookie id = new HttpCookie("id");     
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