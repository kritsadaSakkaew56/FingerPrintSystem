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
                Maxcountuserid();
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

     
        private void cookiesdata()
        {

            HttpCookie id = new HttpCookie("id");     // cookies คือการส่งค่าไปอีก pagefrom หนึ่ง
            id.Value = ViewState["Max_Count_user_id"].ToString(); ;
            Response.Cookies.Add(id);
            Response.RedirectPermanent("../User/RegisterGooglemap.aspx");


        }
        private void Maxcountuserid()
        {

            string strConnString = ConfigurationManager.ConnectionStrings["Default"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            string query = "[sp_user_Select_maxcount]";
            SqlCommand cmd = new SqlCommand(query, con);
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
                string data = ViewState["Max_Count_user_id"].ToString();
                string FileName = data + ".png";

                // string FileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                string imagepath = Server.MapPath("~/UploadImage/" + FileName);
                FileUpload.SaveAs(imagepath);
                ViewState["svatar"] = imagepath;


                Imgstudent.ImageUrl = "~/UploadImage/" + FileName;
                ViewState["addressphoto"] = "~/ UploadImage / " + FileName;

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
                Encrypt(txtpassword.Text.Trim());
                string photopath = ViewState["svatar"].ToString();
                string addressphoto = ViewState["addressphoto"].ToString();
                int userid = Int32.Parse(ViewState["Max_Count_user_id"].ToString());

                FileStream fs = new FileStream(photopath, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytesimage = br.ReadBytes((Int32)fs.Length);
                br.Close();
                fs.Close();

                UserDAO User = new UserDAO();
                User.AddUser(userid,
                             txtusername.Text.Trim(),
                             Encrypt(txtpassword.Text.Trim()),
                             txtid.Text.Trim(),
                             txtfullname.Text.Trim(),
                             txtschool.Text.Trim(),
                             txtfullnameparent.Text.Trim(),
                             txttel.Text.Trim(),
                             txtemail.Text.Trim(),
                             true,
                             addressphoto,
                             bytesimage);
                Response.Redirect("../User/RegisterGooglemap.aspx" + this.EncryptQueryString("id=" + userid));
                
            }
            else
            {
                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                laberroe.Text = "กรุณา Upload รูปประจำตัว";
            }

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

       

        protected void FileUpload_Load(object sender, EventArgs e)
        {

            Imgstudent.ImageUrl = "";

        }
    }
}
