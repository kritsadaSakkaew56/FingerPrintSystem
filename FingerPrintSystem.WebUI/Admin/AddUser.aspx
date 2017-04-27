<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="FingerPrintSystem.WebUI.Admin.AddUser" %>

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
                    <h4>User</h4>
                </header>
            </section>

            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">

                        <asp:GridView
                            ID="gvuser" runat="server"
                            DataKeyNames="scan_id"
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

                                <asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />
                                <asp:BoundField HeaderText="โรงเรียน" DataField="school" SortExpression="school" />
                                <asp:BoundField HeaderText="ผู้ปกครอง" DataField="fullnameparent" SortExpression="fullnameparent" />
                                <asp:BoundField HeaderText="เบอร์โทรศัพท์" DataField="tel" SortExpression="tel" />
                                <%--  <asp:TemplateField HeaderText="การใช้งาน" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                         <asp:checkbox ID="chkactiveuser" runat="server" Enabled="false"></asp:checkbox>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEdit" runat="server" Width="25%" Height="20" meta:resourcekey="btnEdit" CssClass="btn btn-primary btn-xs" OnClick="btnEdit_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnDeleteuser" runat="server" Width="25%" Height="20" meta:resourcekey="btnDeleteuser" CssClass="btn btn-danger btn-xs"  OnClick="btnDeleteuser_Click"><i class="fa fa-trash-o "></i></asp:LinkButton>

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <uc1:PagingControl ID="PagingControl1" runat="server" />
                    </div>
                </div>
            </div>
            <hr />
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <h4>Driver</h4>
                </header>
            </section>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">
                        <asp:GridView
                            ID="gvdriver" runat="server"
                            DataKeyNames="driver_id"
                            AutoGenerateColumns="false"
                            AllowSorting="false"
                            OnRowDataBound="gvdriver_RowDataBound"
                            OnSorting="gvdriver_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            EmptyDataRowStyle-HorizontalAlign="Center"
                            HeaderStyle-BackColor="#FFECCD"
                            CssClass="table table-bordered table-striped table-hover"
                            Style="max-width: 100%">
                            <Columns>
                                <asp:BoundField HeaderText="Username" DataField="Username" SortExpression="Username" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />
                                <asp:BoundField HeaderText="เบอร์โทรศัพท์" DataField="tel" SortExpression="tel" />
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEditdriver" runat="server" Width="25%" Height="20" meta:resourcekey="btnEdit" CssClass="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnDeletedriver" runat="server" Width="25%" Height="20" meta:resourcekey="btnDelete" CssClass="btn btn-danger btn-xs" CommandName="Delete"><i class="fa fa-trash-o "></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <uc1:PagingControl ID="PagingControl2" runat="server" />
                        <asp:LinkButton runat="server" ID="lbtnAddItem" CssClass="btn btn-primary" Width="150" Height="40"><i class="fa fa-plus-circle "></i>เพิ่มคนขับรถ</asp:LinkButton>
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="modal fade" id="myModaledit" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ข้อมูลเด็กนักเรียน</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-4">

                            <p>
                                <asp:Label runat="server" Text="เลขที่:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="ชื่อ-นามสกุล:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="โรงเรียน:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="ชื่อผู้ปกครอง:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="เบอร์โทรศัพท์:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="E-Mail:" Font-Size="Larger"></asp:Label>
                            </p>
                            <%--<p>
                                        <asp:Label runat="server" Text="การใช้งาน" Font-Size="Larger"></asp:Label>
                                    </p>--%>
                        </div>
                        <div class="col-sm-4">

                            <p>
                                <asp:TextBox ID="txtid" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtfullname" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtshcool" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtfullnameparent" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txttel" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtemail" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>
                            <%-- <p>
                                        <asp:checkbox ID="chkactive" runat="server" Font-Size="Small"></asp:checkbox>
                                    </p>--%>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthOKSave" CssClass="btn btn-info" OnClick="bthOKSave_Click"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="bthclose" CssClass="btn btn-info"> Close</asp:LinkButton>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModaldelete" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ลบข้อมูล</h4>
                </div>
                <div class="modal-body">
                    <h5>ต้องการที่จะลบข้อมูลผู้ใช้งานหรือไม่</h5>
                    <div class="modal-footer">
                        <asp:LinkButton runat="server" ID="bthdeleteok" CssClass="btn btn-info" OnClick="bthdeleteok_Click"> OK</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="bthcloseok" CssClass="btn btn-info"> Close</asp:LinkButton>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
