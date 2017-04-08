<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="Schoolgohome.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.Schoolgohome" %>

<%@ MasterType VirtualPath="~/Master/Driver.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="scMain" runat="server"></asp:ScriptManager>

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
    <div class="row">
        <div class="panel-body form-horizontal">
            <div class="panel-body">
                 <asp:DropDownList ID="DropDownList" runat="server" Width="50%" Height="35"></asp:DropDownList>
                 <asp:LinkButton runat="server" ID="bthSaveFinish" class="btn btn-primary btn-md" ><i class="glyphicon glyphicon-ok-sign"></i>ตกลง</asp:LinkButton>
                 <asp:LinkButton runat="server" ID="bthclose" class="btn btn-danger btn-lg" ><i class="glyphicon glyphicon-remove"></i></asp:LinkButton>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="panel-body form-horizontal">
            <div class="panel-body">
                <asp:UpdatePanel runat="server" ID="updResult">
                    <ContentTemplate>
                        <%--<uc1:PagingControl ID="PagingControl1" runat="server" />--%>
                        <asp:GridView
                            ID="gvMember" runat="server"
                            AutoGenerateColumns="false"
                            AllowSorting="false"
                            OnRowDataBound="gvMember_RowDataBound"
                            OnSorting="gvMember_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            HeaderStyle-BackColor="Orange"
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

                                        <asp:Label runat="server" ID="lalScanup" Text='<%# Eval("datetime_up") %>' Height="20px" ForeColor="Black" Visible="true"></asp:Label>
                                        <%--  <asp:Label runat="server" ID="lalnoScanup" Text="ยังไม่ได้สแกน" Width="150px" Height="20px" ForeColor="White" Visible="true"></asp:Label>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="วันที่/เวลาลง" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lalScandown" Text='<%# Eval("datetime_down") %>' Height="20px" ForeColor="Black" Visible="true"></asp:Label>
                                        <%--<asp:Label runat="server" ID="lalnoScandown" Text="ยังไม่ได้สแกน" Width="150px" Height="20px" ForeColor="White" Visible="true"></asp:Label>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-Width="75" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="bthScan" runat="server" meta:resourcekey="bthScantest" CssClass="btn btn-success btn-xs" ><i class="fa fa-search"></i></asp:LinkButton>
                                        <%--<asp:LinkButton runat="server" ID="btnOK" CssClass="btn btn-primary"> OK</asp:LinkButton>
                                        <asp:CheckBox runat="server" ID="chkSelect" Enabled="false" Checked="false" />--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>

               
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="form-group form-horizontal col-md-9">
        </div>
        <div class="form-group form-horizontal col-md-3">
            <asp:LinkButton runat="server" ID="bthsave" class="btn btn-success" Width="150" Height="40" OnClick="bthsave_Click"><i class="glyphicon glyphicon-ok"></i>ยืนยัน</asp:LinkButton>
        </div>
    </div>
</asp:Content>
