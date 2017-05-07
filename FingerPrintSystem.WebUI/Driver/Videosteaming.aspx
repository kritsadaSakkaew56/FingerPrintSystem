<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="Videosteaming.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.Videosteaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">
            <h4>วิดีโอสตรีมบนรถรับส่งเด็กนักเรียน</h4>
        </header>
    </section>

    <div class="row">
        <div class="col-sm-12">
            <h5>บริเวณข้างนอกรถรับส่ง</h5>
            <img src="~/Images/logo.png"
                id="imgphoto1"
                alt="vote up"
                runat="server"
                style="width: 70%; height: 240px; border: solid 1px black; float: left" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-12">
             <h5>บริเวณข้างในรถรับส่ง</h5>
            <img src="~/Images/logo.png"
                id="imgphoto2"
                alt="vote up"
                runat="server"
                style="width: 70%; height: 240px; border: solid 1px black; float: left" />
        </div>
    </div>



</asp:Content>
