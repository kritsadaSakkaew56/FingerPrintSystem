<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="Videosteaming.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.Videosteaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ภาพถ่ายบริเวณรถรับส่งเด็กนักเรียน</h4>

            </header>
        </section>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <img src="~/Images/logo.png"
                id="imgphoto1"
                alt="vote up"
                runat="server"
                style="height: 400px; width: 80%" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <img src="~/Images/logo.png"
                id="imgphoto2"
                alt="vote up"
                runat="server"
                style="height: 400px; width: 80%" />
        </div>
    </div>



</asp:Content>
