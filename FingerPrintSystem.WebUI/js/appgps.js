 var mqttgps;
        var reconnectTimeout = 2000;


        $(document).ready(function () {
            MQTTconnectgps();
        });


        function MQTTconnectgps() {
            if (typeof path == "undefined") {
                path = '/mqtt';
            }

            mqttgps = new Paho.MQTT.Client(hostgps, portgps, path, "web_" + parseInt(Math.random() * 100, 10));
            var options = {
                timeout: 3,
                useSSL: useTLS,
                cleanSession: cleansession,
                onSuccess: onConnect,
                onFailure: function (message) {
                    $('#status').val("Connection failed: " + message.errorMessage + "Retrying");
                    setTimeout(MQTTconnectgps, reconnectTimeout);
                }
            };

           
            mqttgps.onMessageArrived = onMessageArrived;

            if (username != null) {
                options.userName = username;
                options.password = password;
            }

            console.log("Host=" + hostgps + ", port=" + portgps + ", path=" + path + " TLS = " + useTLS + " username=" + username + " password=" + password);
            mqttgps.connect(options);
        }

        function onConnect() {

            console.log("onConnect");
            $('#status').val('Connected to ' + hostgps + ':' + portgps + path);


            //Connection succeeded; subscribe to our topic
            mqttgps.subscribe(topicgps, { qos: 0 });
            $('#topic').val(topicgps);

            // use the below if you want to publish to a topic on connect
            var message = new Paho.MQTT.Message("Hello");
            message.destinationName = "/World";
            message.qos = 0;
            mqttgps.send(message);
        }

        function onMessageArrived(message) {

            var topicgps = message.destinationName;
            var payload = message.payloadString;

            // ทำการแสดงค่าใน label

            var label = document.getElementById("<%=labgps.ClientID %>");
            label.innerHTML = payload;
            document.getElementById("<%=hfvaluegps.ClientID %>").value = label.innerHTML;

         console.log("onConnect Message");
        };