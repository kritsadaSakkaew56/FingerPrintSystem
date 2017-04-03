<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="Videosteaming.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.Videosteaming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group form-horizontal col-md-1">
    </div>
    <div class="form-group form-horizontal col-md-11">
        <div class="row">
            <div class="col-md-12">
                <img src="~/Images/Home.png"
                    id="imgphoto1"
                    alt="vote up"
                    runat="server"
                    style="height: 500px; width: 650px" />
            </div>
        </div>
    </div>
</asp:Content>
