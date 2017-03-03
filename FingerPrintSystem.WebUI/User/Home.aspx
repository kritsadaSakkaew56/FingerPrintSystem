<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="115" ControlStyle-Width="115" BorderStyle="Double" ImageUrl="~/Images/Home.png" />
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
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" Text="สถานะ:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:Label runat="server" ID="labstatus" Text="ยังไม่ได้ทำการเพิ่มลายนิ้วมือ" Width="235px" Height="30px" Font-Bold="true" Font-Size="Large" BackColor="#FF3333" ForeColor="White"></asp:Label>
                </div>
            </div>
        </div>
        <div class="form-group form-horizontal col-md-3">
            <div class="row">
                <div class="col-md-5">
                    <asp:Label runat="server" Text="อุณหภูมิบนรถ:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" ID="labc" Text="38" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Image runat="server" ControlStyle-Height="25" ControlStyle-Width="25" ImageUrl="~/Images/celcius-icon.png" />
                    <%--<asp:Label runat="server" Text="องศาเซลเซียล" Font-Bold="true" Font-Size="Large"></asp:Label>--%>
                </div>
            </div>
        </div>
    </div>
    <hr />
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
                    <asp:Image runat="server" ID="Imagebusschool" ControlStyle-Height="300" ControlStyle-Width="600" BorderStyle="Double" />
                </div>
            </div>

        </div>



    </div>



</asp:Content>
