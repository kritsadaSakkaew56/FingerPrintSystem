using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;

// GEN Password
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class LoginUser : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                if (Convert.ToInt32(DecryptQueryString("driverid")) > 0)
                {

                    ViewState["member_driver_id"] = this.DecryptQueryString("driverid").ToString();

                }
                else
                {
                    Response.Redirect("../Login.aspx");


                }
               
                this.BindDataUser();
            }
       

            PagingControl1.CurrentPageIndexChanged += PagingControl1_CurrentPageIndexChanged;

        }

        private void PagingControl1_CurrentPageIndexChanged(object sender, EventArgs e)
        {
            this.BindDataUser();
        }

        private void BindDataUser()
        {


            DataSet ds = new UserDAO().GetUser(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvuser.DataSource = ds.Tables[0];
            gvuser.DataBind();

        }

        protected void gvuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                CheckBox chkActive = (CheckBox)e.Row.FindControl("chkActive");
                LinkButton bthscan = (LinkButton)e.Row.FindControl("bthscan");

                if (drv["activescan"].ToString().Length > 0)
                {
                    chkActive.Checked = (bool)drv["activescan"];
                    if(drv["checkscan"].ToString() == "0")
                    {

                        bthscan.Visible = true;

                    }
                }

       
            }
        }

        protected void gvuser_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void gvuser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "memberuserid")
            {
                string memberid = e.CommandArgument.ToString();

                string memberdriverid = ViewState["member_driver_id"].ToString();
                Response.Redirect("../Driver/FingerPrintscan.aspx" +
                                        this.EncryptQueryString("userid=" + memberid + "&driverid=" + memberdriverid));
            }
        }

        /* protected void bthlogin_Click(object sender, EventArgs e)
         {

             txtusername_password.Text = "";
             MemberDAO member = new MemberDAO();
             int memberid = Convert.ToInt32(member.GetMemberByCheckloginScan(txtusername.Text.Trim(), Encrypt(txtpassword.Text.Trim())));

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

             if (dt.Rows.Count > 0)
             {
                 string status = dt.Rows[0]["createdby"].ToString();

                 if (status == "User")
                 {
                     string memberdriverid = ViewState["memberdriver_id"].ToString();
                     Response.Redirect("../Driver/FingerPrintscan.aspx" +
                                        this.EncryptQueryString("userid=" + memberid + "&driverid=" + memberdriverid));

                 }
                 else if (status == "Driver")
                 {
                     txtusername_password.Text = "Username and/or password is incorrect.";
                    //txtusername_password.Text = "Username and/or password is User.";
                 }

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
         }*/

    }
}
