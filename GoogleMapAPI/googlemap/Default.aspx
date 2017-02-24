<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="js/jquery-1.4.2.min.js"></script>
    <script src="js/jquery-ui-1.8.1.custom.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <label>Adres:</label>
        <asp:TextBox ID="address" Width="300" runat="server"></asp:TextBox><br /><br /><br />
     <label>Açıklama:</label>
        <asp:TextBox ID="aciklama" TextMode="MultiLine" Height="55px" Width="300" runat="server"></asp:TextBox>
        <br /><br />

        <div id="map_canvas" style="width:500px;height:350px;"></div>

        <label>x</label>
        <asp:TextBox ID="latitude" runat="server"></asp:TextBox>
        <label>y</label>
        <asp:TextBox ID="longitude" runat="server"></asp:TextBox>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" /><br />
        <asp:Label ID="Label1" Visible="false" ForeColor="Green" runat="server" Text=""></asp:Label>



    </form>
</body>
</html>
