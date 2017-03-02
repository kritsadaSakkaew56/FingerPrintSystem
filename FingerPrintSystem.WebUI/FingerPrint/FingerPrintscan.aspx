<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="FingerPrintscan.aspx.cs" Inherits="FingerPrintSystem.WebUI.FingerPrint.FingerPrintscan" %>

<%@ MasterType VirtualPath="~/Master/Register.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CCFFCC"/>
                </div>
            </div>
              <div class="row">
                <div class="col-md-4">
                     <asp:Label runat="server" ID="laberroe" ></asp:Label>
                </div>
            </div>
           
            <div class="row">
                <div class="col-md-4">
                        <asp:Button ID="btnshow" runat="server" Text="Show" Class="btn btn-danger" Width="250" Height="40" OnClick="btnshow_Click" />
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
                    <asp:Image runat="server" ID="Imgfingerprint" ControlStyle-Height="250" ControlStyle-Width="250" BorderStyle="Double" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
