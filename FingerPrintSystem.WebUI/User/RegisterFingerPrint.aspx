﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="RegisterFingerPrint.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.RegisterFingerPrint" %>

<%@ MasterType VirtualPath="~/Master/Register.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ขั้นตอนที่ 3 --> สแกนลายนิ้วมือ </h4>
            </header>
        </section>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-4">
        </div>
        <div class="form-group form-horizontal col-md-8">
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <asp:CheckBox ID="chkscan" Text="ทำการสแกนลายนิ้วมือ " runat="server" AutoPostBack="true" Font-Size="Larger" OnCheckedChanged="chkscan_CheckedChanged" />
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtusername" CssClass="form-control input-sm" placeholder="ผู้ใช้งานคนขับรถรับส่ง" Width="250" Height="40" Font-Size="Larger" Visible="false"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control input-sm" placeholder="รหัสผ่าน" TextMode="Password" Width="250" Height="40" Font-Size="Larger" Visible="false"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="bthlogin" runat="server" class="btn btn-warning" Text="LOGIN" Width="120" Height="40" OnClick="bthlogin_Click" Visible="false" />
                </div>
            </div>
            <br />

            <hr />
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <asp:CheckBox ID="chknoscan" Text="ยังไม่ทำการสแกนลายนิ้วมือ" runat="server" AutoPostBack="true" Font-Size="Larger" OnCheckedChanged="chknoscan_CheckedChanged" />
                    <hr />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
