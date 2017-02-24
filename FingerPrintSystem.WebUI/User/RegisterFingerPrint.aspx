<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="RegisterFingerPrint.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.RegisterFingerPrint" %>

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
    <div class="form-group form-horizontal col-md-12">
        <div class="col-lg-4">
            <hr />
            <h4>สแกนลายนิ้วมือ</h4>
            <hr />
        </div>
        <br />
        <br />
        <br />
        <div class="col-lg-4">
            <div class="row">
                <div class="form-group form-horizontal col-md-8">
                    <div class="col-lg-4">
                        <asp:TextBox runat="server" ID="txtusername" CssClass="form-control input-sm" placeholder="ผู้ใช้งานคนขับรถรับส่ง" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="form-group form-horizontal col-md-4">
                    <div class="col-lg-4">
                        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control input-sm" placeholder="รหัสผ่าน" TextMode="Password" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group form-horizontal col-md-8">
                    <div class="col-lg-8">
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="bthlogin" runat="server" class="btn btn-warning" Text="LOGIN" Width="120" Height="40" OnClick="bthlogin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="form-group form-horizontal col-md-12">
        <div class="col-lg-4">
            <hr />
            <h4>ต้องการสแกนทีหลังครับ</h4>
            <hr />
        </div>
    </div>


</asp:Content>
