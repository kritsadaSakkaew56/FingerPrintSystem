<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Active.aspx.cs" Inherits="FingerPrintSystem.WebUI.Admin.Active" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="scMain" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updResult">
        <ContentTemplate>
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <h4>User(ข้อมูลของเด็กนักเรียน)</h4>
                </header>
            </section>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">

                        <asp:GridView
                            ID="gvuser" runat="server"
                            DataKeyNames="user_id"
                            AutoGenerateColumns="false"
                            AllowSorting="false"
                            OnRowDataBound="gvuser_RowDataBound"
                            OnSorting="gvuser_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            EmptyDataRowStyle-HorizontalAlign="Center"
                            HeaderStyle-BackColor="#FFECCD"
                            CssClass="table table-bordered table-striped table-hover"
                            Style="max-width: 100%">
                            <Columns>
                                <asp:BoundField HeaderText="Username" DataField="Username" SortExpression="Username" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />
                                <asp:BoundField HeaderText="ผู้ปกครอง" DataField="fullnameparent" SortExpression="fullnameparent" />
                                <asp:BoundField HeaderText="เบอร์โทรศัพท์" DataField="tel" SortExpression="tel" />
                                <asp:TemplateField HeaderText="การใช้งานระบบ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkActive" runat="server" Enabled="false"></asp:CheckBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="การใช้งานสแกน" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkActivescan" runat="server" Enabled="false"></asp:CheckBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="bthactive" runat="server" meta:resourcekey="bthactive" CssClass="btn btn-primary btn-xs"><i class="fa fa fa-pencil"></i></asp:LinkButton>


                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <uc1:pagingcontrol id="PagingControl1" runat="server" />
                    </div>
                </div>
            </div>
            <hr />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
