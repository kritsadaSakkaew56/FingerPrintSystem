<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet" />
    <script src="../js/jquery-ui-1.8.1.custom.min.js"></script>

    <!-- Custom styles for this template -->

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet" />



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
                </asp:Repeater >
            ];


            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 11,
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


                //Attach click event to the marker Driver.
                (function (marker, datadriver) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + datadriver.description + "</div>");
                        infoWindow.open(map, marker);
                    });

                })(markerschool, datadriver);

                //Attach click event to the marker School.
                (function (marker, dataschool) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + dataschool.description + "</div>");
                        infoWindow.open(map, marker);
                    });

                })(markerschool, dataschool);

                //Attach click event to the marker Home.
                (function (marker, dataHome) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + dataHome.description + "</div>");
                        infoWindow.open(map, marker);
                    });

                })(markerHome, dataHome);


               
               // google.maps.event.addDomListener(window, 'resize', initialize); //resize
               // google.maps.event.addDomListener(window, 'load', initialize);
            }

           
        }
            
             
    </script>
    

    <div class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">
            <h4>ข้อมูล</h4>
        </header>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-6">
                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <article class="statistic-box yellow">

                                <br />
                                <p>
                                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="175" ControlStyle-Width="175" />
                                </p>
                                <p>
                                    <asp:Label runat="server" Text="เลขที่:" Font-Size="Large" ForeColor="Black"></asp:Label>
                                    <asp:Label runat="server" ID="labid" Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                </p>

                                <p>
                                    <asp:Label runat="server" Text="ชื่อ-นามสกุล:" Font-Size="Large" ForeColor="Black"></asp:Label>
                                    <asp:Label runat="server" ID="labfullname" Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                </p>
                                <p>
                                    <asp:Label runat="server" Text="โรงเรียน:" Font-Size="Large" ForeColor="Black"></asp:Label>
                                    <asp:Label runat="server" ID="labschool" Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                </p>
                                <br />
                                <br />
                            </article>

                        </div>

                    </div>
                    <div class="col-sm-6">
                        <article class="statistic-box yellow">
                            <div>
                                <br />
                                <p>
                                    <asp:Label runat="server" Text="ขึ้นรถรับส่ง:" Font-Size="Large" ForeColor="Black"></asp:Label>
                                    <asp:Label runat="server" ID="labstatusup" Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="Black"></asp:Label>
                                </p>
                                <p>

                                    <asp:Label runat="server" Text="ลงรถรับส่ง:" Font-Size="Large" ForeColor="Black"></asp:Label>
                                    <asp:Label runat="server" ID="labstatusdown" Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="Black"></asp:Label>

                                </p>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-6">
                        <article class="statistic-box yellow">
                            <div>
                                <br />
                                <br />
                                <p>

                                    <asp:ImageButton runat="server" ID="imgyoutube" ImageUrl="~/Images/YouTube.png" ToolTip="Submit" Width="130" Height="85" OnClick="imgyoutube_Click" />
                                    <asp:Label runat="server" Text="Video Steaming" Font-Size="Small"></asp:Label>
                                </p>

                            </div>
                            <br />
                            <br />
                        </article>
                    </div>
                    <div class="col-sm-12">
                        <article class="statistic-box yellow">
                            <div>
                                <br />
                                <p>
                                    <asp:Image runat="server" ControlStyle-Height="60" ControlStyle-Width="60" ImageUrl="~/Images/sensor-icon-temp.png" />

                                </p>
                                <p>
                                    <asp:Label runat="server" ID="labc" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                                    <asp:HiddenField ID="hfvaluetemp" runat="server" />
                                    <asp:Label runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" Text="องศาเซลเซียส"></asp:Label>
                                    <%--<asp:Image runat="server" ControlStyle-Height="25" ControlStyle-Width="25" ImageUrl="~/Images/celcius-icon.png" />--%>
                                </p>
                            </div>
                            <br />

                        </article>
                    </div>

                </div>

            </div>

        </div>
        <div class="row">
            <div class="col-md-10">
                <asp:Label runat="server" Text="แผนที่" Font-Size="Large" ForeColor="Black"></asp:Label>
            </div>
        </div>
        <div class="row">
           
                <div id="dvMap" style="width:100%;height:300px;border:solid 1px black; float: left"></div>
            
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
