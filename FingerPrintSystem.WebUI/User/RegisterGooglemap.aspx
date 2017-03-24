<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterGooglemap.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.RegisterGooglemap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyDBGK8nRj24Jh6GVQRtgaoISecBPAHfHDA"></script>
    <script src="../js/jquery-1.4.2.min.js"></script>
    <script src="../js/jquery-ui-1.8.1.custom.min.js"></script>
    <script src="../js/googlemapapi.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-reset.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/datepicker/css/datepicker.css" />
    <!--external css-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/owl.carousel.css" type="text/css">



    <!--right slidebar-->
    <link href="../css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet" />

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/jquery.validate.min.js"></script>



</head>
<body>



    <form id="form1" runat="server">
        <section id="container">
            <!--header start-->
            <header class="header white-bg" style="background-color: sandybrown">

                <div class="sidebar-toggle-box">
                    <img src="../Images/Home.png" width="27" height="27" />
                    <!--logo start-->
                </div>
                <a href="../Admin/googlemap.aspx" class="logo">FingerPrint<span>System</span></a>
                <!--logo end-->
            </header>

        </section>
        <br />
        <br />
        <br />
        <br />
        <div class="row">
            <section class="panel">
                <div class="form-group form-horizontal col-md-12">
                    <div class="col-lg-12">
                        <header class="panel-heading" style="background-color: #F5DEB3">
                            <h4>ขั้นตอนที่ 2 >>> เพิ่มที่อยู่ปัจจุบัน</h4>
                        </header>
                    </div>
                </div>
            </section>
        </div>
        <div class="row">
            <div class="form-group form-horizontal col-md-8">
                <div class="col-lg-4">
                    <asp:TextBox runat="server" ID="address" CssClass="form-control input-sm" placeholder="กรุณาค้นหาที่อยู่ของท่าน ( บ้านเลขที่ หมู่บ้าน ตำบล อำเภอ จังหวัด รหัสไปรษณีย์ )" Width="950" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="form-group form-horizontal col-md-8">
                <div class="col-lg-4">
                    <asp:TextBox ID="txtcomment" TextMode="MultiLine" placeholder="ระบุที่อยู่เพิ่มเติม" Height="55px" Width="950" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group form-horizontal col-md-12">
                <div class="col-lg-12">
                    <asp:Label runat="server" ID="labaddress" Width="200" Visible="false" ForeColor="Red" Font-Size="Medium"></asp:Label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group form-horizontal col-md-8">
                <div class="col-lg-4">
                    <div id="map_canvas" style="width: 950px; height: 400px;"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group form-horizontal col-md-8">
                <div class="col-lg-8">
                    <label>x</label>
                    <asp:TextBox id="latitude" runat="server" Visible="true"></asp:TextBox>
                    <asp:HiddenField ID="hfvaluelatitude" runat="server" />

                    <label>y</label>
                    <asp:TextBox ID="longitude" runat="server" Visible="true"></asp:TextBox>
                    <asp:HiddenField ID="hfvaluelongitude" runat="server" />
                   
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group form-horizontal col-md-8">
                <div class="col-lg-4">
                    <%--<asp:LinkButton runat="server" ID="bthSave" class="btn btn-danger" Width="150" Height="40" OnClick="bthSave_Click">Save</asp:LinkButton>--%>

                    <asp:Button ID="bthsave" runat="server" Text="Next" Class="btn btn-warning" Width="250" Height="40" OnClick="bthsave_Click" />
                </div>
            </div>
        </div>

    </form>
</body>
</html>
