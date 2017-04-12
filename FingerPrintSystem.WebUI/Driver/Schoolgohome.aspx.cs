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
using System.Threading;

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
                LinkButton bthdetial = (LinkButton)e.Row.FindControl("bthdetial");

                bthdetial.PostBackUrl = this.EncryptQueryString("member_user_id=" + drv["member_id"].ToString());
           
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
            PublishDAO Publish = new PublishDAO();


            //Disable the default item.
            DropDownList.Items[0].Attributes["disabled"] = "disabled";

            UpdatePanel2.Update();

          
        
            //Subscribe.UpdateUserScanByFingerprintid(DropDownList.Text.Trim(), "/scanup", "/scandown"); // Subscribe 2 Topic

            if (DropDownList.Text.Trim() == "ขึ้นรถรับส่งเด็กนักเรียน")
            {
                Publish.OnScanup("/scanup", "ONUp");        // สั่งเปิดสแกนลายนิ้วมือ ขึ้นรถรับส่ง
                Debug.WriteLine(DropDownList.Text.Trim());

                Debug.WriteLine("Sleep for 2 seconds.");
                Thread.Sleep(2000);
                Debug.WriteLine("Sleep for 2 OK.");

            }

            else if (DropDownList.Text.Trim() == "ลงรถรับส่งเด็กนักเรียน")
            {
                Publish.OnScandown("/scandown", "ONDown"); // สั่งเปิดสแกนลายนิ้วมือ ลงรถรับส่ง
                Debug.WriteLine(DropDownList.Text.Trim());

                Debug.WriteLine("Sleep for 2 seconds.");
                Thread.Sleep(2000);
                Debug.WriteLine("Sleep for 2 OK.");

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

        protected void bthclose_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow row in gvMember.Rows)
            {
                int rowIndex = row.RowIndex;
                if (row.RowType == DataControlRowType.DataRow)
                {

                    int Memberuserid = Convert.ToInt32(gvMember.DataKeys[rowIndex].Values[0].ToString());

                    UserScanDAO UserScan = new UserScanDAO();
                    UserScan.UpdateUserScanByMember(Memberuserid, "ยังไม่ได้สแกน", "ยังไม่ได้สแกน");

                }

            }


        }

        protected void bthdetial_Click(object sender, EventArgs e)
        {

            //Disable the default item.
            DropDownList.Items[0].Attributes["disabled"] = "disabled";

            int memberuserid =Convert.ToInt32(this.DecryptQueryString("member_user_id").ToString());

            DataTable dt = new UserDAO().GetUserByMember(memberuserid);

            if(dt.Rows.Count > 0)
            {
                imgstudent.ImageUrl = dt.Rows[0]["photo"].ToString();
                txtid.Text = dt.Rows[0]["id"].ToString();
                txtfullname.Text = dt.Rows[0]["fullname"].ToString();
                txtshcool.Text = dt.Rows[0]["school"].ToString();
                txtfullnameparent.Text = dt.Rows[0]["fullnameparent"].ToString();
                txttel.Text = dt.Rows[0]["tel"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();


            }
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaldetial", "$('#myModaldetial').modal();", true);
        }
    }
}