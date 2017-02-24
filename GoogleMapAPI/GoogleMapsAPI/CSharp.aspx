<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CSharp.aspx.cs" Inherits="GoogleMaps" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Google Maps Example</title>
     <script type="text/javascript" 
src="http://www.google.com/jsapi?key=xxxxxx"></script> 
    <script type="text/javascript">
      google.load("maps", "2");
      // Call this function when the page has been loaded
      function initialize() {
        var map = new google.maps.Map2(document.getElementById("map"));
        map.setCenter(new google.maps.LatLng("<%=lat%>", "<%=lon%>"), 5);
        var point = new GPoint("<%=lon%>", "<%=lat%>");
        var marker = new GMarker(point);
        map.addOverlay(marker);
        map.addControl(new GLargeMapControl());
      }
      google.setOnLoadCallback(initialize);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="map" style="width: 400px; height: 400px"></div>
    </div>
    </form>
</body>
</html>
