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
                if (this.DecryptQueryString("adminid") != null)
                {
                    ViewState["member_admin_id"] = DecryptQueryString("adminid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
                this.BindData();
                //Disable the default item.
                DropDownList1.Items[0].Attributes["disabled"] = "disabled";

            }


            PagingControl1.CurrentPageIndexChanged += PagingControl1_CurrentPageIndexChanged;
        }

        private void PagingControl1_CurrentPageIndexChanged(object sender, EventArgs e)
        {

            BindData();

            

        }

        private void BindData()
        {
            
            int roundscan = Convert.ToInt32(DropDownList1.SelectedValue);
            string DateTtime = DatePickerControl.Text;

            DataSet ds = new UserScanResultDAO().GetUserScanResultByIDMember(txtfullname.Text.Trim(),roundscan, DateTtime,
                                                                            PagingControl1.CurrentPageIndex, PagingControl1.PageSize, this.SortColumn, this.SortOrder);
            PagingControl1.RecordCount = (int)ds.Tables[1].Rows[0][0];
            gvMember.DataSource = ds.Tables[0];
            gvMember.DataBind();

            //DatePickerControl.Text = "";
            txtfullname.Text = "";

        }


        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                //DataRowView drv = (DataRowView)e.Row.DataItem;
                //LinkButton bthScantest = (LinkButton)e.Row.FindControl("bthScantest");
                //Label lalScan = (Label)e.Row.FindControl("lalScan");
                //Label lalnoScan = (Label)e.Row.FindControl("lalnoScan");

                //bthScantest.PostBackUrl = this.EncryptQueryString("ID=" + drv["Member_id"].ToString());


                //lalnoScan.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");         //สีแดง
                //lalScan.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");           //สีเขียว


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

        private string datetime()
        {


            DateTime DtNow = new DateTime();
            DtNow = DateTime.Now;
            int day = Convert.ToInt32(DtNow.ToString("dd"));
            int Mounth = Convert.ToInt32(DtNow.ToString("MM"));
            int year = Convert.ToInt32(DtNow.ToString("yyyy"));

            int HH = Convert.ToInt32(DtNow.ToString("HH"));
            int mm = Convert.ToInt32(DtNow.ToString("mm"));
            int ss = Convert.ToInt32(DtNow.ToString("ss"));

            if (Mounth <= 9)
            {
               string cMounth = "0" + Mounth;
               return day + "-" + cMounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }
            else
            {
                string cMounth = Mounth.ToString();
                return day + "-" + cMounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }
          

        }
        protected void btnSearch_Click(object sender, EventArgs e)

        {  

          
            //DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));
            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";
            BindData();
        }
        UserScanResultDAO UserscanResult = new UserScanResultDAO();

        protected void bthDelete_Click(object sender, EventArgs e)
        {
            
            foreach (GridViewRow row in gvMember.Rows)
            {
                int rowIndex = row.RowIndex;
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkSelect = (row.Cells[0].FindControl("chkSelect") as CheckBox);
                    if (chkSelect.Checked)
                    {
                        int user_result_id = Convert.ToInt32(gvMember.DataKeys[rowIndex].Values[0].ToString());
                        UserscanResult.DeleteUserScanResultByID(user_result_id);

                    }

                }

            }

            BindData();
        }
    }
}