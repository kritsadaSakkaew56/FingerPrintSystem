using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using System.Web.Services;
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
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                Label lalscanup = (Label)e.Row.FindControl("lalScanup");
                Label lalscadown = (Label)e.Row.FindControl("lalScandown");

                if(lalscanup.Text== "ยังไม่ได้สแกน" || lalscanup.Text =="กรุณาเพิ่มลายนิ้วมือใรระบบ")
                {
                    lalscanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                }
                else
                {
                    lalscanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");
                }

                if (lalscadown.Text == "ยังไม่ได้สแกน" || lalscanup.Text == "กรุณาเพิ่มลายนิ้วมือใรระบบ")
                {
                    lalscadown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                }
                else
                {
                    lalscadown.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");

                }



            }


        }

        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void bthsave_Click(object sender, EventArgs e)
        {


            Response.Redirect("/Driver/Schoolgohome.aspx");

        }

        [WebMethod]
        public static void getData()
        {

  
        }
        private void Numberstudentup()
        {



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