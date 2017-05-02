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
    public partial class Active : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (this.DecryptQueryString("adminid") != null)
                {
                    ViewState["member_admin_id"] = DecryptQueryString("adminid").ToString();
                    this.BindDataUser();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
               

            }

        }

        protected void gvuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                CheckBox chkActive = (CheckBox)e.Row.FindControl("chkActive");
                CheckBox chkActivescan = (CheckBox)e.Row.FindControl("chkActivescan");

                if (drv["is_active"].ToString().Length > 0 && drv["activescan"].ToString().Length >0)
                {
                    chkActive.Checked = (bool)drv["is_active"];
                    chkActivescan.Checked = (bool)drv["activescan"];
                }

            }
        }

        protected void gvuser_Sorting(object sender, GridViewSortEventArgs e)
        {

        }
        private void BindDataUser()
        {


            DataSet ds = new UserDAO().GetUser(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvuser.DataSource = ds.Tables[0];
            gvuser.DataBind();



        }
    }
}