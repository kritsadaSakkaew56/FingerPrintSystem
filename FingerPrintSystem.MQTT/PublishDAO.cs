using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;

namespace FingerPrintSystem.MQTT
{
   public class PublishDAO
    {
        public static string Message;
        MqttClient client = new MqttClient("m12.cloudmqtt.com",29315, true, null, null, MqttSslProtocols.TLSv1_2);


        public void GetPublish(string topic, string message)
        {
            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);

            client.MqttMsgPublished += client_MqttMsgPublished;
            ushort msgId = client.Publish(topic, // topic
                              Encoding.UTF8.GetBytes(message), // message body
                              MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE, // QoS level
                              false); // retained

            void client_MqttMsgPublished(object sender, MqttMsgPublishedEventArgs e)
            {
                Message = e.MessageId.ToString();
                Debug.WriteLine("MessageId = " + e.MessageId + " Published = " + e.IsPublished);
            }

        }

      







    }
}
