<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../css/bootstrap.min.css" rel="stylesheet">
   

    <script src="../js/host.js"></script>
    <script src="../js/mqttws31.js" type="text/javascript"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script type="text/javascript">
        var mqtt;
        var reconnectTimeout = 2000;


        $(document).ready(function () {
            MQTTconnect();

        });


        function MQTTconnect() {
            if (typeof path == "undefined") {
                path = '/mqtt';
            }

            mqtt = new Paho.MQTT.Client(host, port, path, "web1_" + parseInt(Math.random() * 100, 10));


            mqtt.onConnectionLost = onConnectionLost;
            mqtt.onMessageArrived = onMessageArrived;


            var options = {
                timeout: 3,
                useSSL: useTLS,
                cleanSession: cleansession,
                onSuccess: onConnect,
                onFailure: function (message) {
                    $('#status').val("Connection failed: " + message.errorMessage + "Retrying");
                    setTimeout(MQTTconnect, reconnectTimeout);
                }
            };

            if (username != null) {

                options.userName = username;
                options.password = password;
            }

            console.log("Host=" + host + ", port=" + port + ", path=" + path + " TLS = " + useTLS + " username=" + username + " password=" + password);
            mqtt.connect(options);
        }

        function onConnect() {

            console.log("onConnect");

            //Connection succeeded; subscribe to our topic
            mqtt.subscribe(topicgps, { qos: 0 });
            mqtt.subscribe(topictemp, { qos: 0 });


            // use the below if you want to publish to a topic on connect
            //var message = new Paho.MQTT.Message("Hello");
            //message.destinationName = "/World";
            //message.qos = 0;
            //mqttgps.send(message);
        }

        function onConnectionLost(response) {
            setTimeout(MQTTconnect, reconnectTimeout);

        };

        function onMessageArrived(message) {

            var payload = message.payloadString;

            // ทำการแสดงค่าใน labelGPS
            if (message.destinationName == topicgps) {
                var label = document.getElementById("<%=labgps.ClientID %>");
                label.innerHTML = payload;
                document.getElementById("<%=hfvaluegps.ClientID %>").value = label.innerHTML;

            }


            if (message.destinationName == topictemp) {
                // ทำการแสดงค่าใน labelTemp
                var label = document.getElementById("<%=labc.ClientID %>");
                label.innerHTML = payload;
                document.getElementById("<%=hfvaluetemp.ClientID %>").value = label.innerHTML;

            }
        };
    </script>

    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ข้อมูล</h4>

            </header>
        </section>
    </div>
    <br />
    <br />
    <br />
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-2">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="115" ControlStyle-Width="115" BorderStyle="Double" ImageUrl="~/Images/logo.png" />
                </div>
            </div>

        </div>
        <div class="form-group form-horizontal col-md-6">
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="เลขที่:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labid" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ชื่อ-นามสกุล:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labfullname"  Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="โรงเรียน:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labschool"  Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
            </div>
            <br />
            <hr />
            <%-- <div class="row">
                <div class="col-md-12">
                    <asp:Label runat="server" Text="สถานะ" Font-Size="Large"></asp:Label>
                </div>
            </div>
            <br />--%>
            <div class="row">
                <div class="col-md-4 ">
                    <asp:Label runat="server" Text="ขึ้นรถรับส่ง:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-4 text-center">
                    <asp:Label runat="server" ID="labstatusup"  Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ลงรถรับส่ง:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-4 text-center">
                    <asp:Label runat="server" ID="labstatusdown"  Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ตำแหน่งปัจจุบัน:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labgps" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                    <asp:HiddenField ID="hfvaluegps" runat="server" />
                </div>
            </div>
        </div>
        <div class="form-group form-horizontal col-md-3">
            <div class="row">
                <div class="col-md-5">

                    <asp:Image runat="server" ControlStyle-Height="75" ControlStyle-Width="75" BorderStyle="Double" ImageUrl="~/Images/sensor-icon-temp.png" />
                </div>
                <div class="col-md-1">
                    <asp:Label runat="server" ID="labc" Font-Bold="true" Font-Size="X-Large" ForeColor="#FF99FF"></asp:Label>
                    <asp:HiddenField ID="hfvaluetemp" runat="server" />
                </div>
                <div class="col-md-3">
                    <asp:Image runat="server" ControlStyle-Height="25" ControlStyle-Width="25" ImageUrl="~/Images/celcius-icon.png" />
                </div>
            </div>
        </div>
        <hr />
    </div>
    <div class="modal fade" id="myModalFingerprint" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">การใช้งานระบบยังไม่สมบูรณ์</h4>
                </div>
                <div class="modal-body">
                    <h5>กรุณติดต่อคนขับรถเพื่อทำการเพิ่มลายนิ้วมือของเด็กนักเรียน  </h5>

                </div>
                <div class="modal-footer">
                     <asp:LinkButton runat="server" ID="bthok" CssClass="btn btn-info" Width="200px" ForeColor="White">OK</asp:LinkButton>
                    <%-- <asp:LinkButton runat="server" ID="bthclse" CssClass="btn btn-info" Width="100px" ForeColor="White">CLOSE</asp:LinkButton>--%>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
