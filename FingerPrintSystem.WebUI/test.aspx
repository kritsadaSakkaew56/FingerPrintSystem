<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="FingerPrintSystem.WebUI.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-1.6.4.min.js"></script>
    <script src="js/jquery.signalR-2.2.1.min.js"></script>
    <script src="/signalR/hubs"></script>

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
            var $gvDetails = $('#gvDetails');
            $.ajax({
                url: 'test.aspx/GetData',
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (result) {
                    debugger;

                    $gvDetails.empty();

                    if (result.d.length > 0) {
                        var newdata = result.d;
                        $gvDetails.append(' <tr><th>ProductID</th><th>Name</th><th>UnitPrice</th><th>Quantity</th></tr>');

                        for (var i = 0; i < newdata.length; i++) {
                            $gvDetails.append(' <tr><td>' +
                            newdata[i].ProductID + '</td><td>' +
                            newdata[i].Name + '</td><td>' +
                            newdata[i].UnitPrice + '</td><td>' +
                            newdata[i].Quantity + '</td></tr>');
                        }
                    }
                },
                error: function (result) {
                    alert("Error");
                }
            });
        }

    </script>
</head>
<body>

    <form id="form1" runat="server">

        <asp:GridView ID="gvDetails" runat="server"
            HeaderStyle-BackColor="#3AC0F2"
            CssClass="table table-bordered table-striped table-hover">
        </asp:GridView>

    </form>
</body>
</html>

