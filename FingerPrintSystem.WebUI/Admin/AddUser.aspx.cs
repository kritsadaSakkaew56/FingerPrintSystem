using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace FingerPrintSystem.WebUI.Admin
{
    public partial class AddUser : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (this.DecryptQueryString("adminid") != null)
                {
                    ViewState["member_admin_id"] = DecryptQueryString("adminid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }

                this.BindDataUser();
                this.BindDataDriver();
                disshowregisterdriver();
            }

        }

        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {

        }
        private void BindDataUser()
        {

          
            DataSet ds = new  UserDAO().GetUser(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvuser.DataSource = ds.Tables[0];
            gvuser.DataBind();

         

        }
        private void BindDataDriver()
        {


            DataSet ds = new DriverDAO().GetDriver(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl2.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvdriver.DataSource = ds.Tables[0];
            gvdriver.DataBind();



        }
        protected void gvdriver_Sorting(object sender, GridViewSortEventArgs e)
        {


        }
        protected void gvuser_Sorting(object sender, GridViewSortEventArgs e)
        {

        }
        protected void gvdriver_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                LinkButton btnEditdriver = (LinkButton)e.Row.FindControl("btnEditdriver");
                LinkButton btnDeletedriver = (LinkButton)e.Row.FindControl("btnDeletedriver");

                string memberdriverid = drv["member_id"].ToString();
                string memberadmin = ViewState["member_admin_id"].ToString();

                btnEditdriver.PostBackUrl = this.EncryptQueryString("driverid=" + memberdriverid + "&adminid=" + memberadmin);
                btnDeletedriver.PostBackUrl = this.EncryptQueryString("driverid=" + memberdriverid + "&adminid=" + memberadmin);
            }
        }
        protected void gvuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                LinkButton bthedit = (LinkButton)e.Row.FindControl("btnEdit");
                LinkButton bthdelete = (LinkButton)e.Row.FindControl("btnDeleteuser");




                string memberuserid = drv["member_id"].ToString();
                string memberadmin = ViewState["member_admin_id"].ToString();

                bthedit.PostBackUrl = this.EncryptQueryString("userid=" + memberuserid + "&adminid=" + memberadmin);
                bthdelete.PostBackUrl = this.EncryptQueryString("userid=" + memberuserid + "&adminid=" + memberadmin);
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

        protected void btnEdit_Click(object sender, EventArgs e)
        {
           
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            DataTable dt = new UserDAO().GetUserByMember(memberuserid);

            if (dt.Rows.Count > 0)
            {
                txtid.Text = dt.Rows[0]["id"].ToString();
                txtfullname.Text = dt.Rows[0]["fullname"].ToString();
                BindDataschool();
                txtfullnameparent.Text = dt.Rows[0]["fullnameparent"].ToString();
                txttel.Text = dt.Rows[0]["tel"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();


            }

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaledituser", "$('#myModaledituser').modal();", true);


        }
        protected void bthOKSave_Click(object sender, EventArgs e)
        {
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            UserDAO user = new UserDAO();
            user.UpdateUserByMember(memberuserid,Convert.ToInt32(ddlschool.Text.Trim()), txtid.Text.Trim(), txtfullname.Text.Trim(), txtfullnameparent.Text.Trim(),
                                    txttel.Text.Trim(), txtemail.Text.Trim());


            BindDataUser();


        }
       
        protected void btnDeleteuser_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaldelete", "$('#myModaldelete').modal();", true);
        }

        protected void bthdeleteok_Click(object sender, EventArgs e)
        {
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            UserDAO user = new UserDAO();
            user.DeleteUserByMember(memberuserid);
            BindDataUser();



        }
        protected void btnEditdriver_Click(object sender, EventArgs e)
        {
  
            int memberdriver = Convert.ToInt32(this.DecryptQueryString("driverid").ToString());
            DataTable dt = new DriverDAO().GetDriverByIDMember(memberdriver);

            if (dt.Rows.Count > 0)
            {
                txtiddriver.Text = dt.Rows[0]["id"].ToString();
                txtfullnamedriver.Text = dt.Rows[0]["fullname"].ToString();
                txtteldriver.Text = dt.Rows[0]["tel"].ToString();
                txtemaildriver.Text = dt.Rows[0]["email"].ToString();


            }

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaleditdriver", "$('#myModaleditdriver').modal();", true);

        }
        protected void bthoksavedriver_Click(object sender, EventArgs e)
        {

            int memberdriver = Convert.ToInt32(this.DecryptQueryString("driverid").ToString());
            DriverDAO Driver = new DriverDAO();
            Driver.UpdateDriverByIDMember(memberdriver, txtiddriver.Text.Trim(), txtfullnamedriver.Text.Trim(), txtteldriver.Text.Trim(), txtemaildriver.Text.Trim());
            BindDataDriver();
        }
        protected void btnDeletedriver_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaldeletedriver", "$('#myModaldeletedriver').modal();", true);

        }
        protected void bthdeleteokdriver_Click(object sender, EventArgs e)
        {
            int memberdriver = Convert.ToInt32(this.DecryptQueryString("driverid").ToString());
            DriverDAO Driver = new DriverDAO();
            Driver.DeleteDriverByMember(memberdriver);
            BindDataDriver();
        }
        private void claerregisterdriver()

        {
            txtusername.Text = "";
            txtpassword.Text = "";
            txtConfirmPassword.Text = "";
            txtreid.Text = "";
            txtrefullname.Text = "";
            txtretel.Text = "";
            txtreemail.Text = "";


        }
        private void disshowregisterdriver()

        {
            
            txtusername.Visible = false;
            labusername.Visible =false;
            txtpassword.Visible = false;
            txtConfirmPassword.Visible = false;
            txtreid.Visible = false;
            txtrefullname.Visible = false;
            txtretel.Visible = false;
            txtreemail.Visible = false;
            bthRegistersave.Visible = false;
        }
        private void showregisterdriver()
        {

          
            txtusername.Visible = true;
            labusername.Visible = true;
            txtpassword.Visible = true;
            txtConfirmPassword.Visible = true;
            txtreid.Visible = true;
            txtrefullname.Visible = true;
            txtretel.Visible = true;
            txtreemail.Visible = true;
            bthRegistersave.Visible = true;

        }

        protected void btnadddriver_Click(object sender, EventArgs e)
        {
            showregisterdriver();

        }

        private void BindDataMember()
        {

            MemberDAO member = new MemberDAO();
            int memberid = Convert.ToInt32(member.AddMember(txtusername.Text.Trim(), Encrypt(txtpassword.Text.Trim()), "Driver", true));


            switch (memberid)
            {
                case -1:
                    labusername.Text = "Username already exists";
                    break;
                default:
                    BindDataDriver(memberid);
                    break;
            }


        }
        private void BindDataDriver(int memberid)
        {

            DriverDAO Driver = new DriverDAO();
            Driver.AddDriverByIDMember(memberid, txtreid.Text.Trim(), txtrefullname.Text.Trim(), txtretel.Text.Trim(), txtreemail.Text.Trim());


            claerregisterdriver();
            disshowregisterdriver();
            BindDataDriver();

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalsuccess", "$('#myModalsuccess').modal();", true);
        }
        protected void bthRegistersave_Click(object sender, EventArgs e)
        {
            BindDataMember();
           
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

        protected void bthgoogledriver_Click(object sender, EventArgs e)
        {
            string memberdaminid = ViewState["member_admin_id"].ToString();
            Response.Redirect("../Admin/GooglemapAPI.aspx"+this.EncryptQueryString("adminid=" +memberdaminid));



        }
    }
}