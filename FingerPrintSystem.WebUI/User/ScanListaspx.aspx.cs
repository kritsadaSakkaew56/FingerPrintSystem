using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.User
{
    public partial class ScanListaspx : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.DecryptQueryString("userid") != null)
            {
                ViewState["member_user_id"] = this.DecryptQueryString("userid").ToString();
                int memberuserid = Convert.ToInt32(ViewState["member_user_id"].ToString());

                this.BindData();
                //Disable the default item.
                DropDownList1.Items[0].Attributes["disabled"] = "disabled";
            }
            else
            {

                Response.Redirect("../Login.aspx");
            }

         
        

        }
        private void BindData()
        {

            int roundscan = Convert.ToInt32(DropDownList1.SelectedValue);
            string DateTtime = DatePickerControl.Text;

            int memberuserid = Convert.ToInt32(ViewState["member_user_id"].ToString());
            DataSet ds = new UserScanResultDAO().GetUserScanResultByIDDatetime(memberuserid, roundscan, DateTtime,
                                                                            PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvMember.DataSource = ds.Tables[0];
            gvMember.DataBind();

            DatePickerControl.Text = "";
          

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";

        }
        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

       
    }
}