<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="FingerPrintSystem.WebUI.Member.Member" %>

<%@ MasterType VirtualPath="~/Master/Main.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="scMain" runat="server"></asp:ScriptManager>

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
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <h4>Member</h4>
                </header>
            </section>
            <div class="col-lg-1">
            </div>
            <div class="col-lg-9">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">
                        <asp:UpdatePanel runat="server" ID="updResult">
                            <ContentTemplate>
                                <uc1:PagingControl ID="PagingControl1" runat="server" />
                                <asp:GridView
                                    ID="gvMember" runat="server"
                                    AutoGenerateColumns="false"
                                    AllowSorting="true"
                                    OnRowDataBound="gvMember_RowDataBound"
                                    OnSorting="gvMember_Sorting"
                                    EmptyDataText="------ ไม่พบข้อมูล ------"
                                    EmptyDataRowStyle-HorizontalAlign="Center"
                                    CssClass="table table-bordered table-striped table-hover">
                                    <Columns>
                                       
                                        <%--   <asp:BoundField HeaderText="#" DataField="Count" SortExpression="Count" ItemStyle-HorizontalAlign="Left"/>--%>
                                        <asp:BoundField HeaderText="เลขประจำตัว" DataField="ID" SortExpression="ID" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="175" />
                                        <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="FullName" SortExpression="FullName" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="400"/>
                                        <asp:TemplateField HeaderText="วันที่/เวลา" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center" >
                                            <ItemTemplate>
                                                  <asp:Label runat="server" ID="lalScan" Text='<%# Eval("DateTimeScan") %>' Width="150px" Height="20px" ForeColor="White" Visible="false" ></asp:Label>
                                                  <asp:Label runat="server" ID="lalnoScan" Text="ยังไม่ได้สแกน" Width="150px" Height="20px" ForeColor="White" Visible="true"  ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                      <%--<asp:BoundField HeaderText="วันที่/เวลา" DataField="DateTime" SortExpression="DateTime" ItemStyle-HorizontalAlign="Left" />--%>
                                        <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-Width="200">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnEdit" runat="server" meta:resourcekey="btnEdit" CssClass="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></asp:LinkButton>
                                                <asp:LinkButton ID="btnDelete" runat="server" meta:resourcekey="btnDelete" CssClass="btn btn-danger btn-xs" CommandName="Delete"><i class="fa fa-trash-o "></i></asp:LinkButton>
                                                <asp:LinkButton ID="bthScantest" runat="server" meta:resourcekey="bthScantest" CssClass="btn btn-success btn-xs" OnClick="bthScantest_Click"><i class="fa fa-search"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
        </div>
    </div>
</asp:Content>
