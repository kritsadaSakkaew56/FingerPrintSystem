<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="ScanListaspx.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.ScanListaspx" %>

<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>
<%@ Register Src="~/UserControls/DatePickerControl.ascx" TagPrefix="uc1" TagName="DatePickerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="scMain" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updResult">
        <ContentTemplate>
            <%--  <div class="row">
        <div class="col-lg-12">
            <ul class="breadcrumb">
                <li><a href="javascript:;"><i class="fa fa-cogs"></i>
                    <asp:Literal ID="lblMenu" runat="server"></asp:Literal></a></li>

                <li class="active">
                    <asp:Literal ID="lblSubMenu" runat="server"></asp:Literal>
                </li>
            </ul>
        </div>
    </div>--%>
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <h4>ประวัติการสแกนลายนิ้วมือของเด็กนักเรียนในแต่ละวัน</h4>
                </header>
            </section>

            <div class="row">
                <div class=" form-group form-horizontal col-lg-12">
                    <uc1:DatePickerControl runat="server" ID="DatePickerControl" cssclass="form-control input-sm" />

                </div>
                <div class="form-group form-horizontal col-lg-12">
                    <label class="control-label">เลือกเที่ยวรถรับส่ง :</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="40%" Height="35" AutoPostBack="false">
                        <asp:ListItem Value="0" Text="เลือกการสแกนเที่ยวรถรับส่ง"></asp:ListItem>
                        <asp:ListItem Value="1" Text="การเดินทางจาก บ้าน >>> โรงเรียน"></asp:ListItem>
                        <asp:ListItem Value="2" Text="การเดินทางจาก โรงเรียน >>> บ้าน"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:LinkButton runat="server" ID="btnSearch" CssClass="btn btn-primary" OnClick="btnSearch_Click"><i class="fa fa-search"></i> ค้นหา</asp:LinkButton>
                </div>

            </div>

            <hr />

            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">

                        <asp:GridView
                            ID="gvMember" runat="server"
                            Font-Size="Medium"
                            DataKeyNames="user_result_id"
                            AutoGenerateColumns="false"
                            AllowSorting="false"
                            OnRowDataBound="gvMember_RowDataBound"
                            OnSorting="gvMember_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            EmptyDataRowStyle-HorizontalAlign="Center"
                            HeaderStyle-BackColor="#FFECCD"
                            CssClass="table table-bordered table-striped table-hover"
                            Style="max-width: 100%">

                            <Columns>

                               <%-- <asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />--%>

                                <asp:TemplateField HeaderText="วันที่/เวลาขึ้น" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>

                                        <asp:Label runat="server" ID="lalScanup" Text='<%# Eval("datetime_up") %>' Height="20px"></asp:Label>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="วันที่/เวลาลง" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lalScandown" Text='<%# Eval("datetime_down") %>' Height="20px"></asp:Label>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="วันที่บันทึก" DataField="datetime" SortExpression="datetime" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />

                            </Columns>
                        </asp:GridView>
                        <uc1:PagingControl ID="PagingControl1" runat="server" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
