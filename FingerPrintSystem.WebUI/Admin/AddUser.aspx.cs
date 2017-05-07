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
                this.BindDataSchoolAddress();
                disshowregisterdriver();
            }
            PagingControl1.CurrentPageIndexChanged += PagingControl1_CurrentPageIndexChanged;
            PagingControl2.CurrentPageIndexChanged += PagingControl2_CurrentPageIndexChanged;
            PagingControl3.CurrentPageIndexChanged += PagingControl3_CurrentPageIndexChanged;
        }

        private void PagingControl1_CurrentPageIndexChanged(object sender, EventArgs e)
        {
            this.BindDataUser();
        }
        private void PagingControl2_CurrentPageIndexChanged(object sender, EventArgs e)
        {
            this.BindDataSchoolAddress();
        }
        private void PagingControl3_CurrentPageIndexChanged(object sender, EventArgs e)
        {
            this.BindDataSchoolAddress();
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
        private void BindDataSchoolAddress()
        {

            DataSet ds = new UserAddressDAO().GetUserAddress(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl2.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvschooladdress.DataSource = ds.Tables[0];
            gvschooladdress.DataBind();

        }
        private void BindDataDriver()
        {


            DataSet ds = new DriverDAO().GetDriver(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl3.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvdriver.DataSource = ds.Tables[0];
            gvdriver.DataBind();



        }

        protected void gvuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                LinkButton bthedit = (LinkButton)e.Row.FindControl("btnEdit");
                LinkButton bthdelete = (LinkButton)e.Row.FindControl("btnDeleteuser");
                LinkButton bthgooglemap = (LinkButton)e.Row.FindControl("bthgooglemap");
                CheckBox chkActive = (CheckBox)e.Row.FindControl("chkActive");
                CheckBox chkActivescan = (CheckBox)e.Row.FindControl("chkActivescan");

                if (drv["is_active"].ToString().Length > 0 && drv["activescan"].ToString().Length > 0)
                {
                    chkActive.Checked = (bool)drv["is_active"];
                    chkActivescan.Checked = (bool)drv["activescan"];
                }

                string memberuserid = drv["member_id"].ToString();
                string memberadmin = ViewState["member_admin_id"].ToString();

                bthedit.PostBackUrl = this.EncryptQueryString("userid=" + memberuserid + "&adminid=" + memberadmin);
                bthdelete.PostBackUrl = this.EncryptQueryString("userid=" + memberuserid + "&adminid=" + memberadmin);
                bthgooglemap.PostBackUrl = ("../Admin/EditGooglemapAPI.aspx" + this.EncryptQueryString("userid=" + memberuserid + "&adminid=" + memberadmin));
            }
        }
        protected void gvschooladdress_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                LinkButton bthedit = (LinkButton)e.Row.FindControl("btnEditschool");
                LinkButton bthdelete = (LinkButton)e.Row.FindControl("btnDeletschool");

                string schoolid = drv["school_id"].ToString();
                string memberadmin = ViewState["member_admin_id"].ToString();

                bthedit.PostBackUrl = ("../Admin/EditGooglemapAPI.aspx" + this.EncryptQueryString("schoolid=" + schoolid + "&adminid=" + memberadmin));
                bthdelete.PostBackUrl = this.EncryptQueryString("schoolid=" + schoolid + "&adminid=" + memberadmin);
            }

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
        

        

        protected void gvschooladdress_Sorting(object sender, GridViewSortEventArgs e)
        {

        }
        protected void gvdriver_Sorting(object sender, GridViewSortEventArgs e)
        {


        }
        protected void gvuser_Sorting(object sender, GridViewSortEventArgs e)
        {

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
            labcheckscan.Visible = false;
            chkactivescan.Enabled = true;
            imgcheckscan.Visible = false;

            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            DataTable dt = new UserDAO().GetUserSelectJointbSchooladdress_ByIDMember(memberuserid);
            DataTable dtmember = new MemberDAO().GetMember(memberuserid);
            DataTable dtuserscan = new UserScanDAO().GetUserScanByIDMember(memberuserid);
          
            if (dt.Rows.Count > 0 && dtmember.Rows.Count > 0 && dtuserscan.Rows.Count > 0) 
            {
                txtid.Text = dt.Rows[0]["id"].ToString();
                txtfullname.Text = dt.Rows[0]["fullname"].ToString();
                txtshcool.Text = dt.Rows[0]["detailaddress"].ToString();
                BindDataschool();
                txtfullnameparent.Text = dt.Rows[0]["fullnameparent"].ToString();
                txttel.Text = dt.Rows[0]["tel"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();

                string checkscan = dtuserscan.Rows[0]["checkscan"].ToString();
                if(checkscan =="0")
                {
                    labcheckscan.Visible = true;
                    chkactive.Enabled = false;
                    chkactivescan.Enabled = false;
                    imgcheckscan.ImageUrl = "~/Images/ajax_loader_gray_48.gif";
                    imgcheckscan.Visible = true;
                    imgcheckscan.Width = 20;
                    imgcheckscan.Height = 20;
                    chkactive.Checked = (bool)dtmember.Rows[0]["is_active"];
                    chkactivescan.Checked = (bool)dtuserscan.Rows[0]["activescan"];

                }
                else if(checkscan == "1")
                {

                    chkactive.Checked = (bool)dtmember.Rows[0]["is_active"];
                    chkactivescan.Checked = (bool)dtuserscan.Rows[0]["activescan"];

                }
              
            }
          

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaledituser", "$('#myModaledituser').modal();", true);


        }
        protected void bthOKSave_Click(object sender, EventArgs e)
        {
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            UserDAO user = new UserDAO();
            MemberDAO member = new MemberDAO();
            UserScanDAO userscan = new UserScanDAO();

            DataTable dt = new SchoolAddressDAO().GetSchoolAddressByDetailaddress(txtshcool.Text.Trim());
      

            if (dt.Rows.Count > 0)
            {
                int schoolid = Convert.ToInt32(dt.Rows[0]["school_id"].ToString());
                

                user.UpdateUserByMember(memberuserid, schoolid, txtid.Text.Trim(), txtfullname.Text.Trim(), txtfullnameparent.Text.Trim(),
                                        txttel.Text.Trim(), txtemail.Text.Trim());
                if(chkactive.Checked==false)
                {
                    member.UpdateMemberByIsactive(memberuserid, chkactive.Checked);
                    userscan.UpdateUserScanByActivescan(memberuserid, false);
                }
                else
                {
                    member.UpdateMemberByIsactive(memberuserid, chkactive.Checked);
                    userscan.UpdateUserScanByActivescan(memberuserid, chkactivescan.Checked);


                }
              

                BindDataUser();
            }

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


        protected void btnDeletschool_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaldeleteschool", "$('#myModaldeleteschool').modal();", true);


        }
        protected void bthdeletokeschool_Click(object sender, EventArgs e)
        {

            int schoolid = Convert.ToInt32(this.DecryptQueryString("schoolid").ToString());
            SchoolAddressDAO SchoolAddress = new SchoolAddressDAO();
            SchoolAddress.DeleteSchoolAddress(schoolid);
            BindDataSchoolAddress();


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
            int memberid = Convert.ToInt32(member.AddMember(txtusername.Text.Trim(), Encrypt(txtpassword.Text.Trim()), "Driver",1, true));


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

        protected void ddlschool_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtshcool.Text = ddlschool.SelectedItem.Text;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaledituser", "$('#myModaledituser').modal();", true);

        }

       
    }
}