<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.Master" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="FingerPrintSystem.WebUI.User.Photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script>
        // 2. This code loads the IFrame Player API code asynchronously.
        var tag = document.createElement('script');

        tag.src = "https://www.youtube.com/iframe_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        // 3. This function creates an <iframe> (and YouTube player)
        //    after the API code downloads.
        var player;
        function onYouTubeIframeAPIReady() {
            player = new YT.Player('player', {
                height: '450',
                width: '80%',
                videoId: 'ZDG7LWiRmP4',
                events: {
                    'onReady': onPlayerReady,
                    'onStateChange': onPlayerStateChange
                }
            });
        }

        // 4. The API will call this function when the video player is ready.
        function onPlayerReady(event) {
            event.target.playVideo();
        }

        // 5. The API calls this function when the player's state changes.
        //    The function indicates that when playing a video (state=1),
        //    the player should play for six seconds and then stop.
        var done = false;
        function onPlayerStateChange(event) {
            if (event.data == YT.PlayerState.PLAYING && !done) {
                done = true;
            }
        }
        function stopVideo() {
            player.stopVideo();
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <section class="panel">
            <header class="panel-heading" style="background-color: #F5DEB3">
                <h4>ภาพถ่ายบริเวณรถรับส่งเด็กนักเรียน</h4>

            </header>
        </section>
    </div>
    <br />
    <div id="webcam">
        <noscript>
            <img src="/?action=snapshot" />
        </noscript>
    </div>
    <div class="row">
    </div>
    <div class="row">
        <%--<div id="player"></div>--%>
        <%-- <iframe id="ytplayer" width="80%" height="550" src="https://www.youtube.com/embed/n_toKZltHU8?autoplay=1&origin=http://example.com"></iframe>--%>
        <div class="col-sm-12">
            <asp:PlaceHolder ID="iframeDiv" runat="server" />
        </div>
    </div>
    <div class="form-group form-horizontal col-md-1">
    </div>
    <div class="form-group form-horizontal col-md-11">
        <div class="row">

            <%--  <div class="col-md-12">
                     <img   src="~/Images/Home.png"
                            id ="imgphoto1" 
                            alt ="vote up" 
                            runat="server" 
                            style="height: 500px; width: 650px"/>--%>
            <%--<asp:Image runat="server"  ID="Imagebusschool1" ControlStyle-Height="275" ControlStyle-Width="575" BorderStyle="Double" />--%>
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
