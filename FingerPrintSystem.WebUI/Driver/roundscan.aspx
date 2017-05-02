<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="roundscan.aspx.cs" Inherits="FingerPrintSystem.WebUI.Driver.roundscan" %>

<%@ MasterType VirtualPath="~/Master/Driver.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/circle-buttons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
    <%-- <br />--%>
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

    <asp:UpdatePanel runat="server" ID="UpdatePanel_DropDownList1" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <asp:Label runat="server" ID="labround" Font-Size="Large"></asp:Label>
                    <div class="row">
                        <div class="col-sm-12">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="40%" Height="35" AutoPostBack="false">
                                <asp:ListItem Text="เลือกการสแกนเที่ยวรถรับส่ง และกดปุ่ม 'ตรวจสอบ'"></asp:ListItem>
                                <asp:ListItem Value="1" Text="การเดินทางจาก บ้าน >>> โรงเรียน"></asp:ListItem>
                                <asp:ListItem Value="2" Text="การเดินทางจาก โรงเรียน >>> บ้าน"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinkButton runat="server" ID="bthcheck" class="btn btn-primary btn-md" OnClick="bthcheck_Click"><i class="glyphicon glyphicon-ok-sign"></i>ตรวจสอบ</asp:LinkButton>
                            <asp:Image ID="imgchk" runat="server" />
                            <asp:Label runat="server" ID="labchk" Font-Size="Medium"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel runat="server" ID="UpdatePanel_DropDownList2" UpdateMode="Conditional">
        <ContentTemplate>
            <section class="panel">
                <header class="panel-heading" style="background-color: #F5DEB3">
                    <asp:Label ID="labpanel" runat="server" Font-Size="Large"></asp:Label>
                </header>
            </section>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <asp:Label runat="server" Text="การเลือกสแกนลายนิ้วมือ:" Font-Size="Large" ID="labselectscan" Visible="false"></asp:Label>
                    <div class="row">

                        <div class="col-sm-6 ">

                            <%--<asp:DropDownList ID="DropDownList2" runat="server" Width="60%" Height="35" AutoPostBack="false" Visible="false"></asp:DropDownList>--%>
                            <asp:Button runat="server" ID="bthscanup" class="btn btn-circle-lg btn-success" Text="Scanup" OnClick="bthscanup_Click" Font-Size="Medium" Visible="false" />
                            <asp:Button runat="server" ID="bthscandown" class="btn btn-circle-lg btn-success" Text="Scandown" OnClick="bthscandown_Click" Font-Size="Medium" Visible="false" />
                            <asp:LinkButton runat="server" ID="bthclose" class="btn btn-circle-lg btn-info" Font-Size="Medium" OnClick="bthclose_Click" Visible="false"><i class="glyphicon glyphicon-remove"></i>เริ่มใหม่</asp:LinkButton>
                            <asp:Button runat="server" ID="bthreset" class="btn btn-circle-lg btn-danger" Text="Reset" OnClick="bthreset_Click" Font-Size="Medium" Visible="false" />

                            <%--<asp:Button runat="server" ID="bthstop" class="btn btn-circle-lg btn-danger" Text="Stopscan" OnClick="bthstop_Click" Font-Size="Medium" Visible="false" />--%>
                            <%--<asp:LinkButton runat="server" ID="bthSaveFinish" class="btn btn-primary btn-md" OnClick="bthSaveFinish_Click" Visible="false"><i class="glyphicon glyphicon-ok-sign"></i>ตกลง</asp:LinkButton>--%>
                        </div>
                        <div class="col-sm-6">
                            <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel_DropDownList2">
                                <ProgressTemplate>
                                    <asp:Image ID="imgProgress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" />
                                    Please Wait...
                                </ProgressTemplate>
                            </asp:UpdateProgress>

                            <%--                            <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel_DropDownList2">
                                <ProgressTemplate>--%>
                            <%--  <asp:Image ID="imgProgress" ImageUrl="~/Images/ajax_loader_gray_48.gif" runat="server" Width="25" Height="25" />
                                Please Wait...--%>
                            <%--    <asp:Image ID="imgsuccess" ImageUrl="~/Images/success.png" runat="server" Width="30" Height="30" />
                                    <asp:Label ID="labsuccess" runat="server" Text="ทำการเลือกสำเร็จ" Font-Size="Medium"></asp:Label>
                                </ProgressTemplate>
                            </asp:UpdateProgress>--%>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <hr />
    <%-- <asp:UpdatePanel runat="server" ID="UpdatePanelimgsuccess" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="panel-body form-horizontal">
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>--%>
    <asp:Timer ID="UpdateTimer" runat="server" Interval="1000" OnTick="UpdateTimer_Tick"></asp:Timer>
    <asp:UpdatePanel runat="server" ID="UpdatePanel_GridView" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="panel-body form-horizontal">
                    <div class="panel-body">
                        <asp:Image ID="imgsuccess" ImageUrl="~/Images/success.png" runat="server" Width="30" Height="30" Visible="false" />
                        <asp:Label ID="labsuccess" runat="server" Font-Size="Medium" Visible="false"></asp:Label>
                        <%--<uc1:PagingControl ID="PagingControl1" runat="server" />--%>
                        <asp:GridView
                            DataKeyNames="member_id,fullname_driver,roundscan"
                            ID="gvMember" runat="server"
                            OnRowCommand="gvMember_RowCommand"
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

                                <%--<asp:BoundField HeaderText="#" DataField="Count" SortExpression="Count" ItemStyle-HorizontalAlign="Left"/>--%>
                                <%--<asp:ImageField DataImageUrlField="ID"
                                    DataImageUrlFormatString="HomegoSchool.aspx?ImageID={0}"
                                    ControlStyle-Width="100" ControlStyle-Height="100"
                                    HeaderText="รูปประจำตัว" />--%>

                                <%--<asp:BoundField HeaderText="เลขประจำตัว" DataField="id" SortExpression="id" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />--%>
                                <asp:BoundField HeaderText="ชื่อ-นามสกุล" DataField="fullName" SortExpression="fullName" />

                                <asp:TemplateField HeaderText="วันที่/เวลาขึ้น" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>

                                        <asp:Label runat="server" ID="lalScanup" Text='<%# Eval("datetime_up") %>' Height="20px" ForeColor="White" Font-Bold="true"></asp:Label>
                                     
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="วันที่/เวลาลง" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lalScandown" Text='<%# Eval("datetime_down") %>' Height="20px" ForeColor="White" Font-Bold="true"></asp:Label>
                                     
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ดำเนินการ" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        
                                            <asp:LinkButton ID="bthdetial" runat="server" Width="25%" Height="20" meta:resourcekey="bthScandetail" CssClass="btn btn-success btn-xs"
                                            CommandName="memberuserid"
                                            CommandArgument='<%#Eval("member_id")%>'
                                            OnClick="bthdetial_Click"><i class="fa fa-search"></i></asp:LinkButton>
                                        <asp:LinkButton ID="bthreset" runat="server" Width="25%" Height="20" meta:resourcekey="bthreset" CssClass="btn btn-info btn-xs" OnClick="btnreset_Click"><i class="fa   fa-mail-reply" "></i></asp:LinkButton>
                                        <asp:LinkButton ID="bthnote" runat="server" Width="25%" Height="20" meta:resourcekey="bthnote" CssClass="btn btn-warning btn-xs" OnClick="bthnote_Click"><i class="fa  fa-star"></i></asp:LinkButton>
                                    
                                       
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group form-horizontal col-md-9">
                </div>
                <div class="form-group form-horizontal col-md-3">
                    <asp:LinkButton runat="server" ID="bthsave" class="btn btn-success"
                        Width="150" Height="40"
                        OnClick="bthsave_Click"
                        Visible="false"><i class="glyphicon glyphicon-floppy-save"></i>บันทึก

                    </asp:LinkButton>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="UpdateTimer" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <hr />

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
    <div class="modal fade" id="myModalsave" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">บันทึกข้อมูลการสแกนลายนิ้วมือเด็กนักเรียน</h4>
                </div>
                <div class="modal-body">
                    <h5>ต้องการบันทึกข้อมูลการสแกนลายนิ้วมือเด็กนักเรียนหรือไม่</h5>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthsavesuccess" CssClass="btn btn-info" OnClick="bthsavesuccess_Click"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="bthclosesuccess" CssClass="btn btn-info"> Close</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
        .BigCheckBox input {
            width: 20px;
            height: 20px;
        }
    </style>
    <div class="modal fade" id="myModalnote" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">หมายเหตุ</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:TextBox runat="server" ID="txtcomment" CssClass="form-control input-sm" TextMode="MultiLine" Width="575" Height="75" Font-Size="Larger"></asp:TextBox>
                        </div>
                    </div>

                    <hr />
                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-10">
                            <h4>เลือกเพิ่มหมายเหตุขึ้น-ลงรถรับส่งเด็กนักเรียน</h4>
                        </div>

                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-10">
                            <p>
                                <asp:CheckBox runat="server" ID="chkup" CssClass="BigCheckBox" />
                                ขึ้นรถรับส่ง
                     
                            </p>
                            <p>
                                <asp:CheckBox runat="server" ID="chkdown" CssClass="BigCheckBox" />
                                ลงรถรับส่ง

                            </p>



                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthnoteok" CssClass="btn btn-info" OnClick="bthnoteok_Click" Width="100px"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="bthnoteclose" CssClass="btn btn-info" Width="100px"> Close</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModalreset" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Reset</h4>
                </div>
                <div class="modal-body">

                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-10">
                            <h4>เลือกเริ่มต้นการสแกนใหม่</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-10">
                            <p>
                                <asp:CheckBox runat="server" ID="chkupreset" CssClass="BigCheckBox" />
                                ขึ้นรถรับส่ง
                     
                            </p>
                            <p>
                                <asp:CheckBox runat="server" ID="chkdownreset" CssClass="BigCheckBox" />
                                ลงรถรับส่ง

                            </p>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" ID="bthresetok" CssClass="btn btn-info" OnClick="bthresetok_Click" Width="100px"> OK</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="bthresetclose" CssClass="btn btn-info" Width="100px"> Close</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
