using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;

using FingerPrintSystem.DataAccess;
using System.Data;

namespace FingerPrintSystem.MQTT
{

    public class SubscribeDAO
    {
        MqttClient client = new MqttClient("m12.cloudmqtt.com", 29315, true, null, null, MqttSslProtocols.TLSv1_2);

        public static int Adduseridscan;
        public static int Adddriverid;

        public void AddUserScanByIDMember(int memberuserid, int memberdriverid, string topic ) // เพิ่มลายนิ้วมือลงไปใน database
        {
            Adduseridscan = memberuserid;
            Adddriverid = memberdriverid;

            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);

            client.MqttMsgPublishReceived += client_MqttMsgPublishRecieved_AddSubscribe;
            client.Subscribe(new string[] { topic }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });

            Debug.WriteLine("OnAddSubscribe");

            void client_MqttMsgPublishRecieved_AddSubscribe(object sender, MqttMsgPublishEventArgs e)
            {
                if (e.Topic == topic)
                {
                    int adduserscanid = SubscribeDAO.Adduseridscan;
                    int adddriverid = SubscribeDAO.Adddriverid;
                    string Statusfingerprint = Encoding.UTF8.GetString(e.Message);    // รับ message จากตัวสแกนลายนิ้วมือ ok กับ fail
                    DataTable dt = new DriverDAO().GetDriverByIDMember(adddriverid);  // รับชื่อของคนขับรถที่เป็นร่วม
                 


                    //if (dt.Rows.Count > 0)
                    //{
                    //    Debug.WriteLine("Received = " + Encoding.UTF8.GetString(e.Message) + "\ron topic = " + e.Topic + "\rMemberuserid = " + adduserscanid);
                    //    string fullnamedriver = dt.Rows[0]["fullname"].ToString();
                    //    //..................... ทำการเพิ่มลายนิ้วมือลงไป database .......................//
                    //    UserScanDAO User = new UserScanDAO();
                    //    User.AddUserScanByIDMember(adduserscanid, adduserscanid, "ยังไม่ได้สแกน", "ยังไม่ได้สแกน", fullnamedriver);

                    //    //.....................  เปิกการใช้งานของ user ................................//
                    //    MemberDAO Member = new MemberDAO();
                    //    Member.UpdateMember(adduserscanid, true);

                    //}
                    
                }
            }
        }
        public void UpdateUserScanByFingerprintid(string trunscan, string topicup,string topicdown) // สถานะการสแกน
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
            client.Subscribe(new string[] { topicup,topicdown }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE , MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE});

            Debug.WriteLine("OnGetSubscribeUp");

            void client_MqttMsgPublishRecieved_GetSubscribe(object sender, MqttMsgPublishEventArgs e)
            {
                
                if (e.Topic == topicup) 
                {
                    string fingerprintid = Encoding.UTF8.GetString(e.Message);
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss\r"));
                    UserScanDAO userscan = new UserScanDAO();
                    userscan.UpdateUserScanByFingerprintid_Up(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));
                    Debug.WriteLine("OKScanup");

                }
                if (e.Topic == topicdown)
                {
                    string fingerprintid = Encoding.UTF8.GetString(e.Message);
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss\n"));
                    UserScanDAO userscan = new UserScanDAO();
                    userscan.UpdateUserScanByFingerprintid_Down(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));

                    Debug.WriteLine("OKScanDown");


                }

            }

        }


        //............ การสแกนขึ้นรถรับส่ง ....................................//

        /* public void GetSubscribeUp(string trunscan, string topic)
          {

                  client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
                  client.Connect(Guid.NewGuid().ToString(),
                            "fjhgvxul", 
                            "cT9BYUzB5yCR", 
                            true, // will retain flag
                            MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE,// will QoS
                            true, // will flag
                            topic,// will topic
                            "close website", // will message
                             true,
                             60);

                  client.MqttMsgPublishReceived += client_MqttMsgPublishRecieved_GetSubscribeUp;
                  client.Subscribe(new string[] { topic }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });


                  Debug.WriteLine("OnGetSubscribeUp");

              void client_MqttMsgPublishRecieved_GetSubscribeUp(object sender, MqttMsgPublishEventArgs e)
              {

               client.Unsubscribe(new string[] { "/scanup" });  /// Unsubscribe
               if (e.Topic == topic)
                  {


                      string fingerprintid = Encoding.UTF8.GetString(e.Message);
                      Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy-MM เวลา HH:mm:ss\r"));
                      UserScanDAO userscan = new UserScanDAO();
                      userscan.UpdateUserScanByFingerprintid_Up(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy-MM เวลา HH:mm:ss"));
                      Debug.WriteLine("OKScanup");


                  }

              }

          }
          //............ การสแกนลงรถรับส่ง ....................................//
          public void GetSubscribeDown(string trunscan, string topic)
          {

              client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
              client.Connect(Guid.NewGuid().ToString(),
                          "fjhgvxul",
                          "cT9BYUzB5yCR",
                          true, // will retain flag
                          MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE,// will QoS
                          true, // will flag
                          topic,// will topic
                          "close website", // will message
                           true,
                           60);

           client.MqttMsgPublishReceived += client_MqttMsgPublishRecieved_GetSubscribeDown;
              client.Subscribe(new string[] { topic }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });

              Debug.WriteLine("OnGetSubscribeDown");

              void client_MqttMsgPublishRecieved_GetSubscribeDown(object sender, MqttMsgPublishEventArgs e)
              {

                  if (e.Topic == topic)
                  {
                      //client.Unsubscribe(new string[] { "/scanup" });
                      string fingerprintid = Encoding.UTF8.GetString(e.Message);
                      Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + DateTime.Now.ToString("dd-MM-yyyy-MM เวลา HH:mm:ss\n"));
                      UserScanDAO userscan = new UserScanDAO();
                      userscan.UpdateUserScanByFingerprintid_Down(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy-MM เวลา HH:mm:ss"));

                      Debug.WriteLine("OKScanDown");

                  }


              }

          }*/
        public void Unsubscribescan()
        {
            client.MqttMsgUnsubscribed += client_MqttMsgUnsubscribed_up;
            ushort msgId = client.Unsubscribe(new string[] { "/scanup", "/scandown", "/test" });

            void client_MqttMsgUnsubscribed_up(object sender, MqttMsgUnsubscribedEventArgs e)
            {
                Debug.WriteLine("Unsubscribed for id = " + e.MessageId);
            }

        }
        public void Unsubscribescanup()
        {
            client.MqttMsgUnsubscribed += client_MqttMsgUnsubscribed_up;
            ushort msgId = client.Unsubscribe(new string[] { "/scanup"});

            void client_MqttMsgUnsubscribed_up(object sender, MqttMsgUnsubscribedEventArgs e)
            {
                Debug.WriteLine("Unsubscribed for id = " + e.MessageId);
            }
           
        }
        public void Unsubscribescandown()
        {
            client.MqttMsgUnsubscribed += client_MqttMsgUnsubscribed_down;
            ushort msgId = client.Unsubscribe(new string[] { "/scandown" });

            void client_MqttMsgUnsubscribed_down(object sender, MqttMsgUnsubscribedEventArgs e)
            {
                Debug.WriteLine("Unsubscribed for id = " + e.MessageId);
            }

        }
        public void Disconnect(string trunscan)
        {
            client.Disconnect();

        }

    }
}