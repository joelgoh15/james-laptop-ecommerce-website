<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Portfolio2_3.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accout</title>
    <meta charset="utf-8" />
    <style type="text/css">
        div.classLeftDivBox {
        }

        div.classCentreDivBox {
            width: 80%;
            min-width: 1000px;
            height: 80px;
            float: left;
            margin-left: 100px;
            margin-right: 100px;
        }

        div.classRightDivBox {
        }

        div.classHeaderDiv {
            width:100%;
            height:70px;
            border: 1px solid black;
            border-radius:10px;
            display:block;     
        }

        label.classLabelAppName {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
            margin-left:10px;
        }

        label.classLabelAppName {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
            margin-left:10px;
        }

        i.classBrandName {
            position:relative;
            top:-5px;
        }

        div.classDivSideMenuComponentParent {
            width:auto;
            height:auto;
            float:right;
            margin-right:10px;
            margin-top:4px;
            padding-top:1px;
            padding-bottom:1px;
            padding-left:1px; 
            padding-right:1px;
        }

        div.classDivSideMenuComponentParent:hover {
            background-color:lightgray;
        }

        div.classDivSideMenuComponent {
            width: 24px; 
            height: 3px; 
            background-color: black;
            margin: 3px; 
        }

        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color:antiquewhite; 
            overflow-x: hidden;
            transition: 0.5s; 
            padding-top: 60px;
        }

        .sidenav a {
            padding: 8px 8px 8px 40px; 
            text-decoration: none;
            font-size: 16px;                
            color: #818181; 
            display: block;
            transition: 0.5s; 
            font-family:Calibri;
        }

        a.classALinkLogo {
            padding: 8px 8px 8px 40px; 
            text-decoration: none;
            font-size: 16px; 
            color: #818181; 
            display: block;
            transition: 0.5s; 
            font-family:Calibri;
            height:60px;
        }

        .sidenav a.classALinkLogo:hover {
            color:#818181;
        }

        a.classALinkHome:hover, a.classALinkProductFeatures:hover, 
        a.classALinkBuyNow:hover, a.classALinkAccount:hover,
        a.classALinkAdminPage:hover ,a.classALinkAbout:hover { 
            background-color: lightgray;
            color:navy;
            margin-left:5px;
        }

        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 10px;
            font-size: 36px;
            margin-left: 50px; 
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }

        label.classLabelAppName2 {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
        }

        i.classBrandName2 {
        position:relative;
        top:-5px;
        }

        div.classDivCheckoutPageMainContent {
            width:100%;
            height:auto;
            float:left;
            display:block;
            border: 1px solid black;
            margin-top:10px;
            border-radius:10px;
        }

        table.classTableCheckoutPageMainContent {
            width: 100%;
        }

        table.classTableCheckoutPageMainContent td {
        }

        .classTableTdPageHeading {
            font-family:Calibri;
            font-size:32px;
            text-align:left;
        }

        .classTableTdProductFeatureMainContent {
             width:40%;
             padding-top:0px;
            vertical-align:top; 
        }

        label.classLabelName {
            font-family:Calibri;
            font-size:16px;
            float:left;
        }

        label.classLabelName2 {
            font-family:Calibri;
            font-size:16px;
            float:right;
        }

        div.classDivProductFeaturesDescription {
            width:100%;
            height: 400px; 
        }

        table.classTableCheckoutForm {
            width: 100%;
        }

        label.classLabelPayment {
            font-family: Calibri;
            font-size:18px;
        }

        label.classLabelEmail {
            font-family:Calibri;
            font-size:16px;
            float:left;
        }

        label.classLabelEmail2 {
            font-family:Calibri;
            font-size:16px;
            float:right;
        }

        label.classLabelContactNo {
            font-family:Calibri;
            font-size:16px;
            float:left;
        }

        label.classLabelContactNo2 {
            font-family:Calibri;
            font-size:16px;
            float:right;
        }

        label.classLabelSubscription {
            font-family:Calibri;
            font-size:16px;
            float:left;
        }

        label.classLabelNotification {
            font-family:Calibri;
            font-size:16px;
            float:left;
        }

        #snackbarTickedSubscription {
          visibility: hidden;
          min-width: 250px;
          margin-left: -125px;
          background-color: #33cc33; 
          color: #000000;
          text-align: center;
          border-radius: 10px; 
          padding: 16px;
          position: fixed;
          z-index: 1;
          left: 50%;
          bottom: 30px;
          font-size: 16px;
          font-family:Calibri;
          border:2px solid black;
        }

        #snackbarTickedSubscription.show {
          visibility: visible;
          -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
          animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        #snackbarUntickedSubscription {
            visibility: hidden;
            min-width: 250px;
            margin-left: -125px;
            background-color: #ff9900;  
            color: #000000;
            text-align: center;
            border-radius: 10px; 
            padding: 16px;
            position: fixed;
            z-index: 1;
            left: 50%;
            bottom: 30px;
            font-size: 16px;
            font-family:Calibri;
            border:2px solid black;
        }

        #snackbarUntickedSubscription.show {
          visibility: visible;
          -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
          animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        @-webkit-keyframes fadein {
          from {bottom: 0; opacity: 0;} 
          to {bottom: 30px; opacity: 1;}
        }

        @keyframes fadein {
          from {bottom: 0; opacity: 0;}
          to {bottom: 30px; opacity: 1;}
        }

        @-webkit-keyframes fadeout {
          from {bottom: 30px; opacity: 1;} 
          to {bottom: 0; opacity: 0;}
        }

        @keyframes fadeout {
          from {bottom: 30px; opacity: 1;}
          to {bottom: 0; opacity: 0;}
        }

        #snackbarTickedNotification {
          visibility: hidden;
          min-width: 250px;
          margin-left: -125px;
          background-color: #3366ff; 
          color: #000000;
          text-align: center;
          border-radius: 10px; 
          padding: 16px;
          position: fixed;
          z-index: 1;
          left: 50%;
          bottom: 30px;
          font-size: 16px;
          font-family:Calibri;
          border:2px solid black;
        }

        #snackbarTickedNotification.show {
          visibility: visible;
          -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
          animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        #snackbarUntickedNotification {
            visibility: hidden;
            min-width: 250px;
            margin-left: -125px;
            background-color: #ffff1a;  
            color: #000000;
            text-align: center;
            border-radius: 10px; 
            padding: 16px;
            position: fixed;
            z-index: 1;
            left: 50%;
            bottom: 30px;
            font-size: 16px;
            font-family:Calibri;
            border:2px solid black;
        }

        #snackbarUntickedNotification.show {
          visibility: visible;
          -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
          animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        @-webkit-keyframes fadein {
          from {bottom: 0; opacity: 0;} 
          to {bottom: 30px; opacity: 1;}
        }

        @keyframes fadein {
          from {bottom: 0; opacity: 0;}
          to {bottom: 30px; opacity: 1;}
        }

        @-webkit-keyframes fadeout {
          from {bottom: 30px; opacity: 1;} 
          to {bottom: 0; opacity: 0;}
        }

        @keyframes fadeout {
          from {bottom: 30px; opacity: 1;}
          to {bottom: 0; opacity: 0;}
        }

        table.classTableSubscriptionAndNotification {
            width: 100%;
        }

         .classDivFooter {
             border-top: 1px solid black;
             bottom: 0;
             width: inherit;
             min-width: 1000px;
             height: 40px;
             font-family: Calibri;
             font-size: 11px;
         }

        .cssClassDropDownListSubscription {
            font-family:Calibri;
            font-size:16px;
            float:right;
            width:100px;
            height:30px;
            border-radius:10px;
        }

        .cssClassDropDownListNotification {
            font-family:Calibri;
            font-size:16px;
            float:right;
            width:100px;
            height:30px;
            border-radius:10px;
        }

        div.classDivLogoutOption {
            width:fit-content;
            height:fit-content;
        }

        .CssClassIdUserLoginStatus {
            font-family:Calibri;
            font-size:16px;
            color:black;
            padding-left:1px;
            padding-right:1px;
            padding-top:1px;
            padding-bottom:1px;
            margin:0px;
            width:fit-content;
            height:fit-content;
        }

        .CssClassIdUserLoginStatus:hover {
            text-decoration:underline;
        }
    </style>
    <script type="text/javascript">
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }

        function ShowSubscribeToSubscriptionModalBox() {
            var x = document.getElementById("snackbarTickedSubscription");
            x.className = "show";
            setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
        }           

        function ShowUnsubscribeToSubscriptionModalBox() {
            var x = document.getElementById("snackbarUntickedSubscription");
            x.className = "show";
            setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
        }

        function ShowSubscribeToNotificatonModalBox() {
            var x = document.getElementById("snackbarTickedNotification");
            x.className = "show";
            setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
        }

        function ShowUnsubscribeToNotificatonModalBox() {
            var x = document.getElementById("snackbarUntickedNotification");
            x.className = "show";
            setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
        }
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!--google icons-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />   
</head>
<body>
    <form id="idFormAccountPage" runat="server" style="display: inline; background-color: transparent;">
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a class="classALinkLogo" href="#">
                <label  class="classLabelAppName2">
                    <span class="material-icons">laptop</span>
                    <i class="classBrandName2">JamesLaptop</i>
                </label>
            </a>
            <a href="Home.aspx" class="classALinkHome">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">home</i>
                Home
            </a>
            <a href="ProductFeatures.aspx" class="classALinkProductFeatures">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">featured_play_list</i>
                Product Features
            </a>
            <a href="Checkout.aspx" class="classALinkBuyNow">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">credit_card</i>
                Buy Now
            </a>
            <a href="Account.aspx" class="classALinkAccount">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">account_circle</i>
                Account
            </a>
            <a href="About.aspx" class="classALinkAbout">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">contacts</i>
                About
            </a>
            <a href="AdminPage/AdminPage.aspx" class="classALinkAdminPage" id="idALinkAdminPage" runat="server">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">account_box</i>
                Admin Page
            </a>
            <div class="classDivLogoutOption">
                <asp:LoginStatus ID="idUserLoginStatus" runat="server" CssClass="CssClassIdUserLoginStatus"  LogoutText="[Logout]" LoginText="[Login]" LogoutAction="RedirectToLoginPage" />
            </div>
        </div>
        <div id="idLeftDivBox" class="classLeftDivBox">
        </div>
        <div id="idCentreDivBox" class="classCentreDivBox">
            <div id="idHeaderDiv" class="classHeaderDiv">
                <label id="idLabelAppName" class="classLabelAppName">
                    <span class="material-icons">laptop</span>
                    <i class="classBrandName">JamesLaptop</i>
                </label>
                <div class="classDivSideMenuComponentParent" onclick="openNav()">
                    <div class="classDivSideMenuComponent"></div>
                    <div class="classDivSideMenuComponent"></div>
                    <div class="classDivSideMenuComponent"></div>
                </div>
            </div>
            <div class="classDivCheckoutPageMainContent">
                <table class="classTableCheckoutPageMainContent">
                    <tr>
                        <td class="classTableTdPageHeading" colspan="2">
                            <strong>Account</strong>
                        </td>
                    </tr>
                    <tr class="classTableTdProductFeatureMainContent">
                        <td class="classTableTdProductFeatureMainContent">   
                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <img class="classImgHeroImage" alt="user_profile_picture" src="Image/user_profile_picture.svg" />
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="classLabelName"> 
                                            <strong>Name:</strong>
                                        </label>
                                        <label class="classLabelName2"> 
                                            John Michael
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="classLabelEmail">
                                            <strong>Email:</strong>
                                        </label>
                                        <label class="classLabelEmail2"> 
                                            jmichael@email.com
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="classLabelContactNo">
                                            <strong>Contact No.:</strong>
                                        </label>
                                        <label class="classLabelContactNo2">
                                            012-3456789
                                        </label>
                                    </td>
                                </tr>
                            </table>
                        </td>                
                    <td>                    
                            <div class="classDivProductFeaturesDescription">                                
                                <table class="classTableCheckoutForm">
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="classTableSubscriptionAndNotification">
                                                <tr>
                                                    <td>
                                                        <label class="classLabelSubscription">
                                                            <strong>Subscription:</strong>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="idDropDownListSubscription" CssClass="cssClassDropDownListSubscription" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="idDropDownListSubscription_SelectedIndexChanged" >
                                                            <asp:ListItem Selected="True" Text=""></asp:ListItem>
                                                            <asp:ListItem Text="True" Value="True" >True</asp:ListItem>
                                                            <asp:ListItem Text="False" Value="False">False</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <div id="snackbarTickedSubscription" class="classDivSnackbarTickedSubscription">
                                                            <strong>
                                                                <i class="material-icons" style="border:2px solid black; margin-right:5px; bottom:-5px; position:relative;">&#xe876;</i>  
                                                                You have subscribe to our monthly newsletter.
                                                            </strong>
                                                        </div>
                                                        <div id="snackbarUntickedSubscription" class="classDivSnackbarUntickedSubscription">
                                                            <strong>
                                                                <i class="material-icons" style="border:2px solid black; margin-right:5px; bottom:-5px; position:relative;">&#xe5cd;</i>
                                                                You have unsubscribe to our monthly newsletter.
                                                            </strong>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label class="classLabelNotification">
                                                            <strong>Notification:</strong>
                                                        </label>
                                                    </td>
                                                    <td>                                                        
                                                        <asp:DropDownList ID="idDropDownListNotification" CssClass="cssClassDropDownListNotification" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="idDropDownListNotification_SelectedIndexChanged"  >
                                                            <asp:ListItem Selected="True" Text=""></asp:ListItem>
                                                            <asp:ListItem Text="True" Value="True">True</asp:ListItem>
                                                            <asp:ListItem Text="False" Value="False">False</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <div id="snackbarTickedNotification" class="classDivSnackbarTickedNotification">
                                                            <strong>
                                                                <i class="material-icons" style="border:2px solid black; margin-right:5px; bottom:-5px; position:relative;">&#xe876;</i>  
                                                                You have subscribe to our weekly notification.
                                                            </strong>
                                                        </div>
                                                        <div id="snackbarUntickedNotification" class="classDivSnackbarUntickedNotification">
                                                            <strong>
                                                                <i class="material-icons" style="border:2px solid black; margin-right:5px; bottom:-5px; position:relative;">&#xe5cd;</i>
                                                                You have unsubscribe to our weekly notification.
                                                            </strong>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>                  
                    </td>
                </tr>
            </table>
        </div>
            <table style="width: 100%;">
                <tr>
                    <td>
                        <br/>
                    </td>
                </tr>
                <tr>
                    <td>
                            <div id="idDivFooter" class="classDivFooter">
                                <footer>
                                    <label>
                                        <i><strong>&copy; James Laptop eCommerce Website</strong></i>
                                    </label>
                                </footer>
                            </div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="idRightDivBox" class="classRightDivBox">
        </div>
    </form>
</body>
</html>
