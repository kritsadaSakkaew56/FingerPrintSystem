﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;

namespace FingerPrintSystem.MQTT
{
   public class PublishDAO
    {
        public static string Message;
        //public static string Disconnect;
        MqttClient client = new MqttClient("m12.cloudmqtt.com",29315, true, null, null, MqttSslProtocols.TLSv1_2);
        //MqttClient client1_Disconnect= new MqttClient("m12.cloudmqtt.com", 29315, true, null, null, MqttSslProtocols.TLSv1_2);

        public void OnScanInputFingerprint(string topic, string message) // สั่งเปิดสแกนลายนิ้วมือ
        {
            client.MqttMsgPublished += client_MqttMsgPublished;
            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", true, 120);

         
            ushort msgId = client.Publish(topic, // topic
                              Encoding.UTF8.GetBytes(message), // message body
                              MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE, // QoS level
                              false); // retained


        }
        public void OnScan(string topic, string message) // สั่งเปิดสแกนลายนิ้วมือ ขึ้นรถรับส่ง
        {
           
            client.MqttMsgPublished += client_MqttMsgPublished;
            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", true, 120);

            ushort msgId = client.Publish(topic, // topic
                              Encoding.UTF8.GetBytes(message), // message body
                              MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE, // QoS level
                              false); // retained
            

        }
        //public void OnDisconnect(string topic, string message) // สั่งเปิดสแกนลายนิ้วมือ ขึ้นรถรับส่ง
        //{

        //    client1_Disconnect.MqttMsgPublished += client_MqttMsgPublished_Disconnect;
        //    client1_Disconnect.ProtocolVersion = MqttProtocolVersion.Version_3_1;
        //    client1_Disconnect.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", true, 120);

        //    ushort msgId = client1_Disconnect.Publish(topic, // topic
        //                      Encoding.UTF8.GetBytes(message), // message body
        //                      MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE, // QoS level
        //                      false); // retained

           

        //}

        //void client_MqttMsgPublished_Disconnect(object sender, MqttMsgPublishedEventArgs e)
        //{
        //    Message = e.MessageId.ToString();
        //    Debug.WriteLine("MessageId = " + e.MessageId + " Published = " + e.IsPublished);
        //    client1_Disconnect.Disconnect();


        //}

        void client_MqttMsgPublished(object sender, MqttMsgPublishedEventArgs e)
        {
            Message = e.MessageId.ToString();
            Debug.WriteLine("MessageId = " + e.MessageId + " Published = " + e.IsPublished);
            client.Disconnect();
        }
        /* public void OnScanup(string topic, string message) // สั่งเปิดสแกนลายนิ้วมือ ขึ้นรถรับส่ง
         {
             client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
             client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);

             client.MqttMsgPublished += client_MqttMsgPublished;
             ushort msgId = client.Publish(topic, // topic
                               Encoding.UTF8.GetBytes(message), // message body
                               MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE, // QoS level
                               false); // retained


         }
         public void OnScandown(string topic, string message) // สั่งเปิดสแกนลายนิ้วมือ ลงรถรับส่ง
         {
             client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
             client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);

             client.MqttMsgPublished += client_MqttMsgPublished;
             ushort msgId = client.Publish(topic, // topic
                               Encoding.UTF8.GetBytes(message), // message body
                               MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE, // QoS level
                               false); // retained


         }*/







    }
}
