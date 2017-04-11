using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using FingerPrintSystem.MQTT;
using System.Data;
using System.Diagnostics;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class Schoolgohome : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                UpdatePanel1.Update();
                Binddata();
                BinddataDropDownList();
              
            }
          

            
        }
        private void Binddata()
        {

            DataSet ds = new UserScanDAO().GetUserScanJoin_tbUser();
            gvMember.DataSource = ds;
            gvMember.DataBind();


        }
        private void BinddataDropDownList()
        {


            // Add a default item at first position.
            DropDownList.Items.Insert(0, new ListItem("เลือกการสแกนลายนิ้วมือ ขึ้น/ลง รถรับส่ง และกดปุ่ม 'ตกลง'", ""));

            //Set the default item as selected.
            DropDownList.Items[0].Selected = true;


            //Disable the default item.
            DropDownList.Items[0].Attributes["disabled"] = "disabled";

            DropDownList.Items.Add("ขึ้นรถรับส่งเด็กนักเรียน");
            DropDownList.Items.Add("ลงรถรับส่งเด็กนักเรียน");


        }
        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                Label lalScanup = (Label)e.Row.FindControl("lalScanup");
                Label lalScandown = (Label)e.Row.FindControl("lalScandown");

                if (drv["datetime_up"].ToString() == "ยังไม่ได้สแกน")
                {
                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");         //สีแดง

                }
                else
                {
                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900");         //สีเขียว
                }


                if (drv["datetime_down"].ToString() == "ยังไม่ได้สแกน")
                {

                    lalScandown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                }
                else
                {

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

        protected void bthSaveFinish_Click(object sender, EventArgs e)
        {

            SubscribeDAO Subscribe = new SubscribeDAO();
          
            UpdatePanel2.Update();

            //Disable the default item.
            DropDownList.Items[0].Attributes["disabled"] = "disabled";


            if (DropDownList.Text.Trim() == "ขึ้นรถรับส่งเด็กนักเรียน")
            {

                Debug.WriteLine(DropDownList.Text.Trim());
                //Subscribe.Unsubscribescandown();
                Subscribe.GetSubscribeUp(DropDownList.Text.Trim(), "/scanup");

            }
            else if (DropDownList.Text.Trim() == "ลงรถรับส่งเด็กนักเรียน")
            {
                //Subscribe.Unsubscribescanup();
                Debug.WriteLine(DropDownList.Text.Trim());
                Subscribe.GetSubscribeDown(DropDownList.Text.Trim(), "/scandown");


            }
            else
            {

                Debug.WriteLine("DropDowmList is null");
            }

        }

       
        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            Binddata();
        }
    }
}