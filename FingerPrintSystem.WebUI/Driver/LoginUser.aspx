<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.LoginUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-reset.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center;">
        <img src="../Images/logo.png" style="margin-top: 100px; opacity: 0.7;" width="150" height="150" />
    </div>
    <br />
    <div style="text-align: center;">
         <div class="row">

        <div class="form-group form-horizontal col-md-4">
        </div>
        <div class="form-group form-horizontal col-md-8">
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtusername" CssClass="form-control input-sm" placeholder="ผู้ใช้งาน" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control input-sm" placeholder="รหัสผ่าน" TextMode="Password"  Height="40" Font-Size="Larger" ></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="txtusername_password" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="bthlogin" runat="server" class="btn btn-warning" Text="LOGIN" Width="200" Height="40" OnClick="bthlogin_Click" />
                </div>
            </div>
        </div>

    </div>

    </div>

</asp:Content>
