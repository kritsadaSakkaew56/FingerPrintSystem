<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="HomegoSchool.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.HomegoSchool" %>

<%@ MasterType VirtualPath="~/Master/Driver.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="scMain" runat="server"></asp:ScriptManager>
    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>การเดินทางจาก   บ้าน  >>>  โรงเรียน </h4>
            </header>
        </section>
    </div>
    <div class="row">
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
    </div>
    <br />
    <div class="row">
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
    </div>
    <hr />
    <div class="row">
        <div class="panel-body form-horizontal">
            <div class="panel-body">
                <asp:UpdatePanel runat="server" ID="updResult">
                    <ContentTemplate>
                        <uc1:PagingControl ID="PagingControl1" runat="server" />
                        <asp:GridView
                            ID="gvMember" runat="server"
                            HeaderStyle-BackColor="#3AC0F2"
                            AutoGenerateColumns="false"
                            AllowSorting="true"
                            OnRowDataBound="gvMember_RowDataBound"
                            OnSorting="gvMember_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            EmptyDataRowStyle-HorizontalAlign="Center"
                            CssClass="table table-bordered table-striped table-hover">

                            <Columns>

                                <%--   <asp:BoundField HeaderText="#" DataField="Count" SortExpression="Count" ItemStyle-HorizontalAlign="Left"/>--%>
                                <asp:ImageField DataImageUrlField="id"
                                    DataImageUrlFormatString="HomegoSchool.aspx?ImageID={0}"
                                    ControlStyle-Width="100" ControlStyle-Height="100"
                                    HeaderText="รูปประจำตัว" />
                                <asp:BoundField HeaderText="เลขประจำตัว" DataField="ID" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="125" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="FullName"  ItemStyle-HorizontalAlign="Left" ItemStyle-Width="300" />

                                <asp:TemplateField HeaderText="วันที่/เวลาขึ้น" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lalScanup" Text='<%# Eval("datetime_up") %>' Width="150px" Height="20px" ForeColor="White" Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="วันที่/เวลาลง" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lalScandown" Text='<%# Eval("datetime_down") %>' Width="150px" Height="20px" ForeColor="White" Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <%-- <asp:TemplateField HeaderText="ยืนยัน" ItemStyle-Width="75" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="btnOK" CssClass="btn btn-primary"> OK</asp:LinkButton>
                                        <asp:CheckBox runat="server" ID="chkSelect" Enabled="false" Checked="false" />
                                    </ItemTemplate>
                                </asp:TemplateField>--%>

                                <%--<asp:BoundField HeaderText="วันที่/เวลา" DataField="DateTime" SortExpression="DateTime" ItemStyle-HorizontalAlign="Left" />--%>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <%--<asp:LinkButton runat="server" ID="bthScan"  class="btn btn-danger"  Width="150" Height="40" OnClick="bthScan_Click">Scan</asp:LinkButton>
                         <asp:LinkButton runat="server" ID="bthreset" class="btn btn-danger"  Width="150" Height="40" OnClick="bthreset_Click">reset</asp:LinkButton>--%>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="form-group form-horizontal col-md-9">
        </div>
        <div class="form-group form-horizontal col-md-3">
            <asp:LinkButton runat="server" ID="bthsave" class="btn btn-warning" Width="150" Height="40" OnClick="bthsave_Click">บันทึก</asp:LinkButton>
        </div>
    </div>


    <script src="../js/app.js"></script>

</asp:Content>
