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

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterUser : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkdata();
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

            HttpCookie id = new HttpCookie("id");
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


        protected void bthsave_Click(object sender, EventArgs e)
        {
            try { 

                string imagepath = ViewState["svatar"].ToString();
                FileStream fs = new FileStream(imagepath, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                br.Close();
                fs.Close();

                cookiesdata();
            }
            catch
            {

                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                laberroe.Text = "กรุณาทำการเลือกรูปประจำตัว.";

            }
            
        }

        protected void bthshow_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                string MaxCountuserid = ViewState["Max_Count_user_id"].ToString();
                string FileName = MaxCountuserid + ".png";
                //string FileName = "image.png";
                // string FileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                string imagepath = Server.MapPath("~/UploadImage/" + FileName);
                FileUpload.SaveAs(imagepath);
                ViewState["svatar"] = imagepath;


                Imgstudent.ImageUrl = "~/UploadImage/" + FileName;
                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");
                laberroe.Text = "รูปประจำตัวได้บันทึกเรียบร้อย.";

            }
            else
            {
                laberroe.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                laberroe.Text = "กรุณาทำการเลือกรูปประจำตัว.";

            }
        }

        protected void FileUpload_Load(object sender, EventArgs e)
        {

            Imgstudent.ImageUrl = "";

        }
    }
}
