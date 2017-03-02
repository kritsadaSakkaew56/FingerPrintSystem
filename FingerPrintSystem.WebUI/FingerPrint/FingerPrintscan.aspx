﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="FingerPrintscan.aspx.cs" Inherits="FingerPrintSystem.WebUI.FingerPrint.FingerPrintscan" %>

<%@ MasterType VirtualPath="~/Master/Register.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>สแกนลายนิ้วมือ </h4>
            </header>
        </section>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-5">
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <h4>Student's Photo </h4>
                    <hr />
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="250" ControlStyle-Width="250" BorderStyle="Double" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class=" col-md-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CCFFCC" Width="250" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label runat="server" ID="laberroe"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Button ID="btnshow" runat="server" Text="Show" Class="btn btn-danger" Width="100" Height="40" OnClick="btnshow_Click" />
                </div>
            </div>
        </div>
        <div class="form-group form-horizontal col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <h4>Finger Print</h4>
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Image runat="server" ID="Imgfingerprint" ControlStyle-Height="200" ControlStyle-Width="200" BorderStyle="Double" />
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <asp:Label runat="server" ID="labscan" Text="ยังไม่ได้ทำการสแกนลายนิ้วมือ"></asp:Label>
                </div>
            </div>
        </div>
    </div>
  <div class="row">
        <div class="form-group form-horizontal col-md-7">
        </div>
        <div class="form-group form-horizontal col-md-5">
            <div class="row">
                <div class="col-md-12">
                     <asp:LinkButton runat="server" ID="bthfinish" class="btn btn-warning" Width="250" Height="40" OnClick="bthfinish_Click">ยืนยัน</asp:LinkButton> 
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModalScan" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">สแกนลายนิ้วมือ</h4>
                </div>
                <div class="modal-body">
                    <h5>ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว</h5>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthclse" CssClass="btn btn-info"> Close</asp:LinkButton>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
