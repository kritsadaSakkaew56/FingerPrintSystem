<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <script type="text/javascript">

        /* Copyright (C) 2007 Richard Atterer, richard©atterer.net
           This program is free software; you can redistribute it and/or modify it
           under the terms of the GNU General Public License, version 2. See the file
           COPYING for details. */

        var imageNr = 0; // Serial number of current image
        var finished = new Array(); // References to img objects which have finished downloading
        var paused = false;

        function createImageLayer() {
            var img = new Image();
            img.style.position = "absolute";
            img.style.zIndex = -1;
            img.onload = imageOnload;
            img.onclick = imageOnclick;
            img.src = "/?action=snapshot&n=" + (++imageNr);
            var webcam = document.getElementById("webcam");
            webcam.insertBefore(img, webcam.firstChild);
        }

        // Two layers are always present (except at the very beginning), to avoid flicker
        function imageOnload() {
            this.style.zIndex = imageNr; // Image finished, bring to front!
            while (1 < finished.length) {
                var del = finished.shift(); // Delete old image(s) from document
                del.parentNode.removeChild(del);
            }
            finished.push(this);
            if (!paused) createImageLayer();
        }

        function imageOnclick() { // Clicking on the image will pause the stream
            paused = !paused;
            if (!paused) createImageLayer();
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ภาพถ่ายบริเวณรถรับส่งเด็กนักเรียน</h4>

            </header>
        </section>
    </div>
    <br />
    <div id="webcam"><noscript><img src="/?action=snapshot" /></noscript></div>
    <div class="row">


       
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-1">
        </div>
        <div class="form-group form-horizontal col-md-11">
            <div class="row">
                <div class="col-md-12">
                     <img   src="~/Images/Home.png"
                            id ="imgphoto1" 
                            alt ="vote up" 
                            runat="server" 
                            style="height: 500px; width: 650px"/>
                    <%--<asp:Image runat="server"  ID="Imagebusschool1" ControlStyle-Height="275" ControlStyle-Width="575" BorderStyle="Double" />--%>
                </div>
            </div>
        </div>
    </div>
   <%-- <div class="row">
        <div class="form-group form-horizontal col-md-2">
        </div>
        <div class="form-group form-horizontal col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image runat="server" ID="Imagebusschool2" ControlStyle-Height="275" ControlStyle-Width="575" BorderStyle="Double"  />
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
