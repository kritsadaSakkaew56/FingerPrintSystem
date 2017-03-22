        var mqtttemp;
        var reconnectTimeout = 2000;

        $(document).ready(function () {
            MQTTconnecttemp();
        });


        function MQTTconnecttemp() {
            if (typeof path == "undefined") {
                path = '/mqtt';
            }

            mqtttemp = new Paho.MQTT.Client(hosttemp, porttemp, path, "web_" + parseInt(Math.random() * 100, 10));
            var options = {
                timeout: 3,
                useSSL: useTLS,
                cleanSession: cleansession,
                onSuccess: onConnect,
                onFailure: function (message) {
                    $('#status').val("Connection failed: " + message.errorMessage + "Retrying");
                    setTimeout(MQTTconnecttemp, reconnectTimeout);
                }
            };

            mqtttemp.onConnectionLost = onConnectionLost;
            mqtttemp.onMessageArrived = onMessageArrived;

            if (username != null) {
                options.userName = username;
                options.password = password;
            }

            console.log("Host=" + hosttemp + ", port=" + porttemp + ", path=" + path + " TLS = " + useTLS + " username=" + username + " password=" + password);
            mqtttemp.connect(options);
        }

        function onConnect() {

            console.log("onConnect temp");
            $('#status').val('Connected to ' + hosttemp + ':' + porttemp + path);


            //Connection succeeded; subscribe to our topic
            mqttgps.subscribe(topicgps, { qos: 0 });
            $('#topic').val(topictemp);

            // use the below if you want to publish to a topic on connect
            var message = new Paho.MQTT.Message("Hello");
            message.destinationName = "/World";
            message.qos = 0;
            mqtttemp.send(message);
        }

        function onConnectionLost(response) {
            setTimeout(MQTTconnecttemp, reconnectTimeout);
            $('#status').val("connection lost: " + responseObject.errorMessage + ". Reconnecting");

        };

        function onMessageArrived(message) {

            var topicgps = message.destinationName;
            var payload = message.payloadString;

            // ทำการแสดงค่าใน label

            var label = document.getElementById("<%=labgps.ClientID %>");
            label.innerHTML = payload;
            document.getElementById("<%=hfvaluegps.ClientID %>").value = label.innerHTML;

            console.log("onConnect Message temp");
        };