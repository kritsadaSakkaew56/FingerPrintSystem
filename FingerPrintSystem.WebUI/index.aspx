<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Driver.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FingerPrintSystem.WebUI.index" %>


<%@ MasterType VirtualPath="~/Master/Driver.Master" %>
<%@ Register Src="~/UserControls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <script src="../js/jquery-1.6.4.min.js"></script>
    <script src="../js/jquery.signalR-2.2.1.min.js"></script>
    <script src="../signalR/hubs"></script>
    <script type="text/javascript">

        $(function () {

            // Proxy created on the fly
            var job = $.connection.myHub;

            // Declare a function on the job hub so the server can invoke it
            job.client.displayStatus = function () {
                getData();
            };

            // Start the connection
            $.connection.hub.start();
            getData();
        });

        function getData() {
            var $tbl = $('#tbl');
            $.ajax({
                url: 'index.aspx/GetData',
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    debugger;
                    if (data.d.length > 0) {
                        var newdata = data.d;
                        $tbl.empty();
                        $tbl.append(' <tr><th>ID</th><th>Name</th><th>Last Executed Date</th><th>Status</th></tr>');
                        var rows = [];

                        for (var i = 0; i < newdata.length; i++) {
                            rows.push(' <tr><td>' + newdata[i].ProductID + '</td><td>' + newdata[i].Name + '</td><td>' + newdata[i].UnitPrice + '</td><td>' + newdata[i].Quantity + '</td></tr>');
                        }
                        $tbl.append(rows.join(''));
                    }
                },
                error: function () {
                    alert("Error");
                }
            });
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <div class="row">
            <table id="tbl"></table>
        </div>
        <div class="row">
            <asp:GridView ID="gvDetails" runat="server"
                HeaderStyle-BackColor="#3AC0F2"
                EmptyDataText="------ ไม่พบข้อมูล ------"
                EmptyDataRowStyle-HorizontalAlign="Center"
                CssClass="table table-bordered table-striped table-hover">
            </asp:GridView>
        </div>
  
</asp:Content>
