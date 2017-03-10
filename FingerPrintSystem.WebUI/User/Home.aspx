<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ข้อมูล</h4>

            </header>
        </section>
    </div>
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
                    <asp:Label runat="server" ID="labid" Text="56363413" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ชื่อ-นามสกุล:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labfullname" Text="นาย กฤษฎา สักแก้ว" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="โรงเรียน:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labschool" Text="ภูซางวิทยาคม" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
            </div>
            <br />
            <%-- <div class="row">
                <div class="col-md-12">
                    <asp:Label runat="server" Text="สถานะ" Font-Size="Large"></asp:Label>
                </div>
            </div>
            <br />--%>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ขึ้นรถรับส่ง" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labstatusup" Text="ยังไม่ได้ทำการเพิ่มลายนิ้วมือ" Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="ลงรถรับส่ง" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labstatusdown" Text="ยังไม่ได้ทำการเพิ่มลายนิ้วมือ" Width="180px" Height="25px" Font-Bold="true" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>
        </div>
        <div class="form-group form-horizontal col-md-3">
            <div class="row">
                <div class="col-md-5">
                    <%-- <asp:Label runat="server" Text="อุณหภูมิ:" Font-Size="Large"></asp:Label>--%>
                    <asp:Image runat="server" ControlStyle-Height="75" ControlStyle-Width="75" BorderStyle="Double" ImageUrl="~/Images/sensor-icon-temp.png" />
                </div>
                <div class="col-md-1">
                    <asp:Label runat="server" ID="labc" Text="38" Font-Bold="true" Font-Size="X-Large" ForeColor="#FF99FF"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Image runat="server" ControlStyle-Height="25" ControlStyle-Width="25" ImageUrl="~/Images/celcius-icon.png" />
                </div>
            </div>
        </div>
        <hr />
    </div>
    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ภาพถ่ายบริเวณรถรับส่งเด็กนักเรียน</h4>
            </header>
        </section>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-2">
        </div>
        <div class="form-group form-horizontal col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image runat="server" ID="Imagebusschool" ControlStyle-Height="250" ControlStyle-Width="550" BorderStyle="Double" />
                </div>
            </div>

        </div>



    </div>
</asp:Content>
