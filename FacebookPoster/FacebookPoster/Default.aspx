<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="FacebookPoster._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div id="fb-root"></div>
    <div id='Div1'></div>
    <script src='http://connect.facebook.net/en_US/all.js'></script>
    <p><a onclick='addToPage(); return false;'>Add to Page</a></p>
    <p id='msg'></p>

    <script> 
      FB.init({appId: "", status: true, cookie: true});

      function addToPage() {

        // calling the API ...
        var obj = {
          method: 'pagetab',
          redirect_uri: 'https://www.facebook.com/pages/Jecklestation/135387519922418',
        };

        FB.ui(obj);
      }
    
    </script>
</asp:Content>
