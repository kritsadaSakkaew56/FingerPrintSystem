using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.User
{
    public partial class RegisterUser : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkdata();


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

            id.Value = txtid.Text;

            Response.Cookies.Add(id);
            Response.RedirectPermanent("../User/RegisterGooglemap.aspx");


        }

        protected void bthnext_Click(object sender, EventArgs e)
        {
            cookiesdata();


        }

        protected void btnshow_Click(object sender, EventArgs e)
        {


            if (FileUpload1.HasFile)
            {

                string FileName = "image.png";
                //string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string imagepath = Server.MapPath("~/UploadImage/" + FileName);
                FileUpload1.SaveAs(imagepath);
                Imgstudent.ImageUrl = "~/UploadImage/" + FileName;
                laberroe.Text = "";

            }
            else
            {

                laberroe.Text = "Please select file.";

            }


        }
    }
}