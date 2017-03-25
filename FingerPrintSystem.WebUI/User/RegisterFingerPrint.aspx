<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="RegisterFingerPrint.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.RegisterFingerPrint" %>

<%@ MasterType VirtualPath="~/Master/Register.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ขั้นตอนที่ 3 >>> สแกนลายนิ้วมือ </h4>
            </header>
        </section>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-11">
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <asp:CheckBox ID="chkscan" Text="ทำการสแกนลายนิ้วมือ " runat="server" AutoPostBack="true" Font-Size="Larger" OnCheckedChanged="chkscan_CheckedChanged" />
                    <hr />
                </div>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="form-group form-horizontal col-md-4">
        </div>
        <div class="form-group form-horizontal col-md-8">
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
        </div>

    </div>

    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-11">
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <asp:CheckBox ID="chknoscan" Text="ยังไม่ทำการสแกนลายนิ้วมือ" runat="server" AutoPostBack="true" Font-Size="Larger" OnCheckedChanged="chknoscan_CheckedChanged" />
                    <hr />
                </div>
                <hr />
                <hr />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-7">
        </div>
        <div class="form-group form-horizontal col-md-5">
            <div class="row">
                <div class="col-md-12">
                    <asp:LinkButton runat="server" ID="bthfinish" class="btn btn-warning" Width="250" Height="40" Visible="false" OnClick="bthfinish_Click">เสร็จสิ้น</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModalSave" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">บันทึกรายการ</h4>
                </div>
                <div class="modal-body">
                    <h5>ต้องการบันทึกรายการนี้หรือไม่</h5>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthOKSave" CssClass="btn btn-info" OnClick="bthOKSave_Click"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="bthclse" CssClass="btn btn-info"> Close</asp:LinkButton>

                </div>
            </div>
        </div>
    </div>
     

</asp:Content>
