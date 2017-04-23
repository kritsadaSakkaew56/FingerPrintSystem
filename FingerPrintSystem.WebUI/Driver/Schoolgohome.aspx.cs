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


using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;
using System.Text;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class Schoolgohome : PageBase
    {
        MqttClient client = new MqttClient("m12.cloudmqtt.com", 29315, true, null, null, MqttSslProtocols.TLSv1_2);
        public static bool Timer;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
               
                if (this.DecryptQueryString("driverid") != null)
                {
                    ViewState["member_driver_id"] = DecryptQueryString("driverid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }

                UpdatePanel_DropDownList1.Update();
                BinddataDropDownList1();
                UpdateTimer.Enabled = false;

              

                labround.Text = "การเลือกเที่ยวรถรับส่งวันที่: " + DateTime.Now.ToString("dd MMMM yyyy")+" ";

            }
            else

            {
                //.......... แสดง ปุ่ม scanup และ scandown......................//
                if (Schoolgohome.Timer == true)
                {

                    UpdatePanel_DropDownList2.Update();
                    showstatustrun();
                }

            }
          

            
        }

       

        private void BinddataDropDownList1()
        {

            // Add a default item at first position.
            DropDownList1.Items.Insert(0, new ListItem("เลือกการสแกนลายเที่ยวรถรับส่ง และกดปุ่ม 'ตรวจสอบ'", ""));

            //Set the default item as selected.
            DropDownList1.Items[0].Selected = true;


            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";

            DropDownList1.Items.Add("การเดินทางจาก บ้าน >>> โรงเรียน");
            DropDownList1.Items.Add("การเดินทางจาก โรงเรียน >>> บ้าน");



        }
       /* private void BinddataDropDownList2()
        {

            // Add a default item at first position.
            DropDownList2.Items.Insert(0, new ListItem("เลือกการสแกนลายนิ้วมือ ขึ้น/ลง รถรับส่ง และกดปุ่ม 'ตกลง'", ""));

            //Set the default item as selected.
            DropDownList2.Items[0].Selected = true;


            //Disable the default item.
            DropDownList2.Items[0].Attributes["disabled"] = "disabled";

            DropDownList2.Items.Add("ขึ้นรถรับส่งเด็กนักเรียน");
            DropDownList2.Items.Add("ลงรถรับส่งเด็กนักเรียน");



        //}*/
        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                Label lalScanup = (Label)e.Row.FindControl("lalScanup");
                Label lalScandown = (Label)e.Row.FindControl("lalScandown");
                LinkButton bthdetial = (LinkButton)e.Row.FindControl("bthdetial");

                string memberid = drv["member_id"].ToString();
                string memberdriverid = ViewState["member_driver_id"].ToString();

                bthdetial.PostBackUrl = this.EncryptQueryString("userid=" + memberid + "&driverid=" + memberdriverid);
             
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
     
        protected void gvMember_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "memberuserid")
            {
                string ID = e.CommandArgument.ToString();



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
       
        private void Showstatustrunup()
        {

            imgsuccess.Visible = true;
            labsuccess.Visible = true;
            labsuccess.Text = "กำลังใช้โหมดของการสแกนขี้นรถ";
            
          
        }
        private void Showstatustrundown()
        {
            imgsuccess.Visible = true;
            labsuccess.Visible = true;
            labsuccess.Text = "กำลังใช้โหมดของการสแกนลงรถ";

        }
        private void showstatustrun()
        {

            bthscanup.Visible = true;
            bthscandown.Visible = true;
            bthreset.Visible = true;
          // bthstop.Visible = true;
        }
        private void disshowstatustrun()
        {
            bthclose.Visible = true; //แสดงปุ่ม เริ่มใหม่
            bthscanup.Visible = false;
            bthscandown.Visible = false;
            bthreset.Visible = false;

        }
        private void Disshowstatustrn_upanddown()
        {
           
            imgsuccess.Visible = false;
            labsuccess.Visible = false;
            bthclose.Visible = false; //แสดงปุ่ม เริ่มใหม่

        }
       

        SubscribeDAO Subscribe = new SubscribeDAO();
        PublishDAO Publish = new PublishDAO();

        protected void bthcheck_Click(object sender, EventArgs e)
        {
            Timer = true;
            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";

            if (DropDownList1.Items[0].Selected == true)
            {





            }
            else
            {
                DropDownList1.Visible = false;
                bthcheck.Visible = false;
                labround.Visible = false;
                UpdatePanel_DropDownList2.Update();
                Binddatascan(DropDownList1.Text.Trim());

            }

        }
        private void Binddatascan(string round)
        {


           
            labselectscan.Visible = true; //แสดงปุ่ม เลือกการสแกนลายนิ้วมือ
            showstatustrun(); // สแกนปุ่มเลือกการสแกนขึ้น- ลง รถรับส่ง

            //.......... แสดงตารางสแกน.............//
            UpdatePanel_GridView.Update();
            labpanel.Text = "" + round + " (วันที่ " + DateTime.Now.ToString("dd MMMM yyyy") + " )";
            UpdateTimer.Enabled = true;
            bthsave.Visible = true;
            Binddata(); // แสดงข้อมูลเด็กนักเรียนที่ให้สแกนกับคนขับรถที่ login เข้ามา
            //....................................//


        }

        private void Binddata()  // แสดงข้อมูลเด็กนักเรียนที่ให้สแกนกับคนขับรถที่ login เข้ามา
        {

            int Memberdriverid = Convert.ToInt32(ViewState["member_driver_id"].ToString());
            DataTable dtdriverid = new DriverDAO().GetDriverByIDMember(Memberdriverid);



            if (dtdriverid.Rows.Count > 0)
            {
                string fullnamedriver = dtdriverid.Rows[0]["fullname"].ToString();
                DataTable dt = new UserScanDAO().GetUserScanJoin_tbUserByfullnamedriver(fullnamedriver); // เช็คชื่อคนขับรถรับส่งที่จะให้สแกน
                //...........เช็คเงื่อนไขว่าได้ทำการบันทึกรอบเที่ยวของรถรับส่งหรือยัง.................//



                //.......... update รอบเที่ยวไป-กลับของรถรับส่ง...................//
                foreach (DataRow row in dt.Rows)
                {

                    int memberuserid = Convert.ToInt32(row["member_id"].ToString());
                    UserScanDAO UserScan = new UserScanDAO();
                    UserScan.UpdateUserScanByMember_Roundscan(memberuserid, 1);
                }


                gvMember.DataSource = dt;
                gvMember.DataBind();
            }


        }
        private void UpdateUserScanByMemberid(string trunscan, string topicsearch) // สถานะการสแกน
        {
            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(),
                          "fjhgvxul",
                          "cT9BYUzB5yCR",
                          true, // will retain flag
                          MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE,// will QoS
                          true, // will flag
                          "/test",// will topic
                          "default", // will message
                           true,
                           60);
      
            client.MqttMsgPublishReceived += client_MqttMsgPublishRecieved_GetSubscribe;
            // client.Subscribe(new string[] { topicup,topicdown }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE , MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE});
            client.Subscribe(new string[] { topicsearch }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });
            ViewState["trunscan"] = trunscan;
            Debug.WriteLine("OnGetSubscribeUp");

           


        }
       public void client_MqttMsgPublishRecieved_GetSubscribe(object sender, MqttMsgPublishEventArgs e)
        {

            UserScanDAO userscan = new UserScanDAO();
            string trunscan = ViewState["trunscan"].ToString();
            if (trunscan == "ขึ้นรถรับส่งเด็กนักเรียน")
            {
                string fingerprintid = Encoding.UTF8.GetString(e.Message);

                if (fingerprintid == "disconnect")
                {

                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss\r"));
                    client.Disconnect();

                }
                else
                {
                    int memberuserid = Convert.ToInt32(fingerprintid);
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss\r"));
                    userscan.UpdateUserScanByIDMember_Up(memberuserid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));
                    //userscan.UpdateUserScanByFingerprintid_Up(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));
                    Debug.WriteLine("OKScanup");
                    client.Disconnect();
                    Timer = true;
                }
            }

            if (trunscan == "ลงรถรับส่งเด็กนักเรียน")
            {
                string fingerprintid = Encoding.UTF8.GetString(e.Message);

                if (fingerprintid == "disconnect")
                {
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss\r"));
                    client.Disconnect();

                }
                else
                {
                    int memberuserid = Convert.ToInt32(fingerprintid);
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss\n"));
                    userscan.UpdateUserScanByIDMember_Down(memberuserid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));
                    //userscan.UpdateUserScanByFingerprintid_Down(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));

                    Debug.WriteLine("OKScanDown");
                    client.Disconnect();
                    Timer = true;
                }
            }

        }


        protected void bthscanup_Click(object sender, EventArgs e)
        {
            UpdatePanel_DropDownList2.Update();
            disshowstatustrun();  // ปิดปุ่ม scanup และ scandown
            Timer = false;  // หยุดการ update ตาราง และ ปุ่ม
            Publish.OnScan("/searching", "on");
            //Subscribe.UpdateUserScanByMemberid("ขึ้นรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdateUserScanByMemberid("ขึ้นรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdatePanel_GridView.Update();
            Showstatustrunup();
          
         

        }
       
        protected void bthscandown_Click(object sender, EventArgs e)
        {
            UpdatePanel_DropDownList2.Update(); 
            disshowstatustrun(); // ปิดปุ่ม scanup และ scandown
            Timer = false; // หยุดการ update ตาราง และ ปุ่ม
            Publish.OnScan("/searching", "on");
            //Subscribe.UpdateUserScanByMemberid("ลงรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdateUserScanByMemberid("ลงรถรับส่งเด็กนักเรียน", "/chksearching");
            Showstatustrundown();




        }
        protected void bthstop_Click(object sender, EventArgs e)
        {
          
            Disshowstatustrn_upanddown();

        }
        protected void bthclose_Click(object sender, EventArgs e)
        {
            Timer = true;
            Publish.OnScan("/chksearching", "disconnect");


        }
        protected void bthreset_Click(object sender, EventArgs e)
        {
            Timer = true;
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
        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {

            if (UpdateTimer.Enabled == Schoolgohome.Timer)
            {

                this.Binddata();
                Disshowstatustrn_upanddown(); // ปิกสถานะการใช้โหมดสแกนขึ้น-ลง

            }



        }



        protected void bthdetial_Click(object sender, EventArgs e)
        {

            //Disable the default item.
            // DropDownList2.Items[0].Attributes["disabled"] = "disabled";

            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            DataTable dt = new UserDAO().GetUserByMember(memberuserid);

            if (dt.Rows.Count > 0)
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


        protected void bthSaveFinish_Click(object sender, EventArgs e)
         {
             //UpdatePanelimgsuccess.Update();
             Disshowstatustrn_upanddown();
             //Disable the default item.
             DropDownList1.Items[0].Attributes["disabled"] = "disabled";
            // DropDownList2.Items[0].Attributes["disabled"] = "disabled";



             //................ ส่วนของการสแกนลายนิ้วมือจาก MQTT .............................//

             SubscribeDAO Subscribe = new SubscribeDAO();
             PublishDAO Publish = new PublishDAO();

             Subscribe.UpdateUserScanByMemberid("", "/chksearching"); // Subscribe 2 Topic


             /*if (DropDownList2.Text.Trim() == "ขึ้นรถรับส่งเด็กนักเรียน")
                {

                 //Publish.OnScanup("/searching", "up");        // สั่งเปิดสแกนลายนิ้วมือ ขึ้นรถรับส่ง
                 //Debug.WriteLine(DropDownList2.Text.Trim());

                 //Debug.WriteLine("Sleep for 2 seconds.");
                 //Thread.Sleep(2000);
                 //Debug.WriteLine("Sleep for 2 OK.");
                  Subscribe.UpdateUserScanByMemberid(DropDownList2.Text.Trim(), "/chksearching"); // Subscribe 2 Topic

             }

                else if (DropDownList2.Text.Trim() == "ลงรถรับส่งเด็กนักเรียน")
                {

                 //Publish.OnScandown("/searchching", "down"); // สั่งเปิดสแกนลายนิ้วมือ ลงรถรับส่ง
                 //Debug.WriteLine(DropDownList2.Text.Trim());

                 //Debug.WriteLine("Sleep for 2 seconds.");
                 //Thread.Sleep(2000);
                 //Debug.WriteLine("Sleep for 2 OK.");
                 Subscribe.UpdateUserScanByMemberid(DropDownList2.Text.Trim(), "/chksearching"); // Subscribe 2 Topic

             }
                else
                {

                    Debug.WriteLine("DropDowmList is null");
                }*/

         }

       
    }
}