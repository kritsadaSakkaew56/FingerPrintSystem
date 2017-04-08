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
     public  class SubscribeDAO
    {
        MqttClient client = new MqttClient("m12.cloudmqtt.com", 29315, true, null, null, MqttSslProtocols.TLSv1_2);

        public void GetSubscribe(string topic)
        {
            client.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);

            client.MqttMsgPublishReceived += client_MqttMsgPublishRecieved;
            client.Subscribe(new string[] { topic }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });

            void client_MqttMsgPublishRecieved(object sender, MqttMsgPublishEventArgs e)
            {
                if (e.Topic == topic)
                {
                    string data = Encoding.UTF8.GetString(e.Message);
                    Debug.WriteLine("Received = " + Encoding.UTF8.GetString(e.Message) + " on topic " + e.Topic);

                }
            }
        }

        
    }
}
