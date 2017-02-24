using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.Member
{
    public partial class Member : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                this.BindData();

               
            }


            PagingControl1.CurrentPageIndexChanged += PagingControl1_CurrentPageIndexChanged;
        }

        private void PagingControl1_CurrentPageIndexChanged(object sender, EventArgs e)
        {

            BindData();

            

        }

        private void BindData()
        {

            DataSet ds = new MemberDAO().GetMember(PagingControl1.CurrentPageIndex, PagingControl1.PageSize,this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvMember.DataSource = ds.Tables[0];
            gvMember.DataBind();


            

        }
       

        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                LinkButton bthScantest = (LinkButton)e.Row.FindControl("bthScantest");
                Label lalScan = (Label)e.Row.FindControl("lalScan");
                Label lalnoScan = (Label)e.Row.FindControl("lalnoScan");

                bthScantest.PostBackUrl = this.EncryptQueryString("ID=" + drv["Member_id"].ToString());


                lalnoScan.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");         //สีแดง
                lalScan.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");           //สีเขียว

                
                //string Memberid = this.DecryptQueryString("ID").ToString();

                //foreach (GridViewRow row in gvMember.Rows)
                //{

                //    int rowIndex = row.RowIndex;
                //    if (row.RowType == DataControlRowType.DataRow)
                //    {

                //            MemberDAO Member = new MemberDAO();
                //            Member.UpdateMember("1");


                //            lalScan.Visible = true;
                //            lalnoScan.Visible = false;



                //    }

                //}



            }


            
        }

        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {
            SetSortGridView(e.SortExpression);
            BindData();
            this.GridViewSort(gvMember);
        }
        protected void bthScantest_Click(object sender, EventArgs e)
        {

            string MemberID = this.DecryptQueryString("ID").ToString();


        }

        protected void bthScan_Click(object sender, EventArgs e)
        {
           

        }

        protected void bthreset_Click(object sender, EventArgs e)
        {

         

        }

        
    }
}