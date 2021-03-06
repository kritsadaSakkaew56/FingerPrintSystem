﻿using System;
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
                if (this.DecryptQueryString("userid") != null)
                {
                    ViewState["memberUser_id"] = this.DecryptQueryString("userid").ToString();
                    string memberUserid = ViewState["memberUser_id"].ToString();
                }
                else
                {

                    Response.Redirect("../User/RegisterUser.aspx");
                }

                //ViewState["memberUser_id"] = "1"; //ทดสอบ
            }
        }

        protected void bthlogin_Click(object sender, EventArgs e)
        {
            txtusername_password.Text = "";
            MemberDAO member = new MemberDAO();
            int memberid = Convert.ToInt32(member.GetMemberByChecklogin(txtusername.Text.Trim(), Encrypt(txtpassword.Text.Trim())));

            switch (memberid)
            {
                case -1:
                    txtusername_password.Text = "Username and/or password is incorrect.";
                    break;
                case -2:
                    txtusername_password.Text = "Username and/or password is incorrect.";
                    // txtusername_password.Text = "Please Username and/or password is Driver.";
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
                    int memberUserid = Convert.ToInt32(ViewState["memberUser_id"].ToString());

     
                    UserScanDAO userscan = new UserScanDAO();
                    userscan.AddUserScanByIDMember(memberUserid, "ไม่ได้ลงทะบียนสแกน", "ไม่ได้ลงทะบียนสแกน",0,0,0, datetime(), false,0, "");

                    Response.Redirect("../Driver/FingerPrintscan.aspx" + 
                                        this.EncryptQueryString("userid=" + memberUserid + "&driverid=" + memberid));

                    //cookiesdatauseranddriver(memberUser, memberid);

                }
                else if (status == "User")
                {
                    txtusername_password.Text = "Username and/or password is incorrect.";

                }

            }

        }

        // cookies คือการส่งค่าไปอีก pagefrom หนึ่ง ของ user และ driver
        private void cookiesdatauseranddriver(int memberUser,int memberid)
        {
            HttpCookie userid = new HttpCookie("userscanid");
            HttpCookie driverid = new HttpCookie("memberdriver");

            userid.Value = memberUser.ToString();
            driverid.Value = memberid.ToString();

            Response.Cookies.Add(userid);
            Response.Cookies.Add(driverid);
            Response.RedirectPermanent("../Driver/FingerPrintscan.aspx" + this.EncryptQueryString("userid=" + memberUser));


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
            if (chknoscan.Checked == false)
            {
                bthfinish.Visible = false;
            }


        }

        protected void bthfinish_Click(object sender, EventArgs e)
        {
           

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalSave", "$('#myModalSave').modal();", true);
           

          
        }

        protected void bthOKSave_Click(object sender, EventArgs e)
        {
            int memberUserid = Convert.ToInt32(ViewState["memberUser_id"].ToString());

            MemberDAO Member = new MemberDAO();
            UserScanDAO userscan = new UserScanDAO();

            Member.UpdateMemberByIsactive(memberUserid, true);
            userscan.AddUserScanByIDMember(memberUserid, "ไม่ได้ลงทะบียนสแกน", "ไม่ได้ลงทะบียนสแกน",0, 0, 0, datetime(), false, 0, "");

            Response.Redirect("../Login.aspx");

        } private string datetime()
        {


            DateTime DtNow = new DateTime();
            DtNow = DateTime.Now;
            int day = Convert.ToInt32(DtNow.ToString("dd"));
            int Mounth = Convert.ToInt32(DtNow.ToString("MM"));
            int year = Convert.ToInt32(DtNow.ToString("yyyy")) - 543;

            int HH = Convert.ToInt32(DtNow.ToString("HH"));
            int mm = Convert.ToInt32(DtNow.ToString("mm"));
            int ss = Convert.ToInt32(DtNow.ToString("ss"));

            if (Mounth <= 9 && day <= 9)
            {
                string cMounth = "0" + Mounth;
                string cday = "0" + day;
                return cday + "-" + cMounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }
            else
            {

                return day + "-" + Mounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }


        }
    }
}