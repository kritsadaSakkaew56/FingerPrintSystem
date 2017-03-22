<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FingerPrintClinic.WebUI.Login" %>

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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/jquery.min.js"></script>

  


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
                    <asp:TextBox ID="txtUserName" runat="server" class="form-control" meta:resourcekey="txtUserName" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-center">
                    <h5>Password</h5>
                </div>
                <div class="col-md-8 text-center">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" meta:resourcekey="txtPassword" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="btnSignin" runat="server" class="btn btn-lg btn-login btn-block" OnClick="btnSignin_Click" Text="Login" />
            <asp:Button ID="bthforget" runat="server" class="btn btn-lg btn-login btn-block" Text="Forget" OnClick="bthforget_Click" />
            <asp:Button ID="bthregister" runat="server" class="btn btn-lg btn-login btn-block" Text="Register" OnClick="bthregister_Click" />
           
        </form>
    </div>



</body>
</html>
