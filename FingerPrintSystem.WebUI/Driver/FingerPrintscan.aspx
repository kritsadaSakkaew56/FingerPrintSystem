<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="FingerPrintscan.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.FingerPrintscan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/circle.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>สแกนลายนิ้วมือ </h4>
            </header>
        </section>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="col-sm-5">


                    <p>
                        <asp:Button runat="server" OnClick="bthSaveFinish_Click" ID="bthSaveFinish" class="btn btn-warning btn-circle btn-Xl " Text="Scan" />
                    </p>
                    <p>
                        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                    </p>
                    <fieldset style="width: 200px">
                        <p>

                            <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                    <asp:Image ID="imgProgress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" />
                                    Please Wait...
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </p>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


    <hr />
    <div class="row">
        <div class="form-group form-horizontal col-md-3">
        </div>
        <div class="form-group form-horizontal col-md-9">
            <div class="row">
                <div class="col-md-12">


                    <%--<asp:LinkButton runat="server" ID="bthfinish" class="btn btn-warning btn-circle btn-Xl" OnClick="bthfinish_Click" Text="ยืนยัน"><i class="glyphicon glyphicon-ok"></i>ยืนยัน</asp:LinkButton>--%>
                    <%-- <button type="button" runat="server"  id="bthsave" class="btn btn-warning btn-circle btn-Xl"><i class="glyphicon glyphicon-ok" ></i>ยืนยัน</button>--%>
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
                    <h5>ทำการสแกนลายนิ้วมือเรียบร้อยแล้ว กด OK เพื่อกลับไปสู่เมนูหลัก  </h5>

                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthok" CssClass="btn btn-info" Width="200px" OnClick="bthok_Click">OK</asp:LinkButton>

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
                    <asp:LinkButton runat="server" ID="bthOKSave" CssClass="btn btn-info"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton1" CssClass="btn btn-info"> Close</asp:LinkButton>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
