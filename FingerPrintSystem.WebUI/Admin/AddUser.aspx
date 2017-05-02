<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="FingerPrintSystem.WebUI.Admin.AddUser" %>

<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery.validate.min.js"></script>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#form1").validate({

                rules: {
                    <%=txtusername.UniqueID %>: {
                    required: true,
                    minlength: 6,
                    rangelength: [6, 10]
                },

                    <%=txtpassword.UniqueID %>: {
                        required: true,
                        minlength: 5,
                        equalTo: "#<%=txtConfirmPassword.ClientID %>"
                    },
                    <%=txtusername.UniqueID %>: {
                        required: true
                    },
                    <%=txtreid.UniqueID %>: {
                        required: true
                    },
                    <%=txtrefullname.UniqueID %>: {
                        required: true
                    },
                    <%=txtretel.UniqueID %>: {
                        required: true,
                        digits: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    <%=txtreemail.UniqueID %>: {
                        required: true,
                        email: true
                    }

                }, messages: {
                    <%=txtusername.UniqueID %>: {
                    required: "Please enter username",
                    minlength: "A minimum of {0} digits are required.",
                    rangelength: "Password should be between {0} and {1} characters long"

                },
                    <%=txtpassword.UniqueID %>: {
                        required: "Please enter password",
                        minlength: "Please enter password at least 5 characters.",
                        equalTo: "Enter same password."
                    },
                    <%=txtreid.UniqueID %>: {
                        required: "Please enter id"
                    },
                    <%=txtrefullname.UniqueID %>: {
                        required: "Please enter fullname"
                    },
                    <%=txtretel.UniqueID %>: {
                        required: "Please enter mobile no",
                        digits: "Only digits accepted",
                        minlength: "A minimum of {0} digits are required.",
                        maxlength: "A maximum of {0} digits are required."
                    },
                    <%=txtreemail.UniqueID %>: {
                        required: "Please enter email address"
                    }
                }
            });
        });
    </script>
    <style type="text/css">
        label.error {
            color: red;
            display: inline-flex;
        }
    </style>
    <style type="text/css">
        .BigCheckBox input {
            width: 30px;
            height: 30px;
        }
    </style>
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
                                <%--<asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />--%>
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />
                                <%--<asp:BoundField HeaderText="โรงเรียน" DataField="detailaddress" SortExpression="detailaddress" />--%>
                                <asp:BoundField HeaderText="ผู้ปกครอง" DataField="fullnameparent" SortExpression="fullnameparent" />
                                <asp:BoundField HeaderText="เบอร์โทรศัพท์" DataField="tel" SortExpression="tel" />
                                <%--<asp:BoundField HeaderText="E-mail" DataField="email" SortExpression="email" />--%>
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
                                        <asp:LinkButton ID="btnEdit" runat="server" meta:resourcekey="btnEdit" CssClass="btn btn-primary btn-xs" OnClick="btnEdit_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        <asp:LinkButton ID="bthgooglemap" runat="server" meta:resourcekey="btnEdit" CssClass="btn btn-info btn-xs"><i class="fa fa-google-plus"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnDeleteuser" runat="server" meta:resourcekey="btnDeleteuser" CssClass="btn btn-danger btn-xs" OnClick="btnDeleteuser_Click"><i class="fa fa-trash-o "></i></asp:LinkButton>

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
                    <h4>School Address (ที่อยู่โรงเรียน)</h4>
                </header>
            </section>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">
                        <asp:GridView
                            ID="gvschooladdress" runat="server"
                            DataKeyNames="school_id"
                            AutoGenerateColumns="false"
                            AllowSorting="false"
                            OnRowDataBound="gvschooladdress_RowDataBound"
                            OnSorting="gvschooladdress_Sorting"
                            EmptyDataText="------ ไม่พบข้อมูล ------"
                            EmptyDataRowStyle-HorizontalAlign="Center"
                            HeaderStyle-BackColor="#FFECCD"
                            CssClass="table table-bordered table-striped table-hover"
                            Style="max-width: 100%">
                            <Columns>
                                <asp:BoundField HeaderText="ชื่อโรงเรียน" DataField="detailaddress" SortExpression="detailaddress" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="ที่อยู่" DataField="address" SortExpression="address" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEditschool" runat="server" meta:resourcekey="btnEditschool" CssClass="btn btn-info btn-xs"><i class="fa fa fa-google-plus"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnDeletschool" runat="server" meta:resourcekey="btnDeletschool" CssClass="btn btn-danger btn-xs" OnClick="btnDeletschool_Click"><i class="fa fa-trash-o "></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <uc1:PagingControl ID="PagingControl2" runat="server" />
                        <asp:LinkButton runat="server" ID="bthgoogledriver" CssClass="btn btn-primary" Width="150" Height="40" OnClick="bthgoogledriver_Click"><i class="fa fa-plus-circle "></i>เพิ่มที่อยู่โรงเรียน</asp:LinkButton>
                    </div>
                </div>
            </div>
            <hr />
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <h4>Driver (ข้อมูลคนขับรถรับส่ง)</h4>
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
                                <asp:BoundField HeaderText="E-mail" DataField="email" SortExpression="email" />
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEditdriver" runat="server" Width="25%" Height="20" meta:resourcekey="btnEdit" CssClass="btn btn-primary btn-xs" OnClick="btnEditdriver_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnDeletedriver" runat="server" Width="25%" Height="20" meta:resourcekey="btnDelete" CssClass="btn btn-danger btn-xs" OnClick="btnDeletedriver_Click"><i class="fa fa-trash-o "></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <uc1:PagingControl ID="PagingControl3" runat="server" />
                        <asp:LinkButton runat="server" ID="btnadddriver" CssClass="btn btn-primary" Width="150" Height="40" OnClick="btnadddriver_Click"><i class="fa fa-plus-circle "></i>เพิ่มคนขับรถ</asp:LinkButton>
                        <%--                        <asp:LinkButton runat="server" ID="bthgoogledriver" CssClass="btn btn-primary" Width="150" Height="40" OnClick="bthgoogledriver_Click"><i class="fa fa-plus-circle "></i>เพิ่มที่อยู่โรงเรียน</asp:LinkButton>--%>
                    </div>
                </div>
            </div>
            <div class="form-group form-horizontal col-md-12">

                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtusername" MaxLength="30" CssClass="form-control input-sm" placeholder="ผู้ใช้งาน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="labusername" Font-Bold="true" ForeColor="Red" Font-Size="Medium"></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row">

                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control input-sm" placeholder="รหัสผ่าน" TextMode="Password" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control input-sm" TextMode="Password" placeholder="ยืนยันรหัสผ่าน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class=" col-md-6">
                        <asp:TextBox runat="server" ID="txtreid" CssClass="form-control input-sm" placeholder="เลขที่" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtrefullname" CssClass="form-control input-sm" placeholder="ชื่อ-นามสกุล" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtretel" CssClass="form-control input-sm" placeholder="เบอร์โทรศัพท์ติดต่อฉุกเฉิน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtreemail" CssClass="form-control input-sm" placeholder="E-mail" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                    </div>
                </div>

                <br />

                <br />
                <asp:Button ID="bthRegistersave" runat="server" Text="Save" Class="btn btn-warning" OnClick="bthRegistersave_Click" Width="250" Height="40" />
            </div>


        </ContentTemplate>

    </asp:UpdatePanel>
    <div class="modal fade" id="myModaledituser" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">แก้ไขข้อมูลเด็กนักเรียน</h4>
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
                            <br />
                          
                            <p>
                                <asp:Label runat="server" Text="ชื่อผู้ปกครอง:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="เบอร์โทรศัพท์:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="E-Mail:" Font-Size="Larger"></asp:Label>
                            </p>
                            <br />
                            <br />
                            <p>
                                <asp:Label runat="server" Text="การใช้งานระบบ:" Font-Size="Larger"></asp:Label>
                            </p>
                            <br />
                            <p>
                                <asp:Label runat="server" Text="การใช้งานสแกน:" Font-Size="Larger"></asp:Label>
                            </p>
                        </div>

                        <div class="col-sm-8">

                            <p>
                                <asp:TextBox ID="txtid" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtfullname" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtshcool" runat="server" Font-Size="Small" Enabled="false"></asp:TextBox>
                                <asp:DropDownList ID="ddlschool" runat="server" Font-Size="Small" Width="170px" AutoPostBack="true" OnSelectedIndexChanged="ddlschool_SelectedIndexChanged"></asp:DropDownList>

                            </p>
                      
                            <br />
                            <p>
                                <asp:TextBox ID="txtfullnameparent" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txttel" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtemail" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>
                            <br />
                            <p>
                                <asp:CheckBox ID="chkactive" runat="server" Font-Size="Small" CssClass="BigCheckBox"></asp:CheckBox>
                            </p>
                            <br />

                            <p>
                                <asp:CheckBox ID="chkactivescan" runat="server" Font-Size="Small" CssClass="BigCheckBox"></asp:CheckBox>
                                <asp:Image runat="server" ID="imgcheckscan" Visible="false" />
                                <asp:Label runat="server" ID="labcheckscan" Font-Size="Small" Text="รอลงทะเบียนสแกน" Visible="false"></asp:Label>

                            </p>
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
    <div class="modal fade" id="myModaleditdriver" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ข้อมูลคนขับรถ</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-4">

                            <p>
                                <asp:Label runat="server" Text="เลขประจำตัว:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="ชื่อ-นามสกุล:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="เบอร์โทรศัพท์:" Font-Size="Larger"></asp:Label>
                            </p>

                            <p>
                                <asp:Label runat="server" Text="E-Mail:" Font-Size="Larger"></asp:Label>
                        </div>
                        <div class="col-sm-4">

                            <p>
                                <asp:TextBox ID="txtiddriver" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtfullnamedriver" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtteldriver" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                            <p>
                                <asp:TextBox ID="txtemaildriver" runat="server" Font-Size="Small"></asp:TextBox>
                            </p>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthoksavedriver" CssClass="btn btn-info" OnClick="bthoksavedriver_Click"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="bthclosesavedriver" CssClass="btn btn-info"> Close</asp:LinkButton>

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
    <div class="modal fade" id="myModaldeletedriver" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ลบข้อมูล</h4>
                </div>
                <div class="modal-body">
                    <h5>ต้องการที่จะลบข้อมูลคนขับรถหรือไม่</h5>
                    <div class="modal-footer">
                        <asp:LinkButton runat="server" ID="bthdeleteokdriver" CssClass="btn btn-info" OnClick="bthdeleteokdriver_Click"> OK</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="bthdeleteclosedriver" CssClass="btn btn-info"> Close</asp:LinkButton>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModaldeleteschool" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ลบข้อมูล</h4>
                </div>
                <div class="modal-body">
                    <h5>ต้องการที่จะลบข้อมูลโรงเรียนหรือไม่</h5>
                    <div class="modal-footer">
                        <asp:LinkButton runat="server" ID="bthdeletokeschool" CssClass="btn btn-info" OnClick="bthdeletokeschool_Click"> OK</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="bthdeletcloseschool" CssClass="btn btn-info"> Close</asp:LinkButton>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModalsuccess" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-9">
                        <p>
                            <asp:Image ID="imgsuccess" ImageUrl="~/Images/success.png" runat="server" Width="200" Height="200" />

                        </p>
                        <p>
                            <asp:Label ID="labsuccess" runat="server" Font-Size="X-Large" Text="บันทึกเรียบร้อยแล้ว"></asp:Label>

                        </p>
                    </div>

                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
