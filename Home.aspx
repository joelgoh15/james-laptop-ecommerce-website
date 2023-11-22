<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Portfolio2_3.Home_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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

        i.classBrandName {
            position:relative;
            top:-5px;
        }

        div.classDivSideMenuComponent {
            width: 24px; 
            height: 3px; 
            background-color: black;
            margin: 3px; 
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

        div.classDivMainContent {
            width:100%;
            height:auto;
            float:left;
            display:block;
            margin-top:10px;
            border-radius:10px;
        }

        table.classTableMainContent {
            width: 100%;
        }

        img.classImgHeroImage {
            width:70%;
            height:300px;
            border: 1px solid black;
            border-radius:10px;
        }

        td.classTdHeroImage {
            text-align:center;
        }

        label.classLabelImageHeading {
            font-family:Calibri;
            font-size:32px; 
        }

        label.classLabelImageSubHeading {
            font-family:Calibri;
            font-size:24px; 
        }

        td.classTdHeroImageDetails {
            text-align:left;
        }

        .classButtonBuyNow {
            background-color: #4CAF50;
            border: 1px solid black;
            border-radius:10px;
            color: white;
            padding: 7px 24px; 
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-right:2px;
            cursor: pointer;
        }

        .classButtonBuyNow:hover {
            opacity:0.9;
        }

        .classButtonLearnMore {
            border: 2px solid #4CAF50;
            border-radius:10px;
            color: #4CAF50;
            padding: 7px 24px; 
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-right:2px;
            cursor: pointer;
        }

            .classButtonLearnMore:hover {
                opacity:0.8;
            }

        .classDivFooter {
            border-top: 1px solid black;
            position: fixed;
            bottom: 0;
            width: inherit;
            min-width: 1000px;
            height: 40px;
            font-family: Calibri;
            font-size: 11px;
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
    </script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
</head>
<body>
    <form id="idFormHomePage" runat="server" style="display: inline; background-color: transparent;">
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
            <div class="classDivMainContent">
                <table class="classTableMainContent" >
                    <tr>
                        <td class="classTdHeroImage">
                            <img class="classImgHeroImage" alt="James_Laptop" src="Image/james_laptop_hero_image.svg" />
                        </td> 
                        <td class="classTdHeroImageDetails">
                            <label class="classLabelImageHeading">
                                <strong><i>JamesLaptop</i></strong>
                            </label>
                            <br/>
                            <label class="classLabelImageSubHeading">
                                <strong><i>Laptop Of The Future</i></strong>
                            </label>
                            <br/> <br/>
                            <input id="idButtonBuyNow" class="classButtonBuyNow" type="button" value="Buy Now"  />
                            <input id="idButtonLearnMore" class="classButtonLearnMore" type="button" value="Learn More" />
                            <script type="text/javascript">
                                document.getElementById("idButtonBuyNow").onclick = function () {
                                    location.href = "Checkout.aspx";
                                };
                            </script>
                            <script type="text/javascript">
                                document.getElementById("idButtonLearnMore").onclick = function () {
                                    location.href = "ProductFeatures.aspx";
                                };
                            </script>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="idDivFooter" class="classDivFooter">
                <footer>
                    <label>
                        <i><strong>&copy; James Laptop eCommerce Website</strong></i>
                    </label>
                </footer>
            </div>
        </div>
        <div id="idRightDivBox" class="classRightDivBox">
        </div>
    </form>
</body>
</html>
