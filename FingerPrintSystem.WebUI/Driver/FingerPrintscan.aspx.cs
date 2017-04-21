using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using FingerPrintSystem.DataAccess;
using FingerPrintSystem.MQTT;
using System.Threading;
using System.Diagnostics;

using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;
using System.Text;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class FingerPrintscan : PageBase
    {
        MqttClient client = new MqttClient("m12.cloudmqtt.com", 29315, true, null, null, MqttSslProtocols.TLSv1_2);
        public static string status;
     
        protected void Page_Load(object sender, EventArgs e)
        {

           

            if (!this.IsPostBack)
            {

                Imgfingerprint.ImageUrl = "~/Images/false.png";

                int driverid = Convert.ToInt32(DecryptQueryString("driverid"));

                if (Convert.ToInt32(DecryptQueryString("userid")) > 0 && Convert.ToInt32(DecryptQueryString("driverid")) > 0)
                {

                    ViewState["MemberUser_id"] = this.DecryptQueryString("userid").ToString();
                    int memberuserid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());
                    CheckIsactive(memberuserid);


                    ViewState["MemberDriver_id"] = this.DecryptQueryString("driverid").ToString();
                    int memberDriverid = Convert.ToInt32(ViewState["MemberDriver_id"].ToString());


                     ViewState["status"] = "fail";
                     AddUserScanByIDMember(memberuserid, memberDriverid, "/chkregister"); // Subscribe 
                }
                else
                {
                    Response.Redirect("/Driver/LoginUser.aspx" + this.EncryptQueryString("driverid=" + driverid));

                }

            }
            else
            {

               

            }


        }
   
        private void CheckIsactive(int memberuserid)
        {

            MemberDAO Member = new MemberDAO();
            DataTable dt = Member.GetMember(memberuserid);
            if (dt.Rows.Count > 0)
            {
                bool isactive = (bool)dt.Rows[0]["is_active"];
                if (isactive == true)
                {
                    labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
                    Imgfingerprint.ImageUrl = "~/Images/true.png";
                    bthSaveFinish.Visible = false;

                }

            }
        }

        protected void bthok_Click(object sender, EventArgs e)
        {
            int driverid = Convert.ToInt32(DecryptQueryString("driverid"));
            Response.Redirect("/Driver/LoginUser.aspx" + this.EncryptQueryString("driverid=" + driverid));
          
        }

        protected void bthSaveFinish_Click(object sender, EventArgs e)
        {
            imgProgress.Visible = true;
            labplase.Visible = true;
            UpdatePanel1.Update();
            UpdateTimer.Enabled = true;

            //Thread.Sleep(5000);
            //....................................................................................//

            int memberuserid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());
           int Memberdriverid = Convert.ToInt32(ViewState["MemberDriver_id"].ToString());

            //....................................................................................//

             PublishDAO Publish = new PublishDAO();
             Publish.OnScanInputFingerprint("/register", memberuserid.ToString()); // สั่งเปิดสแกนลายนิ้วมือ

            //Debug.WriteLine("Sleep for 3 seconds.");
            //Thread.Sleep(3000);
            //Debug.WriteLine("Sleep for 3 OK.");
            //SubscribeDAO Subscribe = new SubscribeDAO();
            // Subscribe.AddUserScanByIDMember(memberuserid, Memberdriverid,"/chkregister");
            // AddUserScanByIDMember(memberuserid, Memberdriverid, "/chkregister");


        }
        private void AddUserScanByIDMember(int memberuserid, int memberdriverid, string topic)// เพิ่มลายนิ้วมือลงไปใน database
        {
            
            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);

            client.MqttMsgPublishReceived += client_MqttMsgPublishRecieved;
            client.Subscribe(new string[] { topic }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });
            ViewState["topicmessage"] = topic;
            Debug.WriteLine("OnAddSubscribe");

        }
        public void CheckStatus()
        {
       
            if (FingerPrintscan.status == "ok")
            { 
                //............. แสดงผลลัพท์การสแกนลายนิ้วมือ......................................//
                labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
                Imgfingerprint.ImageUrl = "~/Images/true.png";
                bthSaveFinish.Visible = false;

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalScan", "$('#myModalScan').modal();", true);
                UpdateTimer.Enabled = false; //For stop the timer
                imgProgress.Visible = false;
                labplase.Visible = false;
                status = "fail";
            }
            else
            {

              //................................. fail ...........................//
               

            }

        }
        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            CheckStatus();

        }
        public void client_MqttMsgPublishRecieved(object sender, MqttMsgPublishEventArgs e)
        {
            //string status_fingerprint = Encoding.UTF8.GetString(e.Message);    // รับ message จากตัวสแกนลายนิ้วมือ ok กับ fail
            Debug.WriteLine("Received = " + Encoding.UTF8.GetString(e.Message) + "\ron topic = " + e.Topic);
          

            string  topiocmessage = ViewState["topicmessage"].ToString();
            if (e.Topic == topiocmessage)
            {
           
                int memberuserid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());
                int memberdriverid = Convert.ToInt32(ViewState["MemberDriver_id"].ToString());

                string status_fingerprint = Encoding.UTF8.GetString(e.Message);    // รับ message จากตัวสแกนลายนิ้วมือ ok กับ fail
                DataTable dt = new DriverDAO().GetDriverByIDMember(memberdriverid);  // รับชื่อของคนขับรถที่เป็นร่วม

                if (status_fingerprint == "ok")
                {
                    
                    
                    if (dt.Rows.Count > 0)
                    {


                        Debug.WriteLine("Received = " + Encoding.UTF8.GetString(e.Message) + "\ron topic = " + e.Topic + "\rMemberuserid = " + memberuserid);
                        string fullnamedriver = dt.Rows[0]["fullname"].ToString();
                        status = status_fingerprint; // ส่ง ok กับ fail
                        //..................... ทำการเพิ่มลายนิ้วมือลงไป database .......................//
                        UserScanDAO User = new UserScanDAO();
                        User.AddUserScanByIDMember(memberuserid, "", "ยังไม่ได้สแกน", "ยังไม่ได้สแกน", fullnamedriver);

                        //.....................  เปิกการใช้งานของ user ................................//
                        MemberDAO Member = new MemberDAO();
                        Member.UpdateMember(memberuserid, true);
                        
                        // client.Disconnect(); // Disconnect mqtt
                    }
                }


            }


        }

     
    }
}