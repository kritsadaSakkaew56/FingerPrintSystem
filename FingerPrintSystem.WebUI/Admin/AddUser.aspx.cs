using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using System.Data;

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

          
            DataSet ds = new UserScanDAO().GetUserScan(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
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

        protected void gvdriver_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            

        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            DataTable dt = new UserDAO().GetUserByMember(memberuserid);

            if (dt.Rows.Count > 0)
            {
                txtid.Text = dt.Rows[0]["id"].ToString();
                txtfullname.Text = dt.Rows[0]["fullname"].ToString();
                txtshcool.Text = dt.Rows[0]["school"].ToString();
                txtfullnameparent.Text = dt.Rows[0]["fullnameparent"].ToString();
                txttel.Text = dt.Rows[0]["tel"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();


            }

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaledit", "$('#myModaledit').modal();", true);


        }
        protected void bthOKSave_Click(object sender, EventArgs e)
        {
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            UserDAO user = new UserDAO();
            user.UpdateUserByMember(memberuserid, txtid.Text.Trim(), txtfullname.Text.Trim(), txtshcool.Text.Trim(), txtfullnameparent.Text.Trim(),
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
        protected void gvdriver_Sorting(object sender, GridViewSortEventArgs e)
        {





        }

        protected void gvuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                LinkButton bthedit = (LinkButton)e.Row.FindControl("btnEdit");
                LinkButton bthdelete = (LinkButton)e.Row.FindControl("btnDeleteuser");
                CheckBox chkactiveuser = (CheckBox)e.Row.FindControl("chkactiveuser");


                //if (drv["is_active"].ToString().Length > 0)
                //{
                //    chkactiveuser.Checked = (bool)drv["is_active"];
                //}

                string memberid = drv["member_id"].ToString();
                string memberadmin = ViewState["member_admin_id"].ToString();
                bthedit.PostBackUrl = this.EncryptQueryString("userid=" + memberid + "&adminid=" + memberadmin);
                bthdelete.PostBackUrl = this.EncryptQueryString("userid=" + memberid + "&adminid=" + memberadmin);
            }



        }

        protected void gvuser_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

       
    }
}