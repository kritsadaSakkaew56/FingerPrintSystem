﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Video.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>วิดีโอสตรีมบนรถรับส่งเด็กนักเรียน</h4>
            </header>
        </section>

    <div class="col-sm-12">
        <div class="row" style="padding-bottom: 10px; margin-right: 1px;">
            <div class=" btn-group btn-group-justified" style="width: 250px; float: right;">
                <asp:LinkButton ID="btnBack" runat="server" CssClass="btn btn-warning" CausesValidation="false" OnClick="btnBack_Click"></asp:LinkButton>
            </div>
        </div>
    </div>
    <hr />
    <br />
        <%--<div id="player"></div>--%>
        <%-- <iframe id="ytplayer" width="80%" height="550" src="https://www.youtube.com/embed/n_toKZltHU8?autoplay=1&origin=http://example.com"></iframe>--%>
        <div class="col-sm-2"></div>
        <div class="col-sm-10">
            <asp:PlaceHolder ID="iframeDiv" runat="server" />
        </div>


</asp:Content>
