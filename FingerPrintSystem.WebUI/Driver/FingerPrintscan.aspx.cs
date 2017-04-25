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

                    status = "null";
                    ViewState["MemberDriver_id"] = this.DecryptQueryString("driverid").ToString();
                    int memberdriverid = Convert.ToInt32(ViewState["MemberDriver_id"].ToString());
                

                    
                    
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
        private void showstatustrun()
        {

            bthSaveFinish.Visible = true;
     
           
        }
        private void detialstatustrun()
        {
            imgsuccess.Visible = true;
            labsuccess.Visible = true;
            labsuccess.Text = "กรุณาสแกนลายนิ้วมือ";
            imgsuccess.ImageUrl = "~/Images/success.png";
        }
        private void detialstatustrunfail()
        {
            imgsuccess.Visible = true;
            labsuccess.Visible = true;
            bthSaveFinish.Visible = true;
            bthclose.Visible = false;
            labsuccess.Text = "สแกนไม่สมบูรณ์ กดปุ่ม 'Scan'อีกครั้ง";
            imgsuccess.ImageUrl = "~/Images/Alert.png";

        }
        private void disshowstatustrun()
        {
            bthclose.Visible = true; //แสดงปุ่ม เริ่มใหม่
            bthSaveFinish.Visible = false;

        }
        private void Disshowstatustrn_scan()
        {

            imgsuccess.Visible = false;
            labsuccess.Visible = false;
            bthclose.Visible = false; //แสดงปุ่ม เริ่มใหม่
           

        }
        protected void bthSaveFinish_Click(object sender, EventArgs e)
        {
            status = "null";
            UpdateTimer.Enabled = true;
            UpdatePanel1.Update();
            disshowstatustrun();
            //....................................................................................//

            int memberuserid = Convert.ToInt32(ViewState["MemberUser_id"].ToString());
            int Memberdriverid = Convert.ToInt32(ViewState["MemberDriver_id"].ToString());

            PublishDAO Publish = new PublishDAO();
            Publish.OnScanInputFingerprint("/register", memberuserid.ToString()); // สั่งเปิดสแกนลายนิ้วมือ

            AddUserScanByIDMember(memberuserid, Memberdriverid, "/chkregister"); // Subscribe 
            detialstatustrun();

        }
        protected void bthclose_Click(object sender, EventArgs e)
        {

            status = "fail";
            PublishDAO Publish = new PublishDAO();
            Publish.OnScanInputFingerprint("/chkregister", "disconnect"); // สั่งปิดสแกน

        }
        public void CheckStatus()
        {
            if (UpdateTimer.Enabled == true)
            {

                if (FingerPrintscan.status == "ok")
                {
                    //............. แสดงผลลัพท์การสแกนลายนิ้วมือ......................................//
                    labscan.Text = "ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว";
                    Imgfingerprint.ImageUrl = "~/Images/true.png";
                    bthSaveFinish.Visible = false;

                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalScan", "$('#myModalScan').modal();", true);
                    UpdateTimer.Enabled = false; //For stop the timer
                    Disshowstatustrn_scan();
                    status = "null";
                }

                else if (FingerPrintscan.status == "fail")
                {
                    //................................. fail ...........................//
                    bthSaveFinish.Visible = true;
                    Imgfingerprint.ImageUrl = "~/Images/false.png";
                    detialstatustrunfail();
                    // Disshowstatustrn_scan();


                }
                else if (FingerPrintscan.status == "null")
                {

                  


                }



                
            }

        }
        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            CheckStatus();

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
        public void client_MqttMsgPublishRecieved(object sender, MqttMsgPublishEventArgs e)
        {
            //string status_fingerprint = Encoding.UTF8.GetString(e.Message);    // รับ message จากตัวสแกนลายนิ้วมือ ok กับ fail
           // Debug.WriteLine("Received = " + Encoding.UTF8.GetString(e.Message) + "\ron topic = " + e.Topic);
          

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
                        client.Disconnect(); // Disconnect mqtt
                    }
                }
                else if (status_fingerprint == "fail")
                {
                    status = status_fingerprint; // ส่ง ok กับ fail
                    client.Disconnect();

                }
                else if(status_fingerprint == "disconnect")
                {

                    client.Disconnect();

                }


            }


        }

      
    }
}