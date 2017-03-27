<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FingerPrintSystem.WebUI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>


</head>
<body>
    <div class="container">
        <div style="text-align: center;">
            <img src="Images/logo.png" style="margin-top: 200px; opacity: 0.7;" width="150" height="150" />
        </div>
        <form id="form1" runat="server" class="form-signin">
            <h2 class="form-signin-heading">sign in now</h2>
            <br />
            <div class="row">
                <div class="col-md-4 text-center">
                    <h5>UserName</h5>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtUserName" runat="server" class="form-control" Width="200"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-center">
                    <h5>Password</h5>
                </div>
                <div class="col-md-8 text-center">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" Width="200"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="txtusername_password" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
            <br />
            <asp:Button ID="btnSignin" runat="server" class="btn btn-lg btn-login btn-block" OnClick="btnSignin_Click" Text="Login" />
            <asp:Button ID="bthforget" runat="server" class="btn btn-lg btn-login btn-block" Text="Forget" OnClick="bthforget_Click" />
            <asp:Button ID="bthregister" runat="server" class="btn btn-lg btn-login btn-block" Text="Register" OnClick="bthregister_Click" />


            <div class="modal fade" id="myModalFingerprint" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">สแกนลายนิ้วมือ</h4>
                        </div>
                        <div class="modal-body">
                            <h5>กรุณติดต่อคนขับรถเพื่อทำการเพิ่มลายนิ้วมือของเด็กนักเรียน  </h5>

                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ID="bthok" CssClass="btn btn-info" Width="100px" ForeColor="White">OK</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="bthclse" CssClass="btn btn-info" Width="100px" ForeColor="White" >CLOSE</asp:LinkButton>

                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>





</body>
</html>
