<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.RegisterUser" %>

<%@ MasterType VirtualPath="~/Master/Register.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ขั้นตอนที่ 1 >>> กรอกข้อมูล </h4>
            </header>
        </section>
    </div>

    <%-- <div class="row">
        <div class="panel-body form-horizontal">
            <div class="panel-body">

                <asp:LinkButton runat="server" ID="bthChild" CssClass="btn btn-primary" Width="250" Height="50" Text="Child User" Font-Bold="false" Font-Size="X-Large"></asp:LinkButton>
                <asp:LinkButton runat="server" ID="bthDriver" CssClass="btn btn-primary" Width="250" Height="50" Text="Driver User" Font-Bold="false" Font-Size="X-Large"></asp:LinkButton>

            </div>
        </div>
    </div>--%>
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <h4>Student's Photo </h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="180" ControlStyle-Width="200" BorderStyle="Double" />
                </div>
            </div>

            <div class="row">
                <div class=" col-md-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CCFFCC" Width="200" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label runat="server" ID="laberroe"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <asp:Button ID="btnshow" runat="server" Text="Show" Class="btn btn-danger" Width="200" Height="40" OnClick="btnshow_Click" />
                </div>
            </div>
        </div>

        <div class="form-group form-horizontal col-md-7">
            <div class="row">
                <div class="col-md-12">
                    <h4>สมัครเข้าสู่ระบบ</h4>
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtusername" CssClass="form-control input-sm" placeholder="ผู้ใช้งาน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">

                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control input-sm" placeholder="รหัสผ่าน" TextMode="Password" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control input-sm" TextMode="Password" placeholder="ยืนยันรหัสผ่าน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <hr />
            <h4>ข้อมูลส่วนตัว</h4>
            <hr />
            <div class="row">
                <div class=" col-md-6">
                    <asp:TextBox runat="server" ID="txtid" CssClass="form-control input-sm" placeholder="เลขที่" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtfullname" CssClass="form-control input-sm" placeholder="ชื่อ-นามสกุล" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtschool" CssClass="form-control input-sm" placeholder="กำลังศึกษา" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtfullnameparent" CssClass="form-control input-sm" placeholder="ชื่อผู้ปกครอง" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txttel" CssClass="form-control input-sm" placeholder="เบอร์โทรศัพท์ติดต่อฉุกเฉิน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtemail" CssClass="form-control input-sm" placeholder="E-mail" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <%-- <div class="row">
                <div class="form-group form-horizontal col-md-4">
                    <div class="col-lg-4">
                        <asp:TextBox runat="server" ID="TxtAddress" CssClass="form-control input-sm" placeholder="คลิ๊กเพิ่มที่อยู่ที่ปุ่ม'เพิ่มที่อยู่'" Enabled="false" MaxLength="300" TextMode="MultiLine" Width="300" Height="90" Font-Size="Small"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group form-horizontal col-md-4">
                    <div class="col-lg-4">
                        <asp:LinkButton runat="server" ID="bthaddress" class="btn btn-default" Width="300" Height="40" OnClick="bthaddress_Click">เพิ่มที่อยู่</asp:LinkButton>
                    </div>
                </div>
            </div>--%>

            <br />

            <asp:LinkButton runat="server" ID="bthnext" class="btn btn-warning" Width="250" Height="40" OnClick="bthnext_Click">ถัดไป</asp:LinkButton>



        </div>
    </div>
</asp:Content>
