using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Security.Cryptography;
using System.Text;
using System.IO;

using FingerPrintSystem.DataAccess;
using System.Data;

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
                //    ViewState["member_id"] = this.DecryptQueryString("id").ToString();
                //    string memberid = ViewState["member_id"].ToString();
                //}
                //else
                //{

                //    Response.Redirect("../User/RegisterUser.aspx");
                //}

                ViewState["member_id"] = "1";
            }
        }

        protected void bthlogin_Click(object sender, EventArgs e)
        {
            txtusername_password.Text = "";
            MemberDAO member = new MemberDAO();
            int memberid = Convert.ToInt32(member.AddMemberValidating(txtusername.Text.Trim(), Encrypt(txtpassword.Text.Trim())));

            switch (memberid)
            {
                case -1:
                    txtusername_password.Text = "Username and/or password is incorrect.";
                    break;
                case -2:
                    txtusername_password.Text = "Please Username and/or password is Driver.";
                    break;
                default:
                    Checkstatus(memberid);
                    break;

            }
            
 
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
        private void Checkstatus(int memberid)
        {

            DataTable dt = new MemberDAO().GetMember(memberid);
            if (dt.Rows.Count > 0)
            {
                string status = dt.Rows[0]["createdby"].ToString();

                if (status == "Driver")
                {
                    int userscan = Convert.ToInt32(ViewState["member_id"].ToString());
                    cookiesdatauser(userscan);
                }
                else if (status == "User")
                {
                    txtusername_password.Text = "Please Username and/or password is Driver.";

                }

            }

        }

        // cookies คือการส่งค่าไปอีก pagefrom หนึ่ง ของ user
        private void cookiesdatauser(int Memberid)
        {
            HttpCookie userid = new HttpCookie("useridscan");
            userid.Value = Memberid.ToString(); ;
            Response.Cookies.Add(userid);
            Response.RedirectPermanent("../Driver/default.aspx");


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
                txtusername_password.Text = "";


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
                txtusername_password.Text = "";
            }
           

        }

        protected void bthfinish_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalSave", "$('#myModalSave').modal();", true);
           

          
        }

        protected void bthOKSave_Click(object sender, EventArgs e)
        {

            Response.Redirect("../Login.aspx");

        }
    }
}