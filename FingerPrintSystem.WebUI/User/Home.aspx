﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../css/bootstrap.min.css" rel="stylesheet">


    <script src="../js/host.js"></script>
    <script src="../js/mqttws31.js" type="text/javascript"></script>

    <%-- <script src="//maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=AIzaSyDBGK8nRj24Jh6GVQRtgaoISecBPAHfHDA" type="text/javascript"></script>--%>

    <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyDBGK8nRj24Jh6GVQRtgaoISecBPAHfHDA"></script>


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

            ///////////////// ทำการแสดงค่าใน labelGPS////////////////////////////////////
            if (message.destinationName == topicgps) {

<%--                var label = document.getElementById("<%=labgps.ClientID %>");
                label.innerHTML = payload;
                document.getElementById("<%=hfvaluegps.ClientID %>").value = label.innerHTML;--%>

                var input = payload.split(','); // split เอาค่า latitude และ longitude


                var lat = input[0];
                var lng = input[1];
                latlng(lat, lng); // Google map api ตำแหน่งจองรถรับส่ง

            }

            if (message.destinationName == topictemp) {
                // ทำการแสดงค่าใน labelTemp
                var label = document.getElementById("<%=labc.ClientID %>");
                label.innerHTML = payload;
                document.getElementById("<%=hfvaluetemp.ClientID %>").value = label.innerHTML;

            }
        };

        // function Google map api ตำแหน่งจองรถรับส่ง
        var latlng = function (lat, lng) {

            var markers = [

                { "title": 'Driver', "lat": lat, "lng": lng, "description": 'รถรับส่งเด็กนักเรียน' },                
                { "title": 'School', "lat": '16.7494033', "lng": '100.2172302', "description": 'โรงเรียนคุ้งราวี' }, 
                <asp:Repeater ID="rptMarkers" runat="server"> 
                <ItemTemplate>
                        {"title": 'Home', "lat": '<%# Eval("Latitude") %>', "lng": '<%# Eval("Longitude") %>', "description": '<%# Eval("detailaddress") %>'} 
                    </ItemTemplate>
                <SeparatorTemplate>
                    ,
                </SeparatorTemplate>
                </asp:Repeater>
            ];

            var beaches = [
                ['Bondi Beach', -16.7494033, 100.2172302, 4]
                
            ];


            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
          
           
            //Create and open InfoWindow.
            var infoWindow = new google.maps.InfoWindow();

            var imageSchool = {
                url: '../Images/beachflag.png',
                // This marker is 20 pixels wide by 32 pixels high.
                size: new google.maps.Size(25, 38),
                // The origin for this image is (0, 0).
                origin: new google.maps.Point(0, 0),
                // The anchor for this image is the base of the flagpole at (0, 32).
                anchor: new google.maps.Point(0, 38)
            };

            var imageHome = {
                url: '../Images/HomeGPS.png',
                // This marker is 20 pixels wide by 32 pixels high.
                size: new google.maps.Size(25, 25),
                // The origin for this image is (0, 0).
                origin: new google.maps.Point(0, 0),
                // The anchor for this image is the base of the flagpole at (0, 32).
                anchor: new google.maps.Point(0, 32)
            };

            var imageDriver = {
                url: '../Images/logo1.png',
                // This marker is 20 pixels wide by 32 pixels high.
                size: new google.maps.Size(30, 30),
                // The origin for this image is (0, 0).
                origin: new google.maps.Point(0, 0),
                // The anchor for this image is the base of the flagpole at (0, 32).
                anchor: new google.maps.Point(0, 32)
            };

            for (var i = 0; i < markers.length; i++) {
                var datadriver = markers[0];
                var dataschool = markers[1];
                var dataHome = markers[2];

                var myLatlngdriver = new google.maps.LatLng(datadriver.lat, datadriver.lng);
                var markerdriver = new google.maps.Marker({
                    position: myLatlngdriver,
                    map: map,
                    title: datadriver.title,
                    icon: imageDriver
                   
                });

                var myLatlngschool = new google.maps.LatLng(dataschool.lat, dataschool.lng);
                var markerschool = new google.maps.Marker({
                    position: myLatlngschool,
                    map: map,
                    title: dataschool.title,
                    icon: imageSchool
                  
                });

                var myLatlngHome = new google.maps.LatLng(dataHome.lat, dataHome.lng);
                var markerHome = new google.maps.Marker({
                    position: myLatlngHome,
                    map: map,
                    title: dataHome.title,
                    icon: imageHome
                });


                //Attach click event to the marker.
                (function (marker, datadriver) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + datadriver.description + "</div>");
                        infoWindow.open(map, marker);
                    });

                })(markerschool, datadriver);

                //Attach click event to the marker.
                (function (marker, dataschool) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + dataschool.description + "</div>");
                        infoWindow.open(map, marker);
                    });

                })(markerschool, dataschool);

                //Attach click event to the marker.
                (function (marker, dataHome) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + dataHome.description + "</div>");
                        infoWindow.open(map, marker);
                    });

                })(markerHome, dataHome);




            }
        }


    </script>

    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ข้อมูล</h4>

            </header>
        </section>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-3">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="150" ControlStyle-Width="150" BorderStyle="Double" />
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Image runat="server" ControlStyle-Height="60" ControlStyle-Width="60" BorderStyle="Double" ImageUrl="~/Images/sensor-icon-temp.png" />
                </div>
                <br />
                <div class="col-md-1">
                    <asp:Label runat="server" ID="labc" Font-Bold="true" Font-Size="X-Large" ForeColor="#FF99FF"></asp:Label>
                    <asp:HiddenField ID="hfvaluetemp" runat="server" />
                </div>
                <div class="col-md-3">
                    <asp:Image runat="server" ControlStyle-Height="25" ControlStyle-Width="25" ImageUrl="~/Images/celcius-icon.png" />
                </div>
            </div>

        </div>
        <div class="form-group form-horizontal col-md-8">
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
                    <asp:Label runat="server" ID="labfullname" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="โรงเรียน:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labschool" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
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
                <div class="col-md-3 text-center">
                    <asp:Label runat="server" ID="labstatusup" Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ลงรถรับส่ง:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-3 text-center">
                    <asp:Label runat="server" ID="labstatusdown" Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>

            <%-- <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ตำแหน่งปัจจุบัน:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labgps" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                    <asp:HiddenField ID="hfvaluegps" runat="server" />
                </div>
            </div>--%>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <asp:Label runat="server" Text="ตำแหน่งปัจจุบันของรถรับส่งเด็กนักเรียน" Font-Size="Large"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <%-- <table>
                <tr>
                    <td>From : </td>
                    <td>
                        <asp:DropDownList ID="ddFrom" runat="server"></asp:DropDownList>
                    </td>
                    <td>To : </td>
                    <td>
                        <asp:DropDownList ID="ddTo" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <input type="button" value="Get Direction" id="btnGetDirection" />
                    </td>
                </tr>
            </table>--%>

            <div id="dvMap" style="width: 550px; height: 250px; border: solid 1px black; float: left"></div>
        </div>
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
