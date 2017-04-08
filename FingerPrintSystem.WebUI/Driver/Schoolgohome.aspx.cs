using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using System.Data;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class Schoolgohome : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataSet ds = new UserScanDAO().GetUserScanJoin_tbUser();
                gvMember.DataSource = ds;
                gvMember.DataBind();
                

                // Add a default item at first position.
                DropDownList.Items.Insert(0, new ListItem("Please select", ""));

                //Set the default item as selected.
                DropDownList.Items[0].Selected = true;

                //Disable the default item.
                DropDownList.Items[0].Attributes["disabled"] = "disabled";
            }

        }

        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                Label lalScanup = (Label)e.Row.FindControl("lalScanup");
                Label lalScandown = (Label)e.Row.FindControl("lalScandown");
                if (lalScandown.Text == "ยังไม่ได้สแกน")
                {
                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");         //สีแดง
                    lalScandown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                }
                else
                {
                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");         //สีแดง
                    lalScandown.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");


                }


            }
        }

        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {
            SetSortGridView(e.SortExpression);
            this.GridViewSort(gvMember);


        }

        protected void bthsave_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Login.aspx");

        }
    }
}