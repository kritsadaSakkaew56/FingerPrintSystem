using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using System.Data;
using System.Data.SqlClient;

using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class HomegoSchool : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();


            }
               
        }

        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void bthsave_Click(object sender, EventArgs e)
        {


            Response.Redirect("/Driver/Schoolgohome.aspx");

        }

        private void BindData()
        {

            DataSet ds = new MemberDAO().GetMember(PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvMember.DataSource = ds.Tables[0];
            gvMember.DataBind();




        }
    }
}