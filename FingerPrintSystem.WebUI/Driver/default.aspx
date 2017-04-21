<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">
         
                <h4>ยินดีต้อนรับเข้าสู่ระบบ </h4>
       
                <asp:Label runat="server" ID="labdrivername" Text="55555" Font-Size="X-Large"></asp:Label>
            
        </header>
    </section>

</asp:Content>
