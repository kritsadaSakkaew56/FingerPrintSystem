using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FingerPrintSystem.DataAccess;

using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

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
                // checkdata();
               //Maxcountuserid();
       
            }


        }
        private void checkdata()
        {
            txtusername.Text = "";
            txtpassword.Text = "";
            txtConfirmPassword.Text = "";
            txtid.Text = "";
            txtfullname.Text = "";
            txtschool.Text = "";
            txtfullnameparent.Text = "";
            txttel.Text = "";
            txtemail.Text = "";


        }

    
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
        SqlCommand cmd;

        private void Maxcountuserid()
        {

            string query = "[sp_User_Select_Maxcount]";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
        
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                    int value = 1 + Int32.Parse(dr[0].ToString());
                    ViewState["Max_Count_user_id"] = value.ToString();

            }
            con.Close();

        }
        protected void bthshow_Click(object sender, EventArgs e)
        {
          
            if (FileUpload.HasFile)
            {

           
                string FileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                string imagepath = Server.MapPath("~/UploadImage/" + FileName);
                FileUpload.SaveAs(imagepath);
                ViewState["svatar"] = imagepath;  // เก็บที่อยู่อยู่ของรูปประจำตัวที่นำเข้ามาในระบบ


                Imgstudent.ImageUrl = "~/UploadImage/" + FileName;
                ViewState["addressphoto"] = "~/ UploadImage / " + FileName; // เก็บที่อยู่อยู่ของรูปประจำตัว ใน folder UploadImage

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

           
            if (laberroe.Text == "รูปประจำตัวได้บันทึกเรียบร้อย")
            {
    
                BindDataMember();

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
            string query = "[sp_Member_Insert]";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", Encrypt(txtpassword.Text.Trim()));
            cmd.Parameters.AddWithValue("@createdby", "User");

            con.Open();
            int memberid = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();


            switch (memberid)
            {
                case -1:
                    labusername.Text = "Username already exists";

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

            //int userid = Int32.Parse(ViewState["Max_Count_user_id"].ToString());  //เพิ่ม pk ในการเช็คค่า PK สูงสุดแล้ว + 1

            FileStream fs = new FileStream(photopath, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytesimage = br.ReadBytes((Int32)fs.Length);
            br.Close();
            fs.Close();

            string query = "[sp_User_Insert]";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@userid", memberid);
            cmd.Parameters.AddWithValue("@id", txtid.Text.Trim());
            cmd.Parameters.AddWithValue("@fullname", txtfullname.Text.Trim());
            cmd.Parameters.AddWithValue("@school", txtschool.Text.Trim());
            cmd.Parameters.AddWithValue("@fullnameparent", txtfullnameparent.Text.Trim());
            cmd.Parameters.AddWithValue("@tel", txttel.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@is_active", false);
            cmd.Parameters.AddWithValue("@photo", addressphoto);
            cmd.Parameters.AddWithValue("@photo_data", bytesimage);
            cmd.Parameters.AddWithValue("@password_Decrypt", txtpassword.Text.Trim());

            con.Open();
            string check = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
           
            Response.Redirect("../User/RegisterGooglemap.aspx" + this.EncryptQueryString("id=" + memberid));

        }
        
        private void cookiesdata()
        {

            HttpCookie id = new HttpCookie("id");     // cookies คือการส่งค่าไปอีก pagefrom หนึ่ง
            id.Value = ViewState["Max_Count_user_id"].ToString(); ;
            Response.Cookies.Add(id);
            Response.RedirectPermanent("../User/RegisterGooglemap.aspx");


        }






        protected void FileUpload_Load(object sender, EventArgs e)
        {

            Imgstudent.ImageUrl = "";

        }
    }
}
