using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class HomegoSchool : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                gvMember.DataBind();
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
    }
}