<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Register.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.RegisterUser" %>

<%@ MasterType VirtualPath="~/Master/Register.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery.validate.min.js"></script>

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
                    <%=txtid.UniqueID %>: {
                        required: true
                    },
                    <%=txtfullname.UniqueID %>: {
                        required: true
                    },
                    <%=txtschool.UniqueID %>: {
                        required: true
                    },
                    <%=txtfullnameparent.UniqueID %>: {
                        required: true
                    },
                    <%=txttel.UniqueID %>: {
                        required: true,
                        digits: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    <%=txtemail.UniqueID %>: {
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
                        minlength:"Please enter password at least 5 characters.",
                        equalTo: "Enter same password."
                    },
                    <%=txtid.UniqueID %>: {
                        required: "Please enter id"
                    },
                    <%=txtfullname.UniqueID %>: {
                        required: "Please enter fullname"
                    },
                    <%=txtschool.UniqueID %>: {
                        required: "Please enter school"
                    },
                    <%=txtfullnameparent.UniqueID %>: {
                        required: "Please enter nameparen"
                    },
                    <%=txttel.UniqueID %>: {
                        required: "Please enter mobile no",
                        digits: "Only digits accepted",
                        minlength: "A minimum of {0} digits are required.",
                        maxlength: "A maximum of {0} digits are required."
                    },
                    <%=txtemail.UniqueID %>: {
                        required: "Please enter email address"
                    }
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("#FileUpload1").change(function () {
                if (typeof (FileReader) != "undefined") {
                    var dvPreview = $("#dvPreview");
                    dvPreview.html("");
                    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
                    $($(this)[0].files).each(function () {
                        var file = $(this);
                        if (regex.test(file[0].name.toLowerCase())) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                var img = $("<img />");
                                img.attr("style", "height:200px;width: 200px");
                                img.attr("src", e.target.result);
                                dvPreview.append(img);
                            }
                            reader.readAsDataURL(file[0]);
                        } else {
                            alert(file[0].name + " is not a valid image file.");
                            dvPreview.html("");
                            return false;
                        }
                    });
                } else {
                    alert("This browser does not support HTML5 FileReader.");
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


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ขั้นตอนที่ 1 >>> กรอกข้อมูล </h4>
            </header>
        </section>
    </div>

    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <h4>Student's Photo </h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <asp:Image runat="server" ID="Imgstudent" ControlStyle-Height="180" ControlStyle-Width="200" BorderStyle="Double" />
                </div>
            </div>

            <div class="row">
                <%-- <div class=" col-md-6">
                    <input id="FileUpload1" type="file"   />
                    <div id="dvPreview"></div>
                </div>--%>
                <div class=" col-md-6">
                    <asp:FileUpload ID="FileUpload" runat="server" BackColor="#CCFFCC" Width="200" OnLoad="FileUpload_Load" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">

                    <asp:Label runat="server" ID="laberroe" ForeColor="White" Width="200" Height="25" Font-Bold="true"></asp:Label>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:LinkButton runat="server" ID="bthshow" class="btn btn-danger" Width="200" Height="40" OnClick="bthshow_Click">Upload</asp:LinkButton>
                </div>
            </div>
        </div>

        <div class="form-group form-horizontal col-md-7">
            <div class="row">
                <div class="col-md-12">
                    <h4>สมัครเข้าสู่ระบบ</h4>
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtusername" MaxLength="30" CssClass="form-control input-sm" placeholder="ผู้ใช้งาน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
                <div class="col-md-6">
                 <asp:Label runat="server" ID="labusername" Font-Bold="true" ForeColor="Red" Font-Size="Medium" ></asp:Label>
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
            <hr />
            <h4>ข้อมูลส่วนตัว</h4>
            <hr />
            <div class="row">
                <div class=" col-md-6">
                    <asp:TextBox runat="server" ID="txtid" CssClass="form-control input-sm" placeholder="เลขที่" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtfullname" CssClass="form-control input-sm" placeholder="ชื่อ-นามสกุล" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtschool" CssClass="form-control input-sm" placeholder="กำลังศึกษา" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtfullnameparent" CssClass="form-control input-sm" placeholder="ชื่อผู้ปกครอง" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txttel" CssClass="form-control input-sm" placeholder="เบอร์โทรศัพท์ติดต่อฉุกเฉิน" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox runat="server" ID="txtemail" CssClass="form-control input-sm" placeholder="E-mail" Width="250" Height="40" Font-Size="Larger"></asp:TextBox>
                </div>
            </div>
            <%-- <div class="row">
                <div class="form-group form-horizontal col-md-4">
                    <div class="col-lg-4">
                        <asp:TextBox runat="server" ID="TxtAddress" CssClass="form-control input-sm" placeholder="คลิ๊กเพิ่มที่อยู่ที่ปุ่ม'เพิ่มที่อยู่'" Enabled="false" MaxLength="300" TextMode="MultiLine" Width="300" Height="90" Font-Size="Small"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group form-horizontal col-md-4">
                    <div class="col-lg-4">
                        <asp:LinkButton runat="server" ID="bthaddress" class="btn btn-default" Width="300" Height="40" OnClick="bthaddress_Click">เพิ่มที่อยู่</asp:LinkButton>
                    </div>
                </div>

            </div>--%>

            <br />
            <br />


            <asp:Button ID="bthsave" runat="server" Text="Next" Class="btn btn-warning" Width="250" Height="40" OnClick="bthsave_Click" />


        </div>
    </div>
</asp:Content>
