<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ภาพถ่ายบริเวณรถรับส่งเด็กนักเรียน</h4>

            </header>
        </section>
    </div>
    <br />
    <div id="webcam"><noscript><img src="/?action=snapshot" /></noscript></div>
    <div class="row">


       
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-11">
            <div class="row">
                <div class="col-md-12">
                     <img   src="~/Images/Home.png"
                            id ="imgphoto1" 
                            alt ="vote up" 
                            runat="server" 
                            style="height: 500px; width: 650px"/>
                    <%--<asp:Image runat="server"  ID="Imagebusschool1" ControlStyle-Height="275" ControlStyle-Width="575" BorderStyle="Double" />--%>
                </div>
            </div>
        </div>
    </div>
   <%-- <div class="row">
        <div class="form-group form-horizontal col-md-2">
        </div>
        <div class="form-group form-horizontal col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image runat="server" ID="Imagebusschool2" ControlStyle-Height="275" ControlStyle-Width="575" BorderStyle="Double"  />
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
