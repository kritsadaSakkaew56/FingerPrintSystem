﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="Schoolgohome.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.Schoolgohome" %>

<%@ MasterType VirtualPath="~/Master/Driver.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="panel">
        <header class="panel-heading" style="background-color: #F5DEB3">
            <h4>การเดินทางจาก  โรงเรียน >>> บ้าน </h4>
        </header>
    </section>

    <%--<div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-5">
            <div class="row">
                <div class="form-group form-horizontal col-md-12">
                    <div class="col-md-12">
                        <asp:Label runat="server" Text="จำนวนเด็กนักเรียนขึ้นรถรับส่ง" Font-Bold="true" Font-Size="Large"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label runat="server" Text="ขึ้นรถรับส่ง:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="labupstudent" Text="0" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" Text="คน" Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label runat="server" Text="เหลือ:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="labresuluptstudent" Text="10" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" Text="คน" Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>
            </div>
        </div>
        <div class="form-group form-horizontal col-md-6">
            <div class="row">
                <div class="form-group form-horizontal col-md-12">
                    <div class="col-md-12">
                        <asp:Label runat="server" Text="จำนวนเด็กนักเรียนลงรถรับส่ง" Font-Bold="true" Font-Size="Large"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label runat="server" Text="ลงรถรับส่ง:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="labdownstudent" Text="0" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" Text="คน" Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label runat="server" Text="เหลือ:" Font-Size="Large"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="labresuldowntstudent" Text="10" Font-Bold="true" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" Text="คน" Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>
            </div>
        </div>
    </div>--%>
    <br />
    <%-- <div class="row">
        <div class="form-group form-horizontal col-md-3">
        </div>
        <div class="form-group form-horizontal col-md-9">
            <div class="col-md-2">
                <asp:Label runat="server" Text="ทั้งหมด:" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="labnumstudent" Text="10" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" Text="คน" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
        </div>
    </div>--%>
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>


    <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="col-sm-9">
                        <asp:DropDownList ID="DropDownList" runat="server" Width="70%" Height="35" AutoPostBack="false"></asp:DropDownList>
                        <asp:LinkButton runat="server" ID="bthSaveFinish" class="btn btn-primary btn-md" OnClick="bthSaveFinish_Click"><i class="glyphicon glyphicon-ok-sign"></i>ตกลง</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="bthclose" class="btn btn-danger btn-md" OnClick="bthclose_Click"><i class="glyphicon glyphicon-remove"></i>เริ่มใหม่</asp:LinkButton>

                    </div>
                    <div class="col-sm-3">
                        <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
                            <ProgressTemplate>
                                <%--  <asp:Image ID="imgProgress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" Width="25" Height="25" />
                                Please Wait...--%>
                                <asp:Image ID="imsuccess" ImageUrl="~/Images/success.png" runat="server" Width="25" Height="25" />
                                ทำการเลือกสำเร็จ
                            </ProgressTemplate>
                        </asp:UpdateProgress>

                    </div>
                </div>
            </div>
            <hr />

        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Timer ID="UpdateTimer" runat="server" Interval="1000" OnTick="UpdateTimer_Tick"></asp:Timer>
    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">

                        <%--<uc1:PagingControl ID="PagingControl1" runat="server" />--%>
                        <asp:GridView
                            DataKeyNames="member_id"
                            ID="gvMember" runat="server"
                            AutoGenerateColumns="false"
                            AllowSorting="false"
                            OnRowDataBound="gvMember_RowDataBound"
                            OnSorting="gvMember_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            HeaderStyle-BackColor="#FFECCD"
                            CssClass="table table-bordered table-striped table-hover"
                            Style="max-width: 100%">
                            <Columns>

                                <%--   <asp:BoundField HeaderText="#" DataField="Count" SortExpression="Count" ItemStyle-HorizontalAlign="Left"/>--%>
                                <%--  <asp:ImageField DataImageUrlField="ID"
                                    DataImageUrlFormatString="HomegoSchool.aspx?ImageID={0}"
                                    ControlStyle-Width="100" ControlStyle-Height="100"
                                    HeaderText="รูปประจำตัว" />--%>

                                <asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />

                                <asp:TemplateField HeaderText="วันที่/เวลาขึ้น" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>

                                        <asp:Label runat="server" ID="lalScanup" Text='<%# Eval("datetime_up") %>' Height="20px" ForeColor="White" Font-Bold="true"></asp:Label>
                                        <%--  <asp:Label runat="server" ID="lalnoScanup" Text="ยังไม่ได้สแกน" Width="150px" Height="20px" ForeColor="White" Visible="true"></asp:Label>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="วันที่/เวลาลง" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lalScandown" Text='<%# Eval("datetime_down") %>' Height="20px" ForeColor="White" Font-Bold="true"></asp:Label>
                                        <%--<asp:Label runat="server" ID="lalnoScandown" Text="ยังไม่ได้สแกน" Width="150px" Height="20px" ForeColor="White" Visible="true"></asp:Label>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="bthdetial" runat="server" Width="25%" Height="20" meta:resourcekey="bthScandetail" CssClass="btn btn-success btn-xs" OnClick="bthdetial_Click" ><i class="fa fa-search"></i></asp:LinkButton>
                                        <%--<asp:LinkButton runat="server" ID="btnOK" CssClass="btn btn-primary"> OK</asp:LinkButton>
                                        <asp:CheckBox runat="server" ID="chkSelect" Enabled="false" Checked="false" />--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="UpdateTimer" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <hr />
    <div class="row">
        <div class="form-group form-horizontal col-md-9">
        </div>
        <div class="form-group form-horizontal col-md-3">
            <asp:LinkButton runat="server" ID="bthsave" class="btn btn-success" Width="150" Height="40" OnClick="bthsave_Click"><i class="glyphicon glyphicon-ok"></i>ยืนยัน</asp:LinkButton>
        </div>
    </div>
    <div class="modal fade" id="myModaldetial" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ข้อมูลเด็กนักเรียน</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                         <div class="col-sm-1">
                        </div>
                        <div class="col-sm-4">
                            <asp:Image ID="imgstudent" runat="server" Width="150" Height="175" />
                        </div>
                        <div class="col-sm-3">

                            <p>
                                <asp:Label runat="server" Text="เลขที่:" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label runat="server" Text="ชื่อ-นามสกุล:" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label runat="server" Text="โรงเรียน:" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label runat="server" Text="ชื่อผู้ปกครอง:" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label runat="server" Text="เบอร์โทรศัพท์:" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label runat="server" Text="E-Mail:" Font-Size="Medium"></asp:Label>
                            </p>


                        </div>
                        <div class="col-sm-4">

                            <p>
                                <asp:Label ID="txtid" runat="server" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="txtfullname" runat="server" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="txtshcool" runat="server" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="txtfullnameparent" runat="server" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="txttel" runat="server" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="txtemail" runat="server" Font-Size="Medium"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>
                <%-- <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthOKSave" CssClass="btn btn-info"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton1" CssClass="btn btn-info"> Close</asp:LinkButton>

                </div>--%>
            </div>
        </div>
    </div>

</asp:Content>
