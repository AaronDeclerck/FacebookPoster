<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="FacebookPoster.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<div id="fb-root"></div>
        <script type ="text/javascript">
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '269832789763712', // App ID
                    status: true, // check login status
                    cookie: true, // enable cookies to allow the server to access the session
                    xfbml: true  // parse XFBML
                });

                // Additional initialization code here

                FB.Event.subscribe('auth.authResponseChange', function (response) {
                    if (response.status === 'connected') {
                        // the user is logged in and has authenticated your
                        // app, and response.authResponse supplies
                        // the user's ID, a valid access token, a signed
                        // request, and the time the access token 
                        // and signed request each expire
                        var uid = response.authResponse.userID;
                        var accessToken = response.authResponse.accessToken;

                        // TODO: Handle the access token

                        var form = document.createElement("form");
                        form.setAttribute("method", 'post');
                        form.setAttribute("action", '/FacebookLogin.ashx');

                        var field = document.createElement("input");
                        field.setAttribute("type", "hidden");
                        field.setAttribute("name", 'accessToken');
                        field.setAttribute("value", accessToken);
                        form.appendChild(field);

                        document.body.appendChild(form);
                        form.submit();
                    } else if (response.status === 'not_authorized') {
                        // the user is logged in to Facebook, 
                        // but has not authenticated your app
                    } else {
                        // the user isn't logged in to Facebook.
                    }
                });
            };

            // Load the SDK Asynchronously
            (function (d) {
                var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
                if (d.getElementById(id)) { return; }
                js = d.createElement('script'); js.id = id; js.async = true;
                js.src = "//connect.facebook.net/en_US/all.js";
                ref.parentNode.insertBefore(js, ref);
            } (document));
        </script>


        <div class="fb-login-button" data-show-faces="true" data-width="400" data-max-rows="1"></div>

        <asp:Button ID="Button1" runat="server" Text="Button" 
        onclick="Button1_Click" />
</asp:Content>
