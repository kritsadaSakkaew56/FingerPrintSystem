﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FingerPrintSystem.DataAccess;

using System.IO;

using System.Security.Cryptography;
using System.Text;


namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterUser : PageBase
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              BindDataschool();


            }
           


        }
        private void BindDataschool()
        {
             
            DataSet ds = new SchoolAddressDAO().GetSchoolAddress();
     
            ddlschool.DataSource = ds;
            ddlschool.DataTextField = "detailaddress";
            ddlschool.DataValueField = "school_id";
            ddlschool.DataBind();
           
            ddlschool.Items.Insert(0, new ListItem("--เลือกชื่อโรงเรียน--", "0"));
            ddlschool.Items[0].Selected = true;
            ddlschool.Items[0].Attributes["disabled"] = "disabled";
        }
        private void checkdata()
        {
            txtusername.Text = "";
            txtpassword.Text = "";
            txtConfirmPassword.Text = "";
            txtid.Text = "";
            txtfullname.Text = "";
            ddlschool.Text = "";
            txtfullnameparent.Text = "";
            txttel.Text = "";
            txtemail.Text = "";


        }
        protected void bthshow_Click(object sender, EventArgs e)
        {
          
            if (FileUpload.HasFile)
            {
                int maxuserid = Convert.ToInt32(new UserDAO().GetMaxID());
                string FileName = (maxuserid + 1 +".jpg").ToString(); ;

                //string FileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                string imagepath = Server.MapPath("~/UploadImage/" + FileName);
                FileUpload.SaveAs(imagepath);
                ViewState["svatar"] = imagepath;  // เก็บที่อยู่อยู่ของรูปประจำตัวที่นำเข้ามาในระบบ


                Imgstudent.ImageUrl = "~/UploadImage/" + FileName;
                ViewState["addressphoto"] = "~/UploadImage/"+ FileName; // เก็บที่อยู่อยู่ของรูปประจำตัว ใน folder UploadImage

                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");
                laberroe.Text = "รูปประจำตัวได้บันทึกเรียบร้อย";

            }
            else
            {
                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                laberroe.Text = "กรุณา Upload รูปประจำตัว";

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


        protected void bthsave_Click(object sender, EventArgs e)
        {

            ddlschool.Items[0].Attributes["disabled"] = "disabled";
            if (laberroe.Text == "รูปประจำตัวได้บันทึกเรียบร้อย")
            {
                if (ddlschool.SelectedValue != "0")
                {
                    BindDataMember();

                }
                else
                {

              
                    labusername.Text = "กรุณาเลือกชื่อโรงเรียนให้ถูกต้อง";
                    laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                    laberroe.Text = "กรุณา Upload รูปประจำตัว";
                }
                  
            }
               
            
            else
            {
                labusername.Text = "";
                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                laberroe.Text = "กรุณา Upload รูปประจำตัว";
            }

        }

        private void BindDataMember()
        {
  
            MemberDAO member = new MemberDAO();
            int memberid = Convert.ToInt32(member.AddMember(txtusername.Text.Trim(), Encrypt(txtpassword.Text.Trim()),"User",1,false));


            switch (memberid)
            {
                case -1:
                    labusername.Text = "Can not use Username ";

                    laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                    laberroe.Text = "กรุณา Upload รูปประจำตัว";
                    break;
                default:
                    BindDataUser(memberid);
                    break;
            }


        }
        private void BindDataUser(int memberid)
        {

            Encrypt(txtpassword.Text.Trim());
            string photopath = ViewState["svatar"].ToString();
            string addressphoto = ViewState["addressphoto"].ToString();

            //FileStream fs = new FileStream(photopath, FileMode.Open, FileAccess.Read);
            //BinaryReader br = new BinaryReader(fs);
            //Byte[] bytesimage = br.ReadBytes((Int32)fs.Length);
            //br.Close();
            //fs.Close();

            UserDAO user = new UserDAO();
            user.AddUser(memberid, 
                         txtid.Text.Trim(), 
                         Convert.ToInt32(ddlschool.Text.Trim()), 
                         txtfullname.Text.Trim(),
                         txtfullnameparent.Text.Trim(),
                         txttel.Text.Trim(), 
                         txtemail.Text.Trim(),
                         addressphoto, 
                         txtpassword.Text.Trim());

            Response.Redirect("../User/RegisterGooglemap.aspx" + this.EncryptQueryString("userid=" + memberid));

        }
        

        protected void FileUpload_Load(object sender, EventArgs e)
        {

            Imgstudent.ImageUrl = "";

        }
    }
}
