﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="FingerPrintscan.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.FingerPrintscan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/circle.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <section class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">
            <h4>สแกนลายนิ้วมือ </h4>
        </header>
    </section>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Timer ID="UpdateTimer" runat="server" Interval="1000" OnTick="UpdateTimer_Tick" Enabled="false"></asp:Timer>
            <div class="row">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-5">
                    <p>
                        <asp:Image runat="server" ID="Imgfingerprint" ControlStyle-Height="300" ControlStyle-Width="300" BorderStyle="Double" />
                    </p>
                    <p>
                        <asp:Label runat="server" ID="labscan" Text="ยังไม่ได้ทำการสแกนลายนิ้วมือ" Font-Size="X-Large"></asp:Label>
                    </p>

                </div>

                <div class="modal fade" id="myModalScan" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">สแกนลายนิ้วมือ</h4>
                            </div>
                            <div class="modal-body">
                                <h5>คุณได้ทำการลงทะเบียนสแกนลายนิ้วมือเสร็จเรียบร้อย </h5>

                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton runat="server" ID="bthok" CssClass="btn btn-info" Width="200px" OnClick="bthok_Click">OK</asp:LinkButton>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-sm-5">

                    <p>
                        <asp:Button runat="server" OnClick="bthSaveFinish_Click" ID="bthSaveFinish" class="btn btn-warning btn-circle btn-Xl " Text="สแกน" Visible="true" />
                        <asp:Button runat="server" OnClick="bthclose_Click" ID="bthclose" class="btn btn-info btn-circle btn-Xl " Text="เริ่มใหม่" Visible="false" />
                    </p>
                    <p>
                        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                    </p>

                    <p>

                        <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
                            <ProgressTemplate>
                                <asp:Image ID="imgProgressprogress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" />
                                Please Wait...
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <div class="row">

                              <asp:Image ID="Imgfingerscan" ImageUrl="~/Images/HomeFingerprint.png" runat="server" Width="175" Height="175" Visible="false" />
                        </div>
                       <div class="row">
                        <asp:Image ID="imgsuccess" ImageUrl="~/Images/success.png" runat="server" Width="30" Height="30" Visible="false" />
                        <asp:Label ID="labsuccess" runat="server" Font-Size="Medium" Visible="false"></asp:Label>

                       </div>
                     
                        <%--  <asp:Image ID="imgProgress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" Visible="false" />
                            <asp:Label ID="labplase" runat="server" Text=" Please Wait..." Visible="false"></asp:Label>--%>
                    </p>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="UpdateTimer" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
