<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="Checkscan.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.Checkscan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">

            <h4>การสแกนลายนิ้วมือ </h4>
        </header>
    </section>
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel runat="server" ID="UpdatePanel_DropDownList" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <h4>การเลือกเที่ยวรถรับส่ง: </h4>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="70%" Height="35" AutoPostBack="false"></asp:DropDownList>
                        <asp:LinkButton runat="server" ID="LinkButton1" class="btn btn-primary btn-md"><i class="glyphicon glyphicon-ok-sign"></i>ตรวจสอบ</asp:LinkButton>
                       
                    </div>

                </div>
              <%--  <div class="panel-body form-horizontal">
                    <h4>การเลือกสถานะ: </h4>
                    <div class="col-sm-12">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="70%" Height="35" AutoPostBack="false"></asp:DropDownList>
                        <asp:LinkButton runat="server" ID="bthSaveFinish" class="btn btn-primary btn-md"><i class="glyphicon glyphicon-ok-sign"></i>ตรวจสอบ</asp:LinkButton>
                       
                    </div>

                </div>--%>

                <div class="col-sm-12">

                    <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel_DropDownList">
                        <ProgressTemplate>
                            <%--  <asp:Image ID="imgProgress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" Width="25" Height="25" />
                                Please Wait...--%>
                            <asp:Image ID="imgsuccess" ImageUrl="~/Images/success.png" runat="server" Width="30" Height="30" />
                            <asp:Label ID="labsuccess" runat="server" Text="ทำการเลือกสำเร็จ" Font-Size="Medium"></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>


                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="row">
        <div class="panel-body form-horizontal">
              <asp:LinkButton runat="server" ID="bth" class="btn btn-success" Width="150" Height="40"><i class="glyphicon glyphicon-ok"></i>ตกลง</asp:LinkButton>
        </div>
    </div>
</asp:Content>
