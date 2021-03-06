﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FingerPrintSystem.WebUI.Login" %>

<!DOCTYPE html>
<html xmlns="https://www.w3.org/1999/xhtml">
<head runat="server">

    <title>FingerPrint System </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">

    
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">

    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/Checkbox%20_Styles.css" rel="stylesheet" />


</head>
<body>
    <div class="container">
        <div style="text-align: center;">
            <img src="Images/logo.png" style="margin-top: 50px; opacity: 0.7;" width="150" height="150" />
        </div>
        <form id="form1" runat="server" class="form-signin">
            <h2 class="form-signin-heading">Fingerprint system</h2>
            <br />

            <div class="row">
                <div class="col-md-4 text-center">
                    <h5>ผู้ใช้งาน</h5>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtUserName" runat="server" class="form-control"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-center">
                    <h5>รหัสผ่าน</h5>
                </div>
                <div class="col-md-7 text-center">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <%-- <div class="row">
                <div class="col-md-4 text-center">
                  <h5>User</h5>
                </div>
                <div class="col-md-7 text-center">
                    <asp:DropDownList ID="DropSelectuse" class="form-control" runat="server"  >
                        <asp:ListItem>Parent User</asp:ListItem>
                        <asp:ListItem>Driver User</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>--%>
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-10">
                    <asp:Label ID="txtusername_password" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>


            <br />
            <asp:Button ID="btnSignin" runat="server" class="btn btn-lg btn-login btn-block" OnClick="btnSignin_Click" Text="เข้าสู่ระบบ" />
            <%-- <asp:Button ID="bthforget" runat="server" class="btn btn-lg btn-login btn-block" Text="Forget" OnClick="bthforget_Click" />--%>
            <asp:Button ID="bthregister" runat="server" class="btn btn-lg btn-login btn-block" Text="สมัคร" OnClick="bthregister_Click" />

            <div class="modal fade" id="myModalwebsite" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">การลงทะเบียนในระบบยังไม่สมบูรณ์</h4>
                        </div>
                        <div class="modal-body">
                            <h5>กรุณติดต่อเจ้าหน้าที่</h5>

                        </div>
                        <div class="modal-footer">
                            <%--<asp:LinkButton runat="server" ID="bthok" CssClass="btn btn-info" Width="200px" ForeColor="White">OK</asp:LinkButton>--%>
                            <%-- <asp:LinkButton runat="server" ID="bthclse" CssClass="btn btn-info" Width="100px" ForeColor="White">CLOSE</asp:LinkButton>--%>
                        </div>
                    </div>
                </div>
            </div>
             <div class="modal fade" id="myModalFingerprint" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">การลงทะเบียนในระบบยังไม่สมบูรณ์</h4>
                        </div>
                        <div class="modal-body">
                            <h5>กรุณติดต่อทางเจ้าหน้าที่</h5>

                        </div>
                        <div class="modal-footer">
                            <%--<asp:LinkButton runat="server" ID="LinkButton1" CssClass="btn btn-info" Width="200px" ForeColor="White">OK</asp:LinkButton>--%>
                            <%-- <asp:LinkButton runat="server" ID="bthclse" CssClass="btn btn-info" Width="100px" ForeColor="White">CLOSE</asp:LinkButton>--%>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>


</body>
</html>
