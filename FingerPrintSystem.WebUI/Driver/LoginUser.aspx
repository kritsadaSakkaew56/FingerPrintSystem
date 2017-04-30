<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.LoginUser" %>

<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-reset.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="scMain" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updResult">
        <ContentTemplate>
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <h4>Fingerprintscan (ลงทะเบีนนสแกนลายนิ้วมือ)</h4>
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
                            OnRowCommand="gvuser_RowCommand"
                            OnSorting="gvuser_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            EmptyDataRowStyle-HorizontalAlign="Center"
                            HeaderStyle-BackColor="#FFECCD"
                            CssClass="table table-bordered table-striped table-hover"
                            Style="max-width: 100%">
                            <Columns>
                                <asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />
                                <asp:BoundField HeaderText="โรงเรียน" DataField="detailaddress" SortExpression="detailaddress" />
                                <asp:TemplateField HeaderText="การใช้งานสแกน" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkActive" runat="server" Enabled="false"></asp:CheckBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ลงทะเบียน" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="bthscan" runat="server" Width="75%" Height="30" meta:resourcekey="bthscan" CssClass="btn btn-primary btn-xs" CommandName="memberuserid" CommandArgument='<%#Eval("member_id")%>'><i class="glyphicon glyphicon-floppy-disk"></i>Add</asp:LinkButton>
                                         <%-- <asp:LinkButton ID="bthdetial" runat="server"  meta:resourcekey="bthScandetail" CssClass="btn btn-success btn-xs" ><i class="fa fa-search"></i></asp:LinkButton>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <uc1:PagingControl ID="PagingControl1" runat="server" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <%-- <div style="text-align: center;">
        <img src="../Images/logo.png" style="margin-top: 100px; opacity: 0.7;" width="150" height="150" />
    </div>
    <br />
   <div style="text-align: center;">
         <div class="row">

        <div class="form-group form-horizontal col-md-4">
        </div>
        <div class="form-group form-horizontal col-md-8">
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtusername" CssClass="form-control input-sm" placeholder="ผู้ใช้งาน" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control input-sm" placeholder="รหัสผ่าน" TextMode="Password"  Height="40" Font-Size="Larger" ></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="txtusername_password" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="bthlogin" runat="server" class="btn btn-warning" Text="LOGIN" Width="200" Height="40" OnClick="bthlogin_Click" />
                </div>
            </div>
        </div>

    </div>

    </div>--%>
</asp:Content>
