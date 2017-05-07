<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FingerPrintSystem.WebUI.Admin._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">
            <asp:Label runat="server" ID="labdlogin" Font-Size="Larger"></asp:Label>
        </header>
        <header class="panel-heading" style="background-color: #F5DEB3">
            <asp:Label runat="server" ID="labdatetimelogin" Font-Size="Larger"></asp:Label>
        </header>
    </section>
    <%--<asp:Image runat="server" ImageUrl="~/Images/profile.png" Width="85%" Height="80%" />--%>


</asp:Content>
